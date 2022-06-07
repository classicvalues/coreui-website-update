# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/hof
    REF boost-1.79.0
    SHA512 78e02a1b1f5f7b484d9c8e91d239147c9e37f58d7bda944bad5ec302a4dad0b4ea39efd3cc839540a12c5f17ec7944f6f27d9fc529b7992426393cdf30a2dcec
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
