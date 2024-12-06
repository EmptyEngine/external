project(freetype LANGUAGES C)
message(STATUS "Configuring Empty Engine dependency: freetype")

set(ft_header_dir "freetype/include/freetype") 

set(
    freetype_headers

    "freetype/include/ft2build.h"
    "${ft_header_dir}/freetype.h"
    "${ft_header_dir}/ftadvanc.h"
    "${ft_header_dir}/ftbbox.h"
    "${ft_header_dir}/ftbdf.h"
    "${ft_header_dir}/ftbitmap.h"
    "${ft_header_dir}/ftbzip2.h"
    "${ft_header_dir}/ftcache.h"
    "${ft_header_dir}/ftchapters.h"
    "${ft_header_dir}/ftcid.h"
    "${ft_header_dir}/ftcolor.h"
    "${ft_header_dir}/ftdriver.h"
    "${ft_header_dir}/fterrdef.h"
    "${ft_header_dir}/fterrors.h"
    "${ft_header_dir}/ftfntfmt.h"
    "${ft_header_dir}/ftgasp.h"
    "${ft_header_dir}/ftglyph.h"
    "${ft_header_dir}/ftgxval.h"
    "${ft_header_dir}/ftgzip.h"
    "${ft_header_dir}/ftimage.h"
    "${ft_header_dir}/ftincrem.h"
    "${ft_header_dir}/ftlcdfil.h"
    "${ft_header_dir}/ftlist.h"
    "${ft_header_dir}/ftlogging.h"
    "${ft_header_dir}/ftlzw.h"
    "${ft_header_dir}/ftmac.h"
    "${ft_header_dir}/ftmm.h"
    "${ft_header_dir}/ftmodapi.h"
    "${ft_header_dir}/ftmoderr.h"
    "${ft_header_dir}/ftotval.h"
    "${ft_header_dir}/ftoutln.h"
    "${ft_header_dir}/ftparams.h"
    "${ft_header_dir}/ftpfr.h"
    "${ft_header_dir}/ftrender.h"
    "${ft_header_dir}/ftsizes.h"
    "${ft_header_dir}/ftsnames.h"
    "${ft_header_dir}/ftstroke.h"
    "${ft_header_dir}/ftsynth.h"
    "${ft_header_dir}/ftsystem.h"
    "${ft_header_dir}/fttrigon.h"
    "${ft_header_dir}/fttypes.h"
    "${ft_header_dir}/ftwinfnt.h"
    "${ft_header_dir}/otsvg.h"
    "${ft_header_dir}/t1tables.h"
    "${ft_header_dir}/ttnameid.h"
    "${ft_header_dir}/tttables.h"
    "${ft_header_dir}/tttags.h"
    "${ft_header_dir}/config/ftconfig.h"
    "${ft_header_dir}/config/ftheader.h"
    "${ft_header_dir}/config/ftmodule.h"
    "${ft_header_dir}/config/ftoption.h"
    "${ft_header_dir}/config/ftstdlib.h"
    "${ft_header_dir}/config/integer-types.h"
    "${ft_header_dir}/config/mac-support.h"
    "${ft_header_dir}/config/public-macros.h"
    "${ft_header_dir}/internal/autohint.h"
    "${ft_header_dir}/internal/cffotypes.h"
    "${ft_header_dir}/internal/cfftypes.h"
    "${ft_header_dir}/internal/compiler-macros.h"
    "${ft_header_dir}/internal/ftcalc.h"
    "${ft_header_dir}/internal/ftdebug.h"
    "${ft_header_dir}/internal/ftdrv.h"
    "${ft_header_dir}/internal/ftgloadr.h"
    "${ft_header_dir}/internal/fthash.h"
    "${ft_header_dir}/internal/ftmemory.h"
    "${ft_header_dir}/internal/ftmmtypes.h"
    "${ft_header_dir}/internal/ftobjs.h"
    "${ft_header_dir}/internal/ftpsprop.h"
    "${ft_header_dir}/internal/ftrfork.h"
    "${ft_header_dir}/internal/ftserv.h"
    "${ft_header_dir}/internal/ftstream.h"
    "${ft_header_dir}/internal/fttrace.h"
    "${ft_header_dir}/internal/ftvalid.h"
    "${ft_header_dir}/internal/psaux.h"
    "${ft_header_dir}/internal/pshints.h"
    "${ft_header_dir}/internal/sfnt.h"
    "${ft_header_dir}/internal/svginterface.h"
    "${ft_header_dir}/internal/t1types.h"
    "${ft_header_dir}/internal/tttypes.h"
    "${ft_header_dir}/internal/wofftypes.h"
    "${ft_header_dir}/internal/services/svbdf.h"
    "${ft_header_dir}/internal/services/svcfftl.h"
    "${ft_header_dir}/internal/services/svcid.h"
    "${ft_header_dir}/internal/services/svfntfmt.h"
    "${ft_header_dir}/internal/services/svgldict.h"
    "${ft_header_dir}/internal/services/svgxval.h"
    "${ft_header_dir}/internal/services/svkern.h"
    "${ft_header_dir}/internal/services/svmetric.h"
    "${ft_header_dir}/internal/services/svmm.h"
    "${ft_header_dir}/internal/services/svotval.h"
    "${ft_header_dir}/internal/services/svpfr.h"
    "${ft_header_dir}/internal/services/svpostnm.h"
    "${ft_header_dir}/internal/services/svprop.h"
    "${ft_header_dir}/internal/services/svpscmap.h"
    "${ft_header_dir}/internal/services/svpsinfo.h"
    "${ft_header_dir}/internal/services/svsfnt.h"
    "${ft_header_dir}/internal/services/svttcmap.h"
    "${ft_header_dir}/internal/services/svtteng.h"
    "${ft_header_dir}/internal/services/svttglyf.h"
    "${ft_header_dir}/internal/services/svwinfnt.h"
)

set(
    freetype_sources
    
    "freetype/src/autofit/autofit.c"
    "freetype/src/base/ftbase.c"
    "freetype/src/base/ftbbox.c"
    "freetype/src/base/ftbdf.c"
    "freetype/src/base/ftbitmap.c"
    "freetype/src/base/ftcid.c"
    "freetype/src/base/ftfstype.c"
    "freetype/src/base/ftgasp.c"
    "freetype/src/base/ftglyph.c"
    "freetype/src/base/ftgxval.c"
    "freetype/src/base/ftinit.c"
    "freetype/src/base/ftmm.c"
    "freetype/src/base/ftotval.c"
    "freetype/src/base/ftpatent.c"
    "freetype/src/base/ftpfr.c"
    "freetype/src/base/ftstroke.c"
    "freetype/src/base/ftsynth.c"
    "freetype/src/base/fttype1.c"
    "freetype/src/base/ftwinfnt.c"
    "freetype/src/bdf/bdf.c"
    "freetype/src/bzip2/ftbzip2.c"
    "freetype/src/cache/ftcache.c"
    "freetype/src/cff/cff.c"
    "freetype/src/cid/type1cid.c"
    "freetype/src/gzip/ftgzip.c"
    "freetype/src/lzw/ftlzw.c"
    "freetype/src/pcf/pcf.c"
    "freetype/src/pfr/pfr.c"
    "freetype/src/psaux/psaux.c"
    "freetype/src/pshinter/pshinter.c"
    "freetype/src/psnames/psnames.c"
    "freetype/src/raster/raster.c"
    "freetype/src/sdf/sdf.c"
    "freetype/src/sfnt/sfnt.c"
    "freetype/src/smooth/smooth.c"
    "freetype/src/svg/svg.c"
    "freetype/src/truetype/truetype.c"
    "freetype/src/type1/type1.c"
    "freetype/src/type42/type42.c"
    "freetype/src/winfonts/winfnt.c"
)

if(${WIN32})
    list(APPEND freetype_sources "freetype/builds/windows/ftsystem.c")
elseif(${UNIX})
    list(APPEND freetype_sources "freetype/builds/unix/ftsystem.c")
else()
    list(APPEND freetype_sources "freetype/src/base/ftsystem.c")
endif()

if(${WIN32})
    enable_language(RC)
    list(
        APPEND freetype_sources
        "freetype/builds/windows/ftdebug.c"
        "freetype/src/base/ftver.rc"
    )
elseif(${WINCE})
    list(APPEND freetype_sources "freetype/builds/wince/ftdebug.c")
else()
    list(APPEND freetype_sources "freetype/src/base/ftdebug.c")
endif()

add_library(freetype SHARED "")
target_sources(freetype PRIVATE ${freetype_headers} ${freetype_sources})

set_target_properties(
    freetype PROPERTIES
    C_STANDARD 17
    C_STANDARD_REQUIRED TRUE
    C_VISIBILITY_PRESET hidden
)

EE_TargetConsiderIPO(freetype)

target_compile_definitions(freetype PUBLIC FT_CONFIG_OPTION_ERROR_STRINGS=1)
target_compile_definitions(freetype PRIVATE FT2_BUILD_LIBRARY)

if(${WIN32})
    target_compile_definitions(freetype PRIVATE _CRT_SECURE_NO_WARNINGS _CRT_NONSTDC_NO_WARNINGS DLL_EXPORT)
elseif(${UNIX})
    target_compile_definitions(freetype PUBLIC HAVE_UNISTD_H=1 HAVE_FCNTL_H=1)
endif()

target_include_directories(
    freetype
    PUBLIC "freetype/include"
    PRIVATE "freetype/include/config"
)

# disable specific warnings
if(${MSVC})
    target_compile_options(
        freetype PRIVATE
        /wd4267 /wd4244     # narrowing conversions
        /wd4706             # assignments within conditional expressions
    )
else()
    target_compile_options(
        freetype PRIVATE
        -Wno-narrowing      # narrowing conversions
        -Wno-parentheses    # assignments within conditional expressions
    )
endif()
