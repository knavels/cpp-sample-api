cmake_minimum_required(VERSION 3.0.0)

project(Sample_API_Project VERSION 1.0.0)

add_subdirectory(oatpp)
# update the CMakeLists.txt in the http when adding new controller and stuff
add_subdirectory(http)

add_executable(api
main.cpp)

target_link_libraries(api PRIVATE http oatpp)