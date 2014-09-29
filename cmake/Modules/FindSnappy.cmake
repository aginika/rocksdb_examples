##
#FindSnappy
##

IF(WIN32)
ELSE(WIN32)
  IF(APPLE)
    FIND_PATH(SNAPPY_INCLUDE_DIR NAMES snappy.h)

    FIND_LIBRARY(SNAPPY_LIBRARY 
      NAMES libsnappy.a
      PATHS /usr/local/lib
      )

    SET(SNAPPY_LIBRARIES ${SNAPPY_LIBRARY})
    SET(SNAPPY_INCLUDE_DIRS ${SNAPPY_INCLUDE_DIR})

    INCLUDE(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(Snappy SNAPPY_INCLUDE_DIR SNAPPY_LIBRARY)
  ELSE(APPLE)
    ##Linux
    FIND_PATH(SNAPPY_INCLUDE_DIR NAMES snappy.h)

    FIND_LIBRARY(SNAPPY_LIBRARY 
      NAMES libsnappy.so
      PATHS /usr/lib
      )

    SET(SNAPPY_LIBRARIES ${SNAPPY_LIBRARY})
    SET(SNAPPY_INCLUDE_DIRS ${SNAPPY_INCLUDE_DIR})

    INCLUDE(FindPackageHandleStandardArgs)
    find_package_handle_standard_args(Snappy SNAPPY_INCLUDE_DIR SNAPPY_LIBRARY)
  ENDIF(APPLE)
ENDIF(WIN32)
