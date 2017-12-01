INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_TOOLKIT toolkit)

FIND_PATH(
    TOOLKIT_INCLUDE_DIRS
    NAMES toolkit/api.h
    HINTS $ENV{TOOLKIT_DIR}/include
        ${PC_TOOLKIT_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    TOOLKIT_LIBRARIES
    NAMES gnuradio-toolkit
    HINTS $ENV{TOOLKIT_DIR}/lib
        ${PC_TOOLKIT_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(TOOLKIT DEFAULT_MSG TOOLKIT_LIBRARIES TOOLKIT_INCLUDE_DIRS)
MARK_AS_ADVANCED(TOOLKIT_LIBRARIES TOOLKIT_INCLUDE_DIRS)

