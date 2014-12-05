# - Locate mctester library
# Defines:
#
#  MCTESTER_FOUND
#  MCTESTER_INCLUDE_DIR
#  MCTESTER_INCLUDE_DIRS (not cached)
#  MCTESTER_LIBRARY
#  MCTESTER_LIBRARIES (not cached)


find_path(MCTESTER_INCLUDE_DIR HEPEVTParticle.H
          HINTS $ENV{MCTESTER_ROOT_DIR}/include ${MCTESTER_ROOT_DIR}/include)

find_library(MCTESTER_LIBRARY NAMES MCTester
             HINTS $ENV{MCTESTER_ROOT_DIR}/lib ${MCTESTER_ROOT_DIR}/lib)

find_library(MCTESTER_HEPEVENT_LIBRARY NAMES HEPEvent
             HINTS $ENV{MCTESTER_ROOT_DIR}/lib ${MCTESTER_ROOT_DIR}/lib)

find_library(MCTESTER_HEPMCEVENT_LIBRARY NAMES HepMCEvent
             HINTS $ENV{MCTESTER_ROOT_DIR}/lib ${MCTESTER_ROOT_DIR}/lib)

set(MCTESTER_INCLUDE_DIRS ${MCTESTER_INCLUDE_DIR})
set(MCTESTER_LIBRARIES ${MCTESTER_LIBRARY} ${MCTESTER_HEPEVENT_LIBRARY} ${MCTESTER_HEPMCEVENT_LIBRARY})

# handle the QUIETLY and REQUIRED arguments and set PHOTOS_FOUND to TRUE if
# all listed variables are TRUE

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Mctester DEFAULT_MSG MCTESTER_INCLUDE_DIR  MCTESTER_LIBRARY MCTESTER_HEPEVENT_LIBRARY MCTESTER_HEPMCEVENT_LIBRARY)

mark_as_advanced(MCTESTER_FOUND MCTESTER_INCLUDE_DIR MCTESTER_LIBRARY MCTESTER_HEPEVENT_LIBRARY MCTESTER_HEPMCEVENT_LIBRARY)
