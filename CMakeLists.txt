cmake_minimum_required(VERSION 2.6)
project(rocksdb_cmake_text)

#Find RocksDB
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules/" ${CMAKE_MODULE_PATH})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/bin")

find_package(RocksDB REQUIRED)

include_directories(${ROCKSDB_INCLUDE_DIR})

add_executable(my_rocksdb src/my_rocksdb)
target_link_libraries(my_rocksdb ${ROCKSDB_LIBRARY})