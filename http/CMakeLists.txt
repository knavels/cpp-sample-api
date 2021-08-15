add_library(http
src/controller/MyController.cpp)

target_include_directories(http PUBLIC include)
target_link_libraries(http PRIVATE oatpp)
