cmake_minimum_required(VERSION 3.16)

project("protey_testing")

set(CMAKE_CXX_STANDARD 17)

include_directories(
${CMAKE_CURRENT_SOURCE_DIR}/../../protey_client
${CMAKE_CURRENT_SOURCE_DIR}/../../protey_server
$(CMAKE_CURRENT_SOURCE_DIR)/../../common
)

set(SRC 
${CMAKE_CURRENT_SOURCE_DIR}/../../protey_client/Client.cpp 
${CMAKE_CURRENT_SOURCE_DIR}/../../protey_server/Server.cpp 
)

add_executable(${PROJECT_NAME}  main.cpp ${SRC})

target_link_libraries(${PROJECT_NAME} gtest pthread)