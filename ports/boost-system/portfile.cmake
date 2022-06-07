# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_buildpath_length_warning(37)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/system
    REF boost-1.79.0
    SHA512 785aa2efff0c1e507ceb32a0d7f0c1034960ab5a87ebe45cf4acb5020d8cfcaa810ab3218d06e783ff7cafe661630fc67373d649865c6c0603b2be0c05b09b04
    HEAD_REF master
)

include(${CURRENT_HOST_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(SOURCE_PATH ${SOURCE_PATH})
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
