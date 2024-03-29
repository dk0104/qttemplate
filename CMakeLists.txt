cmake_minimum_required(VERSION 3.16)

project(qttemplate VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick Multimedia)

qt_add_executable(qttemplateapp
    main.cpp
)

qt_add_qml_module(qttemplateapp
    URI Qttemplate
    VERSION 1.0
    RESOURCE_PREFIX /keksel.biz/imp
    QML_FILES Main.qml Pages/MainContent.qml
)

add_subdirectory(modA)
add_subdirectory(Utilities)

set_target_properties(qttemplateapp PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.qttemplate
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(qttemplateapp
    PRIVATE
    Qt6::Quick
    Qt6::Gui
    ModaLibplugin
    UtilitiesLibplugin
)

include(GNUInstallDirs)
install(TARGETS qttemplateapp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

