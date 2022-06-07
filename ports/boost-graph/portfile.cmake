# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/graph
    REF boost-1.79.0
    SHA512 abf24abcccc14145463d9a2b465137352703fd6d5fbb7bc2d8e1d7f126f165826a858a47d3d8ae0f2bec897875f77a138d03708dbcfa4b7ff31910fd6f1a7d63
    HEAD_REF master
)

include(${CURRENT_HOST_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(SOURCE_PATH ${SOURCE_PATH})
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
