########################################################################
# Copyright (c) 1988-2021 $organization$
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
#   File: qveraw.pro
#
# Author: $author$
#   Date: 1/10/2021
#
# QtCreator .pro file for vedere executable qveraw
########################################################################
include(../../../../../../build/QtCreator/vedere.pri)
include(../../../../../build/QtCreator/vedere.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/qveraw/qveraw.pri)

TARGET = $${qveraw_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${qveraw_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${qveraw_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${qveraw_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${qveraw_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${qveraw_HEADERS} \
$${qveraw_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${qveraw_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${qveraw_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${qveraw_LIBS} \
$${FRAMEWORKS} \


