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
#   File: iVHello.pro
#
# Author: $author$
#   Date: 11/21/2018
#
# QtCreator .pro file for vedere executable iVHello
########################################################################
include(../../../../../build/QtCreator/vedere.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/iVHello/iVHello.pri)

TARGET = $${iVHello_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${iVHello_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${iVHello_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${iVHello_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${iVHello_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${iVHello_HEADERS} \
$${OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${iVHello_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${iVHello_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${iVHello_LIBS} \
$${FRAMEWORKS} \

########################################################################
# NO Qt
QT -= gui core
