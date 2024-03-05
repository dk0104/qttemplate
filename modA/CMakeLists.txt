qt_add_library(ModaLib STATIC)

set_target_properties(ModaLib PROPERTIES AUTOMOC ON)
target_link_libraries(ModaLib PRIVATE Qt6::Gui Qt6::Quick Qt6::Multimedia)

list(APPEND MODULE_QML_FILES subViewOne.qml SubViewTwo.qml)
list(APPEND SOURCE_FILES subcontroller.h subcontroller.cpp)

# add Qml import paths: directories where Qt Creator and the type compiler can find QML files
#list(APPEND QML_IMPORT_PATH ${CMAKE_CURRENT_SOURCE_DIR})

#message(STATUS "cmake current source dir " ${CMAKE_CURRENT_SOURCE_DIR})
#list(APPEND QML_IMPORT_PATH ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

##Prevent adding duplicate values at each run of CMake.
#list(REMOVE_DUPLICATES QML_IMPORT_PATH)

message(STATUS "qml module files: " ${MODULE_QML_FILES})

qt_add_qml_module(ModaLib
  URI Moda
  VERSION 1.0
  RESOURCE_PREFIX /keksel.biz/imp
  QML_FILES ${MODULE_QML_FILES}
  SOURCES ${SOURCE_FILES}
)

#message(STATUS "qml import path" ${QML_IMPORT_PATH})
