########################################################################
# Copyright (c) 1988-2016 $organization$
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
#   File: gvedere.pri
#
# Author: $author$
#   Date: 5/7/2016
########################################################################

gvedere_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

gvedere_DEFINES += \
$${vedere_DEFINES} \

########################################################################
# glib
gvedere_HEADERS += \
$${LAMNA_SRC}/lamna/gui/glib/object.hpp \
$${LAMNA_SRC}/lamna/gui/glib/boxed.hpp \
$${LAMNA_SRC}/lamna/gui/glib/glib.hpp \

gvedere_SOURCES += \
$${LAMNA_SRC}/lamna/gui/glib/object.cpp \
$${LAMNA_SRC}/lamna/gui/glib/boxed.cpp \
$${LAMNA_SRC}/lamna/gui/glib/glib.cpp \

########################################################################
# gdk
gvedere_HEADERS += \
$${LAMNA_SRC}/lamna/gui/gdk/pixbuf.hpp \
$${LAMNA_SRC}/lamna/gui/gdk/gdk.hpp \

gvedere_SOURCES += \
$${LAMNA_SRC}/lamna/gui/gdk/pixbuf.cpp \
$${LAMNA_SRC}/lamna/gui/gdk/gdk.cpp \

########################################################################
# gtk
gvedere_HEADERS += \
$${LAMNA_SRC}/lamna/gui/gtk/widget.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/gtk.hpp \

gvedere_SOURCES += \
$${LAMNA_SRC}/lamna/gui/gtk/widget.cpp \
$${LAMNA_SRC}/lamna/gui/gtk/gtk.cpp \

########################################################################
# gvedere
gvedere_HEADERS += \

gvedere_SOURCES += \

########################################################################
gvedere_HEADERS += \
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

gvedere_SOURCES += \
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

gvedere_LIBS += \
$${vedere_LIBS} \


