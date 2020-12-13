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
#   File: gVHello.pri
#
# Author: $author$
#   Date: 7/19/2019
#
# QtCreator .pri file for vedere executable gVHello
########################################################################

########################################################################
# gVHello

# gVHello TARGET
#
gVHello_TARGET = gVHello

# gVHello INCLUDEPATH
#
gVHello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

# gVHello DEFINES
#
gVHello_DEFINES += \
$${vedere_DEFINES} \

########################################################################
# gVHello OBJECTIVE_HEADERS
#
#gVHello_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# gVHello OBJECTIVE_SOURCES
#
#gVHello_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# gVHello HEADERS
#
#gVHello_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hpp \

# gVHello SOURCES
#
#gVHello_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.cpp \

########################################################################
# gVHello FRAMEWORKS
#
gVHello_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \

# gVHello LIBS
#
gVHello_LIBS += \
$${vedere_LIBS} \


