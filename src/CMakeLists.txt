# Optionally glob, but only for CMake 3.12 or later:
# file(GLOB HEADER_LIST CONFIGURE_DEPENDS "${ModernCMakeExample_SOURCE_DIR}/include/modern/*.hpp")
set(
    HEADER_LIST
    "${XProject_SOURCE_DIR}/include/ric/max.hpp"
)

# Make an automatic library - will be static or dynamic based on user setting
add_library(max_lib max.cpp ${HEADER_LIST})

# We need this directory, and users of our library will need it too
target_include_directories(max_lib PUBLIC ../include)

# This depends on (header only) boost
# target_link_libraries(max_lib PRIVATE Boost::boost)

# All users of this library will need at least C++11
target_compile_features(max_lib PUBLIC cxx_std_23)

# IDEs should put the headers in a nice place
# source_group(
#   TREE "${PROJECT_SOURCE_DIR}/include"
#   PREFIX "Header Files"
#   FILES ${HEADER_LIST})
