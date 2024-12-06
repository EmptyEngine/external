cmake_minimum_required(VERSION 3.28 FATAL_ERROR)

# prevent the silly
if(NOT (${CMAKE_PROJECT_NAME} STREQUAL EmptyEngine))
    message(
        FATAL_ERROR
        "This repository is designed to be added by the top-level EmptyEngine project via add_subdirectory(). \
        All other ways of configuring are unsupported and will likely lead to errors."
    )
endif()


# Note: Dependencies were split into separate CMake files for better organization.
#       Because include() is used to process the files, the source directory remains this "main" directory.
#       Keep that in mind when adding or modifying dependencies in the future.
#       (Relative paths will be something like "<dependency_name>/src/<source_file>".)

project(EmptyEngine_external VERSION ${EMPTYENGINE_VERSION})


# -= UNIVERSAL DEPENDENCIES =-

# RUST
include("cmake/corrosion.cmake") # always first
include("cmake/icu4x.cmake")

# CXX
include("cmake/half.cmake")
include("cmake/harfbuzz.cmake")
include("cmake/lz4.cmake")
include("cmake/miniaudio.cmake")
include("cmake/simdutf.cmake")
include("cmake/unordered_dense.cmake")
include("cmake/VulkanMemoryAllocator.cmake")


# -= INTERNAL DEPENDENCIES =-

if(NOT (${EMPTYENGINE_GAMEPROD}))
    # CXX
    include("cmake/argparse.cmake")
    include("cmake/freetype.cmake")
endif()
