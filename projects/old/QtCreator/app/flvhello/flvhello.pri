########################################################################
# Copyright (c) 1988-2015 $organization$
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
#   File: flvhello.pri
#
# Author: $author$
#   Date: 10/2/2015
########################################################################

flvhello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

flvhello_DEFINES += \
$${vedere_DEFINES} \

########################################################################

_flvhello_HEADERS += \
$${VEDERE_SRC}/vedere/gui/fl/widget.hpp \

flvhello_HEADERS += \
$${VEDERE_SRC}/vedere/gui/fl/double_window.hpp \
$${VEDERE_SRC}/vedere/gui/fl/main.hpp \
$${VEDERE_SRC}/vedere/gui/fl/fl.hpp \

_flvhello_SOURCES += \
$${VEDERE_SRC}/vedere/gui/fl/widget.cpp \

flvhello_SOURCES += \
$${VEDERE_SRC}/vedere/gui/fl/double_window.cpp \
$${VEDERE_SRC}/vedere/gui/fl/fl.cpp \

########################################################################

_flvhello_HEADERS += \
$${VEDERE_SRC}/vedere/app/gui/hello/main.hpp \

flvhello_HEADERS += \
$${VEDERE_SRC}/vedere/app/gui/fl/hello/main.hpp \
$${VEDERE_SRC}/vedere/gui/main.hpp \
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

_flvhello_SOURCES += \

flvhello_SOURCES += \
$${VEDERE_SRC}/vedere/app/gui/fl/hello/main.cpp \
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

########################################################################

flvhello_LIBS += \
$${vedere_LIBS} \

