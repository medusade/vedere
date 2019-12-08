########################################################################
# Copyright (c) 1988-2019 $organization$
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
#   File: gVHello.pro
#
# Author: $author$
#   Date: 7/19/2019
#
# QtCreator .pro file for vedere executable gVHello
########################################################################
include(../../../../../../build/QtCreator/zlib.pri)
include(../../../../../../build/QtCreator/libpng.pri)
include(../../../../../../build/QtCreator/libjpeg.pri)
include(../../../../../../build/QtCreator/libtiff.pri)
include(../../../../../../build/QtCreator/libraw.pri)
include(../../../../../../build/QtCreator/gtk.pri)
include(../../../../../../build/QtCreator/vedere.pri)
include(../../../../../build/QtCreator/vedere.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/gVHello/gVHello.pri)

TARGET = $${gVHello_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${gVHello_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${gVHello_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${gVHello_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
SOURCES += \
$${gVHello_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${gVHello_HEADERS} \

# SOURCES
#
SOURCES += \
$${gVHello_SOURCES} \
$${OBJECTIVE_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${gVHello_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${gVHello_LIBS} \
$${FRAMEWORKS} \


