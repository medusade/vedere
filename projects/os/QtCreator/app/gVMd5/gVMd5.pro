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
#   File: gVMd5.pro
#
# Author: $author$
#   Date: 11/28/2020
#
# QtCreator .pro file for vedere executable gVMd5
########################################################################
include(../../../../../../build/QtCreator/gtk.pri)
include(../../../../../../build/QtCreator/vedere.pri)
include(../../../../../build/QtCreator/vedere.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/gVMd5/gVMd5.pri)

TARGET = $${gVMd5_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${gVMd5_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${gVMd5_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${gVMd5_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${gVMd5_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${gVMd5_HEADERS} \

# SOURCES
#
SOURCES += \
$${gVMd5_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${gVMd5_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${gVMd5_LIBS} \
$${FRAMEWORKS} \

########################################################################
# NO Qt
QT -= gui core
