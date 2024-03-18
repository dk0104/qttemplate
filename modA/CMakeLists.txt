qt_add_library(ModaLib STATIC)
include (../CMake/DefaultCXX.cmake)

set_target_properties(ModaLib PROPERTIES AUTOMOC ON)
target_link_libraries(ModaLib PRIVATE Qt6::Gui Qt6::Quick Qt6::Multimedia)

file(
    GLOB_RECURSE SOURCE_FILES
    RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
    CMAKE_CONFIGURE_DEPENDS ${SOURCE_FILES_FILTER}
)

file(
    GLOB_RECURSE QMLS
    RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
    CMAKE_CONFIGURE_DEPENDS ${VIEW_FILES_FILTER}
)


message(STATUS "qml module files: " ${MODULE_QML_FILES})

qt_add_qml_module(ModaLib
  URI Moda
  VERSION 1.0
  RESOURCE_PREFIX /keksel.biz/imp
  QML_FILES ${QMLS}
  SOURCES ${SOURCE_FILES})
