########################################################################
# Copyright (c) 1988-2020 $organization$
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
#   File: qVPgm.pro
#
# Author: $author$
#   Date: 11/28/2020
#
# QtCreator .pro file for vedere executable qVPgm
########################################################################
include(../../../../../../build/QtCreator/zlib.pri)
include(../../../../../../build/QtCreator/libpgm.pri)
include(../../../../../../build/QtCreator/libpng.pri)
include(../../../../../../build/QtCreator/libjpeg.pri)
include(../../../../../../build/QtCreator/libtiff.pri)
include(../../../../../../build/QtCreator/libraw.pri)
include(../../../../../../build/QtCreator/qt.pri)
include(../../../../../../build/QtCreator/vedere.pri)
include(../../../../../build/QtCreator/vedere.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/qVPgm/qVPgm.pri)

TARGET = $${qVPgm_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${qVPgm_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${qVPgm_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${qVPgm_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${qVPgm_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${qVPgm_HEADERS} \
$${OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${qVPgm_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${qVPgm_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${qVPgm_LIBS} \
$${FRAMEWORKS} \


