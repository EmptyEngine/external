# NOTE: corrosion is required to process all other Rust dependencies and has to be configured first
message(STATUS "Configuring Empty Engine dependency: corrosion")
add_subdirectory("corrosion")

if(${CMAKE_BUILD_TYPE} STREQUAL Debug)
    set(EMPTYENGINE_CARGO_PROFILE dev CACHE INTERNAL "")
else()
    set(EMPTYENGINE_CARGO_PROFILE release CACHE INTERNAL "")
endif()
