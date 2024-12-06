project(simdutf LANGUAGES CXX)
message(STATUS "Configuring Empty Engine dependency: simdutf")

add_library(simdutf SHARED "simdutf/src/simdutf.cpp")

set_target_properties(
    simdutf PROPERTIES
    WINDOWS_EXPORT_ALL_SYMBOLS YES
)

target_include_directories(
    simdutf
    PUBLIC "simdutf/include"
    PRIVATE "simdutf/src"
)

if(${MSVC})
    target_compile_options(
        simdutf PRIVATE
        /WX /sdl /w34714
        /wd4127             # constant conditional expressions
        /wd4310             # cast truncates constant value
        /wd4505             # removed function with internal linkage
    )
else()
    target_compile_options(
        simdutf
        PRIVATE
        -Wall -Wextra -Weffc++ -Wfatal-errors
        -Wsign-compare -Wshadow -Wwrite-strings -Wpointer-arith -Winit-self -Wconversion -Wno-sign-conversion -Wunused-function
    )
endif()

# view L25 simdutf/src/CMakeLists.txt
if ((${CMAKE_CXX_COMPILER_ID} STREQUAL "GNU") AND (${CMAKE_SYSTEM_PROCESSOR} MATCHES "^(i.86|x86(_64)?)$"))
    target_compile_options(simdutf PRIVATE -mno-avx256-split-unaligned-load -mno-avx256-split-unaligned-store)
endif()
