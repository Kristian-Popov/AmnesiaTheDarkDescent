find_path(THEORA_INCLUDE_DIR
    NAMES theora/theora.h
    PATH_SUFFIXES include
)
if(THEORA_INCLUDE_DIR)
    set(HAVE_THEORA_HEADERS TRUE)
endif()

find_library(THEORA_LIBRARIES
    NAMES theora
    PATH_SUFFIXES bin lib
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Theora
    DEFAULT_MSG
    THEORA_INCLUDE_DIR THEORA_LIBRARIES HAVE_THEORA_HEADERS
)

mark_as_advanced(THEORA_INCLUDE_DIR THEORA_LIBRARIES HAVE_THEORA_HEADERS)
