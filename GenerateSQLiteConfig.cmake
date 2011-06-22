CONFIGURE_FILE(
  ${sqlite_SOURCE_DIR}/Usesqlite.cmake.in
  ${sqlite_BINARY_DIR}/Usesqlite.cmake COPYONLY)

# Library directory
SET(sqlite_LIBRARY_DIRS_CONFIG ${sqlite_BINARY_DIR})

# Include directories
SET(sqlite_INCLUDE_DIRS_CONFIG
  ${sqlite_SOURCE_DIR}
  )

# Usesqlite file
SET(sqlite_USE_FILE_CONFIG ${PROJECT_BINARY_DIR}/Usesqlite.cmake)

# Configure sqliteConfig.cmake
CONFIGURE_FILE(
  ${sqlite_SOURCE_DIR}/sqliteConfig.cmake.in
  ${sqlite_BINARY_DIR}/sqliteConfig.cmake @ONLY)