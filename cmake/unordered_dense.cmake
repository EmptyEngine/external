project(unordered_dense)
message(STATUS "Configuring Empty Engine dependency: unordered_dense")

configure_file(
    "unordered_dense/include/ankerl/unordered_dense.h"
    "${EMPTYENGINE_HEADER_BUILD_DIR}/empty/external/unordered_dense.hpp"
    NO_SOURCE_PERMISSIONS
    COPYONLY
)
