find_library(CBLAS_LIBRARY NAMES cblas PATHS ${CBLAS_PATH} ${CBLAS_PATH}/lib ${CBLAS_PATH}/lib64 /usr/lib /usr/lib64 /usr/local/lib /usr/local/lib64 /usr/lib64/atlas /usr/lib/atlas)

if(CBLAS_LIBRARY)
	set(CBLAS_FOUND TRUE)
endif()


if(CBLAS_FOUND)
	if(NOT CBLAS_FIND_QUIETLY)
		message(STATUS "Found CBLAS: ${CBLAS_LIBRARY}")
	endif()
else()
	if(CBLAS_FIND_REQUIRED)
		if(NOT CBLAS_LIBRARY)
			message(FATAL_ERROR "Could not find the CBLAS shared library. (Add -D CBLAS_PATH=<path> to the cmake commandline for a non-standard installation)")
		endif()
	endif()
endif()
