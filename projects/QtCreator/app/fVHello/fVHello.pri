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
#   File: fVHello.pri
#
# Author: $author$
#   Date: 11/28/2020, 12/14/2020
#
# QtCreator .pri file for vedere executable fVHello
########################################################################

########################################################################
# fVHello

# fVHello TARGET
#
fVHello_TARGET = fVHello

# fVHello INCLUDEPATH
#
fVHello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_fl_INCLUDEPATH} \

# fVHello DEFINES
#
fVHello_DEFINES += \
$${vedere_DEFINES} \
XOS_DEFAULT_LOG_ERROR \
XOS_NO_ERR_LOG_DEBUG \
XOS_NO_ERR_LOG_TRACE \

########################################################################
# fVHello OBJECTIVE_HEADERS
#
#fVHello_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# fVHello OBJECTIVE_SOURCES
#
#fVHello_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# fVHello HEADERS
#
fVHello_HEADERS += \
$${VEDERE_SRC}/vedere/gui/fl/double_window.hpp \
$${VEDERE_SRC}/vedere/gui/fl/main.hpp \
$${VEDERE_SRC}/vedere/gui/fl/fl.hpp \
\
$${VEDERE_SRC}/vedere/app/gui/fl/hello/main.hpp \
$${VEDERE_SRC}/vedere/gui/main.hpp \
\
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

# fVHello SOURCES
#
fVHello_SOURCES += \
$${VEDERE_SRC}/vedere/gui/fl/double_window.cpp \
$${VEDERE_SRC}/vedere/gui/fl/fl.cpp \
\
$${VEDERE_SRC}/vedere/app/gui/fl/hello/main.cpp \
\
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

########################################################################
# fVHello FRAMEWORKS
#
fVHello_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \
$${vedere_fl_FRAMEWORKS} \

# fVHello LIBS
#
fVHello_LIBS += \
$${vedere_LIBS} \
$${vedere_fl_LIBS} \


