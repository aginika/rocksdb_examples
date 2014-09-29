cmake_minimum_required(VERSION 2.8)
project(rocksdb_cmake_text)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules/")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/bin")

find_package(PkgConfig)
pkg_check_modules(GFlags libgflags)
find_package(BZip2)
find_package(ZLIB)
find_package(Threads)

message("${CMAKE_MODULE_PATH}")

find_package(RocksDB REQUIRED)
find_package(Snappy REQUIRED)

include_directories(${ROCKSDB_INCLUDE_DIR} ${BZ2_INCLUDE_DIR} ${GFlags_INCLUDE_DIR} ${THREADS_INCLUDE_DIR} ${ZLIB_INCLUDE_DIR} ${SNAPPY_INCLUDE_DIR})

add_executable(my_rocksdb src/my_rocksdb)
target_link_libraries(my_rocksdb ${ROCKSDB_LIBRARY} ${BZIP2_LIBRARIES} ${GFlags_INCLUDE_DIR} ${CMAKE_THREAD_LIBS_INIT} ${ZLIB_LIBRARY} ${SNAPPY_LIBRARY} rt)