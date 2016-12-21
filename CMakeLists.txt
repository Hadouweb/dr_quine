cmake_minimum_required(VERSION 3.6)
project(dr_quine)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    auteur
    Makefile)

add_executable(dr_quine ${SOURCE_FILES})