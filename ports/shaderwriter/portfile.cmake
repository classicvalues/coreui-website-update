vcpkg_from_github(OUT_SOURCE_PATH SOURCE_PATH
    REPO DragonJoker/ShaderWriter
    REF 8b1b0614f49c27ab08ff16ce632fcac44f24d6d5
    HEAD_REF development
    SHA512 697ecfee5dc9cbfe3cc724b7acd90107ea40bba58448536b1726eb3755f8c96e77b9a31317b567d77ed9e9b5c6decede73c4c7f1a760f11eff0cba2711b3c548
)

vcpkg_from_github(OUT_SOURCE_PATH CMAKE_SOURCE_PATH
    REPO DragonJoker/CMakeUtils
    REF acbce0a4966d0689148975aaa3c581af2b4e33a7
    HEAD_REF master
    SHA512 f2f45520554b576b3896ef9068549878e05a57a8bd0a3a4ab8c218bba9dee49febfe8cb7edb85b8ff51bdd86dee576cace6b8506a6226484d2b640408a3246ba
)

file(REMOVE_RECURSE "${SOURCE_PATH}/CMake")
file(COPY "${CMAKE_SOURCE_PATH}/" DESTINATION "${SOURCE_PATH}/CMake")

string(COMPARE EQUAL "${VCPKG_LIBRARY_LINKAGE}" "static" BUILD_STATIC)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS
        -DPROJECTS_USE_PRECOMPILED_HEADERS=OFF
        -DSDW_GENERATE_SOURCE=OFF
        -DSDW_BUILD_VULKAN_LAYER=OFF
        -DSDW_BUILD_TESTS=OFF
        -DSDW_BUILD_STATIC_SDW=${BUILD_STATIC}
        -DSDW_BUILD_STATIC_SDAST=${BUILD_STATIC}
        -DSDW_UNITY_BUILD=ON
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/shaderwriter)

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
