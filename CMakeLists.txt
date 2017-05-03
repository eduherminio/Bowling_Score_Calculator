cmake_minimum_required(VERSION 2.8)
project( $ENV{env_filename} )

SET(CMAKE_CXX_FLAGS "-std=c++14")

add_executable( ${PROJECT_NAME} ${PROJECT_NAME}.cpp)


# cmake_minimum_required(VERSION 2.8)
#   This line must go first in the file

# project($ENV{env_filename})
#   avoids creating a variable for the name, allowing to use ${PROJECT_NAME} whenever its necessary
#   This allows to place project() before anything else but cmake_minimum_required()


#
# Author:      Eduardo Cáceres de la Calle
# Date:        30/04/2017
#
# Code initially written to solve Challenge 2 of Tuenti Challenge 7.
#
#
