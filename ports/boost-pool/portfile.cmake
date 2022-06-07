# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/pool
    REF boost-1.79.0
    SHA512 ea62735a0f53bf0f94fd994055dc422007557f4a42c35d9b76259fa23e01f7ed637334342e3127d725a187610fff9a76bba044837bfc545bac21594ea8d58500
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
