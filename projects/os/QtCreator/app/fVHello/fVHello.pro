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
#   File: fVHello.pro
#
# Author: $author$
#   Date: 11/28/2020
#
# QtCreator .pro file for vedere executable fVHello
########################################################################
include(../../../../../../build/QtCreator/fl.pri)
include(../../../../../../build/QtCreator/vedere.pri)
include(../../../../../build/QtCreator/vedere.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/fVHello/fVHello.pri)

TARGET = $${fVHello_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${fVHello_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${fVHello_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${fVHello_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${fVHello_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${fVHello_HEADERS} \
$${OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${fVHello_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${fVHello_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${fVHello_LIBS} \
$${FRAMEWORKS} \

########################################################################
# NO Qt
QT -= gui core
