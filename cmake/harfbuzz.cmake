project(harfbuzz LANGUAGES C)
message(STATUS "Configuring Empty Engine dependency: harfbuzz")

add_library(harfbuzz SHARED "")
target_sources(harfbuzz PRIVATE "harfbuzz/src/harfbuzz.cc")
target_include_directories(harfbuzz PUBLIC "harfbuzz/src")

set_target_properties(
    harfbuzz PROPERTIES
    C_STANDARD 17
    C_STANDARD_REQUIRED TRUE
)

EE_TargetConsiderIPO(harfbuzz)

if(${WIN32})
    target_compile_definitions(harfbuzz PRIVATE _CRT_SECURE_NO_WARNINGS _CRT_NONSTDC_NO_WARNINGS HB_DLL_EXPORT)
endif()

if(${LINUX})
    target_link_libraries(harfbuzz PRIVATE Threads::Threads)
endif()

if(${MSVC})
    # aggregate source file produces large object file
    target_compile_options(harfbuzz PRIVATE /bigobj)
endif()

# disable specific warnings
if(${MSVC})
    target_compile_options(
        harfbuzz PRIVATE
        /wd4100 /wd4189                 # unused parameters, values, assignments, etc
        /wd4127                         # implicit truncating conversions
        /wd4245                         # implicit signed/unsigned conversions
        /wd4267 /wd4244 /wd4310         # narrowing conversions
        /wd4456 /wd4457 /wd4458 /wd4459 # names which hide other symbols
        /wd4701                         # uninitialized variables
        /wd4702                         # unreachable code
        /wd4706                         # assignments within conditional expressions
        /wd5105                         # macro expansion results in "defined" expression
    )
else()
    target_compile_options(
        harfbuzz PRIVATE
        -Wno-narrowing              # narrowing conversions
        -Wno-parentheses            # assignments within conditional expressions
        -Wno-unused                 # unused parameters, values, assignments, etc
        -Wno-maybe-uninitialized    # uninitialized variables
        -Wno-type-limits            # implicit truncating conversions
        -Wno-conversion             # implicit signed/unsigned conversions
    )
endif()
