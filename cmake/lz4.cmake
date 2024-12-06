project(lz4 LANGUAGES C)
message(STATUS "Configuring Empty Engine dependency: lz4")

add_library(lz4 SHARED "")
target_include_directories(lz4 PUBLIC "lz4/lib")
target_sources(
    lz4 PRIVATE
    "lz4/lib/lz4.c"     # main API
    "lz4/lib/lz4hc.c"   # dense compression API
)

set_target_properties(
    lz4 PROPERTIES
    C_STANDARD 17
    C_STANDARD_REQUIRED TRUE
)

EE_TargetConsiderIPO(lz4)

if(${WIN32})
    # export symbols
    target_compile_definitions(lz4 PUBLIC LZ4_DLL_EXPORT)
endif()

# use 2^15 (32KB) cache size
target_compile_definitions(lz4 PUBLIC LZ4_MEMORY_USAGE=15)
