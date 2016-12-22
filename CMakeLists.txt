cmake_minimum_required(VERSION 3.0)
project(dr_quine)

#add_subdirectory(unit_test)

set(SRCS
        Colleen.c
        Grace.c
    )

add_executable(dr_quine ${SRCS})