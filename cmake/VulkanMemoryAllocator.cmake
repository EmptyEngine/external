project(VulkanMemoryAllocator)
message(STATUS "Configuring Empty Engine dependency: VulkanMemoryAllocator")

add_library(VulkanMemoryAllocator INTERFACE)
target_include_directories(VulkanMemoryAllocator INTERFACE "VulkanMemoryAllocator/include")
