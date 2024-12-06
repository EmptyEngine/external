project(argparse LANGUAGES CXX)
message(STATUS "Configuring Empty Engine dependency: argparse")

add_library(argparse INTERFACE)
target_include_directories(argparse INTERFACE "argparse/include/argparse")
