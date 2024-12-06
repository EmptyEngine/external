project(miniaudio LANGUAGES C)
message(STATUS "Configuring Empty Engine dependency: miniaudio")

add_library(miniaudio SHARED "")
target_include_directories(miniaudio PUBLIC "miniaudio/extras/miniaudio_split")
target_sources(miniaudio PRIVATE "miniaudio/extras/miniaudio_split/miniaudio.c")

set_target_properties(
    miniaudio PROPERTIES
    C_STANDARD 17
    C_STANDARD_REQUIRED TRUE
    WINDOWS_EXPORT_ALL_SYMBOLS TRUE
)

EE_TargetConsiderIPO(miniaudio)

if(${UNIX})
    target_link_libraries(miniaudio PRIVATE Threads::Threads ${CMAKE_DL_LIBS} $<$<BOOL:${LINUX}>:m>)
endif()
