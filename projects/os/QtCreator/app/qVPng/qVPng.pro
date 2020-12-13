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
#   File: qVPng.pro
#
# Author: $author$
#   Date: 11/30/2020
#
# QtCreator .pro file for vedere executable qVPng
########################################################################
include(../../../../../../build/QtCreator/qt.pri)
include(../../../../../../build/QtCreator/vedere.pri)
include(../../../../../build/QtCreator/vedere.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/qVPng/qVPng.pri)

TARGET = $${qVPng_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${qVPng_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${qVPng_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${qVPng_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${qVPng_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${qVPng_HEADERS} \
$${OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${qVPng_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${qVPng_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${qVPng_LIBS} \
$${FRAMEWORKS} \


