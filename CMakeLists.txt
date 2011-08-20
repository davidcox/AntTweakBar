cmake_minimum_required(VERSION 2.8)
project(AntTweakBar)

set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/lib)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)

include_directories(
	include
)

file(GLOB_RECURSE SOURCES src/*.cpp)

IF(APPLE)
   INCLUDE_DIRECTORIES ( /System/Library/Frameworks )
   FIND_LIBRARY(COCOA_LIBRARY Cocoa)
   FIND_LIBRARY(APPKIT_LIBRARY AppKit)
   FIND_LIBRARY(GLUT_LIBRARY GLUT )
   FIND_LIBRARY(OpenGL_LIBRARY OpenGL )
   MARK_AS_ADVANCED (COCOA_LIBRARY
                     GLUT_LIBRARY
                     OpenGL_LIBRARY)
   SET(EXTRA_LIBS ${APPKIT_LIBRARY} ${COCOA_LIBRARY} ${GLUT_LIBRARY}  ${OpenGL_LIBRARY})
   
   SET(CMAKE_CXX_FLAGS "-g -Wall -ObjC++ -fPIC -D__PLACEMENT_NEW_INLINE")
   
   ADD_DEFINITIONS(-D_MACOSX)
ENDIF (APPLE)


add_library(AntTweakBar ${SOURCES})
target_link_libraries(AntTweakBar ${EXTRA_LIBS})

#ADD_DEFINITIONS(-D_UNIX)


# add_executable(TwAdvanced1 examples/TwAdvanced1.cpp)
# target_link_libraries(TwAdvanced1 AntTweakBar GLU glfw)
# 
# add_executable(TwSimpleGLFW examples/TwSimpleGLFW.cpp)
# target_link_libraries(TwSimpleGLFW AntTweakBar GLU glfw)
# 
# add_executable(TwSimpleGLUT examples/TwSimpleGLUT.cpp)
# target_link_libraries(TwSimpleGLUT AntTweakBar GLU glut)
# 
# add_executable(TwSimpleSDL examples/TwSimpleSDL.cpp)
# target_link_libraries(TwSimpleSDL AntTweakBar GLU SDL)
# 
# add_executable(TwString examples/TwString.cpp)
# target_link_libraries(TwString AntTweakBar glfw)