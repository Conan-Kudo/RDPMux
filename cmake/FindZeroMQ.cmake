include(FindPkgConfig)
PKG_CHECK_MODULES(PC_ZEROMQ "libzmq")

find_path(
        ZEROMQ_INCLUDE_DIRS
        NAMES zmq.h
        HINTS ${PC_ZEROMQ_INCLUDE_DIRS}
)

find_library(
        ZEROMQ_LIBRARIES
        NAMES zmq
        HINTS ${PC_ZEROMQ_LIBRARY_DIRS}
)

find_library(
        ZEROMQ_STATIC_LIBRARIES
        NAMES libzmq.a
        HINTS ${PC_ZEROMQ_LIBRARY_DIRS}
)

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ZEROMQ DEFAULT_MSG ZEROMQ_LIBRARIES ZEROMQ_INCLUDE_DIRS)
mark_as_advanced(ZEROMQ_LIBRARIES ZEROMQ_STATIC_LIBRARIES ZEROMQ_INCLUDE_DIRS)
