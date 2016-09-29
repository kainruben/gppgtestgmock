cmake_minimum_required(VERSION 2.6)
project(ChatTest)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

set(CMAKE_CXX_FLAGS "-std=c++11")

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
include_directories(/usr/include/gmock)

add_executable(ChatTest
   Chat.h
   Chat.cpp
   ChatTest.cpp
   User.h
   MockUser.h)

target_link_libraries(ChatTest ${GTEST_LIBRARIES} pthread gmock_main gmock)