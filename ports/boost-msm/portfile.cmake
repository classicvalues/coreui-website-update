# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/msm
    REF boost-1.79.0
    SHA512 29ddbf189b699d1313950b7c30d2ad98e0e242508f9a8d81e98c384572808dfe55072af41f5c036bd2a51d39d7081d10c3c79d9f8f7a9245a67d3840974cb1b9
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
