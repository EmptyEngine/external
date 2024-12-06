project(half)
message(STATUS "Configuring Empty Engine dependency: half")

configure_file(
    "half/include/half.hpp"
    "${EMPTYENGINE_HEADER_BUILD_DIR}/empty/external/half.hpp"
    NO_SOURCE_PERMISSIONS
    COPYONLY
)
