/* -*- c++ -*- */
/* 
 * Copyright 2017 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.	If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "cs_impl.h"
#include <pmt/pmt.h>
#include <boost/lexical_cast.hpp>
#include <boost/thread.hpp>
#include <chrono>
#include <string>

#define ALPHA 0.1
#define BOTTOM -200

namespace gr {
	namespace toolkit {

		typedef std::chrono::high_resolution_clock clock;

		cs::sptr
		cs::make() {
			return gnuradio::get_initial_sptr
				(new cs_impl());
		}

		/*
		 * The private constructor
		 */
		cs_impl::cs_impl()
			: gr::block("cs",
							gr::io_signature::make(1, 1, sizeof(float)),
							gr::io_signature::make(0, 0, 0)) {

			pr_avg_data = false;
			pr_avg = BOTTOM;

			message_port_register_in(msg_port_in);
			set_msg_handler(msg_port_in, boost::bind(&cs_impl::msg_in, this, _1));

			message_port_register_out(msg_port_out);
		}

		/*
		 * Our virtual destructor.
		 */
		cs_impl::~cs_impl() {}

		void
		cs_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required) {}

		void
		cs_impl::msg_in(pmt::pmt_t msg) {
			if(!pr_avg_data) {
				pr_avg_data = true;
				std::string str = pmt::symbol_to_string(msg);
				pr_time = std::stof(str);
				thread = boost::shared_ptr<gr::thread::thread> (new gr::thread::thread(boost::bind(&cs_impl::count_down, this)));
			}
		}

		void 
		cs_impl::count_down () {
			auto start_time = clock::now();
			auto end_time = clock::now();
			float duration = (float) std::chrono::duration_cast<std::chrono::microseconds>(end_time - start_time).count();

			while(duration < pr_time) {
				end_time = clock::now();
				duration = (float) std::chrono::duration_cast<std::chrono::microseconds>(end_time - start_time).count();
			}

			pr_avg_data = false;

			message_port_pub(msg_port_out, pmt::from_float(pr_avg));

			pr_avg = BOTTOM;
		}

		int
		cs_impl::general_work (int noutput_items,
											 gr_vector_int &ninput_items,
											 gr_vector_const_void_star &input_items,
											 gr_vector_void_star &output_items) {
			const float *in = (const float *) input_items[0];
			int ninputs = ninput_items.size();

			uint i = 0;

			if(pr_avg == BOTTOM) {
				pr_avg = in[0];
				i++;
			}
			while(i < ninputs and pr_avg_data) {
				pr_avg = ALPHA*pr_avg + (1 - ALPHA)*pr_avg;
				i++;
			}

			// Do <+signal processing+>
			// Tell runtime system how many input items we consumed on
			// each input stream.
			consume_each (ninputs);

			// Tell runtime system how many output items we produced.
			return 0;
		}

	} /* namespace toolkit */
} /* namespace gr */

