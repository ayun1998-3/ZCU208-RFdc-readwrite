# Install script for directory: C:/Users/IECS-Lab/Desktop/vitis_2024_workspace/rfdc_dma_v3/zynqmp_pmufw/zynqmp_pmufw_bsp/libsrc/xilsecure/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/IECS-Lab/Desktop/vitis_2024_workspace/rfdc_dma_v3/zynqmp_pmufw/zynqmp_pmufw_bsp/libsrc/build_configs/gen_bsp/build-libmetal")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "E:/Vitis/2024.1/gnu/microblaze/nt/bin/mb-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/IECS-Lab/Desktop/vitis_2024_workspace/rfdc_dma_v3/zynqmp_pmufw/zynqmp_pmufw_bsp/libsrc/build_configs/gen_bsp/libsrc/xilsecure/src/common/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/IECS-Lab/Desktop/vitis_2024_workspace/rfdc_dma_v3/zynqmp_pmufw/zynqmp_pmufw_bsp/libsrc/build_configs/gen_bsp/libsrc/xilsecure/src/zynqmp/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Users/IECS-Lab/Desktop/vitis_2024_workspace/rfdc_dma_v3/zynqmp_pmufw/zynqmp_pmufw_bsp/lib/libxilsecure.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Users/IECS-Lab/Desktop/vitis_2024_workspace/rfdc_dma_v3/zynqmp_pmufw/zynqmp_pmufw_bsp/lib" TYPE STATIC_LIBRARY MESSAGE_LAZY FILES "C:/Users/IECS-Lab/Desktop/vitis_2024_workspace/rfdc_dma_v3/zynqmp_pmufw/zynqmp_pmufw_bsp/libsrc/build_configs/gen_bsp/libsrc/xilsecure/src/libxilsecure.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Users/IECS-Lab/Desktop/vitis_2024_workspace/rfdc_dma_v3/zynqmp_pmufw/zynqmp_pmufw_bsp/include/../include")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Users/IECS-Lab/Desktop/vitis_2024_workspace/rfdc_dma_v3/zynqmp_pmufw/zynqmp_pmufw_bsp/include/.." TYPE DIRECTORY MESSAGE_LAZY FILES "C:/Users/IECS-Lab/Desktop/vitis_2024_workspace/rfdc_dma_v3/zynqmp_pmufw/zynqmp_pmufw_bsp/libsrc/build_configs/gen_bsp/include")
endif()

