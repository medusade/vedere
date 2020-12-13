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
#   File: qVGif.pro
#
# Author: $author$
#   Date: 12/6/2020
#
# QtCreator .pro file for vedere executable qVGif
########################################################################
include(../../../../../../build/QtCreator/giflib.pri)
include(../../../../../../build/QtCreator/qt.pri)
include(../../../../../../build/QtCreator/vedere.pri)
include(../../../../../build/QtCreator/vedere.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/qVGif/qVGif.pri)

TARGET = $${qVGif_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${qVGif_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${qVGif_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${qVGif_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${qVGif_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${qVGif_HEADERS} \
$${OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${qVGif_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${qVGif_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${qVGif_LIBS} \
$${FRAMEWORKS} \


