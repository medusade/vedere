########################################################################
# Copyright (c) 1988-2018 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: vedere.pri
#
# Author: $author$
#   Date: 11/20/2018, 1/12/2021
#
# QtCreator .pri file for vedere
########################################################################

OTHER_PKG = ../../../../../../..
OTHER_PRJ = ../../../../../..
OTHER_BLD = ..

THIRDPARTY_NAME = thirdparty
THIRDPARTY_PKG = $${OTHER_PKG}/$${THIRDPARTY_NAME}
THIRDPARTY_PRJ = $${OTHER_PRJ}/$${THIRDPARTY_NAME}
THIRDPARTY_SRC = $${OTHER_PRJ}/src/$${THIRDPARTY_NAME}

########################################################################
# nadir
NADIR_VERSION_MAJOR = 0
NADIR_VERSION_MINOR = 0
NADIR_VERSION_RELEASE = 0
NADIR_VERSION = $${NADIR_VERSION_MAJOR}.$${NADIR_VERSION_MINOR}.$${NADIR_VERSION_RELEASE}
NADIR_NAME = nadir
NADIR_GROUP = $${NADIR_NAME}
NADIR_SRC_NAME = src
NADIR_SOURCE_NAME = source
NADIR_LIBRARY_NAME = nadir
NADIR_SOURCE_LIBRARY_NAME = base
NADIR_DIR = $${NADIR_GROUP}/$${NADIR_NAME}-$${NADIR_VERSION}
NADIR_PKG_DIR = $${NADIR_NAME}
NADIR_HOME_BUILD = $${HOME}/build/$${NADIR_NAME}
NADIR_HOME_BUILD_INCLUDE = $${NADIR_HOME_BUILD}/include
NADIR_HOME_BUILD_LIB = $${NADIR_HOME_BUILD}/lib
NADIR_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${NADIR_DIR}
NADIR_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${NADIR_DIR}
NADIR_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${NADIR_PKG_DIR}
NADIR_THIRDPARTY_SRC_GROUP = $${NADIR_NAME}
NADIR_THIRDPARTY_SRC_NAME = $${NADIR_NAME}
NADIR_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${NADIR_THIRDPARTY_SRC_GROUP}/$${NADIR_THIRDPARTY_SRC_NAME} 
NADIR_PKG = $${OTHER_PKG}/$${NADIR_PKG_DIR}
NADIR_PRJ = $${OTHER_PRJ}/$${NADIR_PKG_DIR}
#NADIR_SRC = $${NADIR_THIRDPARTY_SRC_DIR}
#NADIR_SRC = $${NADIR_THIRDPARTY_PKG}/$${NADIR_SRC_NAME}
#NADIR_SRC = $${NADIR_THIRDPARTY_PRJ}/$${NADIR_SRC_NAME}
#NADIR_SRC = $${NADIR_PKG}/$${NADIR_SRC_NAME}
NADIR_SRC = $${NADIR_PRJ}/$${NADIR_SRC_NAME}
NADIR_SOURCE = $${NADIR_PRJ}/$${NADIR_SOURCE_NAME}

# nadir INCLUDEPATH
#
nadir_INCLUDEPATH += \
$${NADIR_SRC} \

# nadir DEFINES
#
nadir_DEFINES += \

########################################################################
# xosnadir INCLUDEPATH
#
xosnadir_INCLUDEPATH += \
$${nadir_INCLUDEPATH} \

# xosnadir DEFINES
#
xosnadir_DEFINES += \
$${nadir_DEFINES} \
NO_USE_NADIR_BASE \
NO_USE_XOS_LOGGER_INTERFACE \

########################################################################
# nadir SOURCE_INCLUDEPATH
#
nadir_SOURCE_INCLUDEPATH += \
$${NADIR_SOURCE} \
$${nadir_INCLUDEPATH} \

# nadir SOURCE_DEFINES
#
nadir_SOURCE_DEFINES += \
$${nadir_DEFINES} \

########################################################################
# xosnadir SOURCE_INCLUDEPATH
#
xosnadir_SOURCE_INCLUDEPATH += \
$${nadir_SOURCE_INCLUDEPATH} \

# xosnadir SOURCE_DEFINES
#
xosnadir_SOURCE_DEFINES += \
$${nadir_SOURCE_DEFINES} \
NO_USE_NADIR_BASE \
NO_USE_XOS_LOGGER_INTERFACE \

########################################################################
# lamna
LAMNA_VERSION_MAJOR = 0
LAMNA_VERSION_MINOR = 0
LAMNA_VERSION_RELEASE = 0
LAMNA_VERSION = $${LAMNA_VERSION_MAJOR}.$${LAMNA_VERSION_MINOR}.$${LAMNA_VERSION_RELEASE}
LAMNA_NAME = lamna
LAMNA_GROUP = $${LAMNA_NAME}
LAMNA_SOURCE = src
LAMNA_DIR = $${LAMNA_GROUP}/$${LAMNA_NAME}-$${LAMNA_VERSION}
LAMNA_PKG_DIR = $${LAMNA_NAME}
LAMNA_HOME_BUILD = $${HOME}/build/$${LAMNA_NAME}
LAMNA_HOME_BUILD_INCLUDE = $${LAMNA_HOME_BUILD}/include
LAMNA_HOME_BUILD_LIB = $${LAMNA_HOME_BUILD}/lib
LAMNA_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${LAMNA_DIR}
LAMNA_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${LAMNA_DIR}
LAMNA_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${LAMNA_PKG_DIR}
LAMNA_THIRDPARTY_SRC_GROUP = $${LAMNA_NAME}
LAMNA_THIRDPARTY_SRC_NAME = $${LAMNA_NAME}
LAMNA_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${LAMNA_THIRDPARTY_SRC_GROUP}/$${LAMNA_THIRDPARTY_SRC_NAME} 
LAMNA_PKG = $${OTHER_PKG}/$${LAMNA_PKG_DIR}
LAMNA_PRJ = $${OTHER_PRJ}/$${LAMNA_PKG_DIR}
#LAMNA_SRC = $${LAMNA_THIRDPARTY_SRC_DIR}
#LAMNA_SRC = $${LAMNA_THIRDPARTY_PKG}/$${LAMNA_SOURCE}
#LAMNA_SRC = $${LAMNA_THIRDPARTY_PRJ}/$${LAMNA_SOURCE}
#LAMNA_SRC = $${LAMNA_PKG}/$${LAMNA_SOURCE}
LAMNA_SRC = $${LAMNA_PRJ}/$${LAMNA_SOURCE}

# lamna INCLUDEPATH
#
#lamna_INCLUDEPATH += \
#$${LAMNA_HOME_BUILD_INCLUDE} \

lamna_INCLUDEPATH += \
$${LAMNA_SRC} \

# lamna DEFINES
#
lamna_DEFINES += \

########################################################################
# vedere
VEDERE_NAME = vedere
VEDERE_SOURCE = src

VEDERE_PKG = ../../../../..
VEDERE_BLD = ../..

VEDERE_PRJ = $${VEDERE_PKG}
VEDERE_BIN = $${VEDERE_BLD}/bin
VEDERE_LIB = $${VEDERE_BLD}/lib
VEDERE_SRC = $${VEDERE_PKG}/$${VEDERE_SOURCE}

# vedere BUILD_CONFIG
#
CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
vedere_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
vedere_DEFINES += RELEASE_BUILD
}

# vedere INCLUDEPATH
#
vedere_INCLUDEPATH += \
$${VEDERE_SRC} \
$${lamna_INCLUDEPATH} \
$${xosnadir_INCLUDEPATH} \
$${build_vedere_INCLUDEPATH} \

# vedere DEFINES
#
vedere_DEFINES += \
$${xosnadir_DEFINES} \
$${lamna_DEFINES} \
$${build_vedere_DEFINES} \

# vedere LIBS
#
vedere_LIBS += \
-L$${VEDERE_LIB}/lib$${VEDERE_NAME} \
-l$${VEDERE_NAME} \
