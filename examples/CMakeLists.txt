
if( GLFW_LIBRARY_FOUND )
    add_executable(TwAdvanced1 TwAdvanced1.cpp)
    target_link_libraries(TwAdvanced1 AntTweakBar GLU glfw)

    add_executable(TwSimpleGLFW TwSimpleGLFW.cpp)
    target_link_libraries(TwSimpleGLFW AntTweakBar GLU glfw)

    add_executable(TwString TwString.cpp)
    target_link_libraries(TwString AntTweakBar glfw)
endif( GLFW_LIBRARY_FOUND )

if( SDL_FOUND )
    add_executable(TwSimpleSDL TwSimpleSDL.cpp)
    target_link_libraries(TwSimpleSDL AntTweakBar GLU SDL)
endif( SDL_FOUND )

add_executable(TwSimpleGLUT TwSimpleGLUT.c)
target_link_libraries(TwSimpleGLUT AntTweakBar ${OPENGL_LIBRARY} ${GLUT_LIBRARY})
