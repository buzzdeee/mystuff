#	CMake module to find glm
#	Alan Witkowski
#
#	Input:
# 		GLM_ROOT          - Environment variable that points to the glm root directory
#
#	Output:
#		GLM_FOUND         - Set to true if glm was found
#		GLM_INCLUDE_DIR   - Path to glm.h
#		GLM_LIBRARIES     - Contains the list of glm libraries
#

set(GLM_FOUND false)

# find include path
find_path(
		GLM_INCLUDE_DIR
	NAMES
		glm.hpp
	HINTS
		ENV GLM_ROOT
		ENV GLMDIR
	PATHS
		/usr
		/usr/local
	PATH_SUFFIXES
		include
		include/glm
		glm
)

# handle QUIET and REQUIRED
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GLM DEFAULT_MSG GLM_INCLUDE_DIR)

# advanced variables only show up in gui if show advanced is turned on
mark_as_advanced(GLM_INCLUDE_DIR)
