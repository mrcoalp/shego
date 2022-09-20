cmake_minimum_required(VERSION 3.10)

project(shego)

add_subdirectory(lib)

# prepare deps with conan
execute_process(COMMAND conan install "${CMAKE_CURRENT_LIST_DIR}"
                WORKING_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}")
include("${CMAKE_CURRENT_BINARY_DIR}/conanbuildinfo.cmake")
conan_basic_setup()

add_executable(${PROJECT_NAME} ui/main.cpp)

target_link_libraries(${PROJECT_NAME} ${CONAN_LIBS} writer)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
