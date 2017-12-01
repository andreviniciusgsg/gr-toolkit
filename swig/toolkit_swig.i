/* -*- c++ -*- */

#define TOOLKIT_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "toolkit_swig_doc.i"

%{
#include "toolkit/cs.h"
%}


%include "toolkit/cs.h"
GR_SWIG_BLOCK_MAGIC2(toolkit, cs);
