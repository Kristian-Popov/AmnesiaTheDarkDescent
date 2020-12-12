cmake_minimum_required (VERSION 2.8.11)
project(Launcher)

find_package(FLTK REQUIRED)
find_package(JPEG REQUIRED)
find_package(X11 REQUIRED)

add_executable(Launcher
    launcher.cpp
    Main.cpp
    QualityChooser.cpp
    LauncherHelper.cpp)
target_link_libraries(Launcher
    HPL2
    ${FLTK_LIBRARIES}
    ${JPEG_LIBRARIES}
    ${X11_LIBRARIES}
)

target_include_directories(Launcher
    PRIVATE
    ${FLTK_INCLUDE_DIR}
    ${JPEG_INCLUDE_DIR}
    ${X11_INCLUDE_DIR}
)


# vim: et ts=4
