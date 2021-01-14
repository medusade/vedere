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
#   File: qveraw.pri
#
# Author: $author$
#   Date: 1/10/2021
#
# QtCreator .pri file for vedere executable qveraw
########################################################################

########################################################################
# qveraw

# qveraw TARGET
#
qveraw_TARGET = qveraw

# qveraw INCLUDEPATH
#
qveraw_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

# qveraw DEFINES
#
qveraw_DEFINES += \
$${vedere_DEFINES} \

########################################################################
# qveraw OBJECTIVE_HEADERS
#
#qveraw_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# qveraw OBJECTIVE_SOURCES
#
#qveraw_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# qveraw HEADERS
#
#qveraw_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hpp \

# qveraw SOURCES
#
#qveraw_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.cpp \

########################################################################
# qveraw FRAMEWORKS
#
qveraw_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \

# qveraw LIBS
#
qveraw_LIBS += \
$${vedere_LIBS} \


