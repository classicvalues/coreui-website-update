# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/integer
    REF boost-1.79.0
    SHA512 97607006e8acf9c988dc951ca6c04d912bfbcbf86762b00cb5675dfb3e205ec60fa95c2b13c08dcbff4bccbd4775323fa6c2a2faddfbe1a9a2730b9e769761c7
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
