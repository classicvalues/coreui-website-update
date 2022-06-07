# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/lexical_cast
    REF boost-1.79.0
    SHA512 9d0b28cd20c88638d048ff48d2f0209627f15558c1ff2619ed28cc07207c71352799289004d4108c20187b1099720064a2d1ca517b8b19e523e6702acb8fe018
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
