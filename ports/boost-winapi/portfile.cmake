# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/winapi
    REF boost-1.79.0
    SHA512 c226df34607ee351715e66c28b2370aec12fa0df4505cd0e8ca3de96a61677ba86a662b292c4090b50fc28bb4629a64208155923393bb6b557dfef267e80db78
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
