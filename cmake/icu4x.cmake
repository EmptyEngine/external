message(STATUS "Configuring Empty Engine dependency: icu4x")

# crate/target name
set(ICU4X_TARGET_NAME icu_capi CACHE INTERNAL "")

corrosion_import_crate(
    MANIFEST_PATH "icu4x/ffi/capi/Cargo.toml"
    PROFILE ${EMPTYENGINE_CARGO_PROFILE}
    CRATE_TYPES cdylib
    OVERRIDE_CRATE_TYPE icu_capi=cdylib
    CRATES ${ICU4X_TARGET_NAME}
    NO_DEFAULT_FEATURES 
    FEATURES
        icu_capi/std                # use standard library
        icu_capi/compiled_data      # pre-compiled data for modules
        icu_capi/icu_segmenter      # text segmenting
)

# generator expression which expands to 1 if LTO should be used, 0 otherwise
set(lto_condition $<AND:$<NOT:$<CONFIG:Debug>>,$<BOOL:${EMPTYENGINE_USE_IPO}>>)

corrosion_add_target_rustflags(
    ${ICU4X_TARGET_NAME}
    "-A" "warnings"                                                 # suppress warnings
    "--codegen" "lto=$<IF:${lto_condition},true,false>"             # enable LTO
    "--codegen" "embed-bitcode=$<IF:${lto_condition},true,false>"   # required by LTO (if enabled)
)

target_include_directories(${ICU4X_TARGET_NAME} INTERFACE "icu4x/ffi/capi/bindings/cpp")
