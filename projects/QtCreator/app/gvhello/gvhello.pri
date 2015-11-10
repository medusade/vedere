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
#   File: gvhello.pri
#
# Author: $author$
#   Date: 5/27/2015
########################################################################

gvhello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

gvhello_DEFINES += \
$${vedere_DEFINES} \

########################################################################
gvhello_HEADERS += \
$${XOS_SRC}/xos/mt/queue.hpp \

gvhello_SOURCES += \
$${XOS_SRC}/xos/mt/queue.cpp \

########################################################################
gvhello_HEADERS += \
$${LAMNA_SRC}/lamna/gui/gtk/application/window.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/widget.hpp \

gvhello_SOURCES += \

########################################################################
gvhello_HEADERS += \
$${VEDERE_SRC}/vedere/app/gui/gtk/hello/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/window.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/application/window_main.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/application/main.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/application/window.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/main_window.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/drawing_area.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/widget.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/main.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/gtk.hpp \
$${VEDERE_SRC}/vedere/gui/main.hpp \
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \
$${VEDERE_SRC}/vedere/base/base.hpp \

########################################################################
gvhello_SOURCES += \
$${VEDERE_SRC}/vedere/gui/gtk/application/window_main.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/application/window.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/drawing_area.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/widget.cpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/hello/main.cpp \
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

########################################################################

gvhello_LIBS += \
$${vedere_LIBS} \

