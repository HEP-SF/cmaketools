# - Locate pyquen library
# Defines:
#
#  HYDJET_FOUND
#  HYDJET_INCLUDE_DIR
#  HYDJET_INCLUDE_DIRS (not cached)
#  HYDJET_LIBRARY
#  HYDJET_LIBRARIES (not cached)


#find_path(PYQUEN_INCLUDE_DIR libpyquen.so
#          HINTS $ENV{PYQUEN_ROOT_DIR}/lib ${PYQUEN_ROOT_DIR}/lib)

#find_library(PYQUEN_LIBRARY NAMES pyquen
#             HINTS $ENV{PYQUEN_ROOT_DIR}/lib ${PYQUEN_ROOT_DIR}/lib)

# set(PYQUEN_INCLUDE_DIRS ${PYQUEN_INCLUDE_DIR})
set(HYDJET_INCLUDE_DIR ${HYDJET_ROOT_DIR})
set(HYDJET_LIBRARIES ${HYDJET_ROOT_DIR}/lib)

# handle the QUIETLY and REQUIRED arguments and set PYQUEN_FOUND to TRUE if
# all listed variables are TRUE

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(hydjet DEFAULT_MSG HYDJET_LIBRARY HYDJET_INCLUDE_DIR)

mark_as_advanced(HYDJET_FOUND HYDJET_LIBRARIES HYDJET_INCLUDE_DIR)
