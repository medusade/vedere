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
#   File: qvebgra.pro
#
# Author: $author$
#   Date: 1/10/2021
#
# QtCreator .pro file for vedere executable qvebgra
########################################################################
include(../../../../../../build/QtCreator/vedere.pri)
include(../../../../../build/QtCreator/vedere.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/qvebgra/qvebgra.pri)

TARGET = $${qvebgra_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${qvebgra_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${qvebgra_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${qvebgra_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${qvebgra_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${qvebgra_HEADERS} \
$${qvebgra_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${qvebgra_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${qvebgra_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${qvebgra_LIBS} \
$${FRAMEWORKS} \


