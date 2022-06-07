# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/crc
    REF boost-1.79.0
    SHA512 31d3b5f0f7e7beee47b4bee9531a598b7fe27681ea6719e68f6dfae4047aff0c453f5cd8668de2e0441cf8d04ae38a83f530ef56dc2e7262a975e567cdc0439d
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
