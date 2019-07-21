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
#   File: qVHello.pro
#
# Author: $author$
#   Date: 11/22/2018
#
# QtCreator .pro file for vedere executable qVHello
########################################################################
include(../../../../../../build/QtCreator/libpgm.pri)
include(../../../../../../build/QtCreator/libpng.pri)
include(../../../../../../build/QtCreator/libjpeg.pri)
include(../../../../../../build/QtCreator/libtiff.pri)
include(../../../../../../build/QtCreator/libraw.pri)
include(../../../../../../build/QtCreator/qt.pri)
include(../../../../../build/QtCreator/vedere.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/qVHello/qVHello.pri)

TARGET = $${qVHello_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${qVHello_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${qVHello_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${qVHello_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${qVHello_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${qVHello_HEADERS} \
$${OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${qVHello_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${qVHello_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${qVHello_LIBS} \
$${FRAMEWORKS} \


