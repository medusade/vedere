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
#   File: qvhello.pri
#
# Author: $author$
#   Date: 5/29/2015
########################################################################

qvhello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

qvhello_DEFINES += \
$${vedere_DEFINES} \

qvhello_HEADERS += \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/main.hpp \
$${VEDERE_SRC}/vedere/gui/qt/application/main.hpp \
$${VEDERE_SRC}/vedere/gui/qt/main.hpp \
$${VEDERE_SRC}/vedere/gui/main.hpp \
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/main.cpp \
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

qvhello_LIBS += \
$${vedere_LIBS} \


