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
#   File: gvexplore.pri
#
# Author: $author$
#   Date: 6/28/2015
########################################################################

gvexplore_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

gvexplore_DEFINES += \
$${vedere_DEFINES} \

########################################################################
gvexplore_HEADERS += \
$${LAMNA_SRC}/lamna/gui/glib/object.hpp \
$${LAMNA_SRC}/lamna/gui/glib/boxed.hpp \
$${LAMNA_SRC}/lamna/gui/glib/glib.hpp \

gvexplore_SOURCES += \
$${LAMNA_SRC}/lamna/gui/glib/object.cpp \
$${LAMNA_SRC}/lamna/gui/glib/boxed.cpp \
$${LAMNA_SRC}/lamna/gui/glib/glib.cpp \

########################################################################
gvexplore_HEADERS += \
$${LAMNA_SRC}/lamna/gui/gdk/pixbuf.hpp \
$${LAMNA_SRC}/lamna/gui/gdk/gdk.hpp \

gvexplore_SOURCES += \
$${LAMNA_SRC}/lamna/gui/gdk/pixbuf.cpp \
$${LAMNA_SRC}/lamna/gui/gdk/gdk.cpp \

########################################################################
gvexplore_HEADERS += \
$${LAMNA_SRC}/lamna/gui/gtk/widget.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/gtk.hpp \

gvexplore_SOURCES += \
$${LAMNA_SRC}/lamna/gui/gtk/widget.cpp \
$${LAMNA_SRC}/lamna/gui/gtk/gtk.cpp \

########################################################################
gvexplore_HEADERS += \
$${VEDERE_SRC}/vedere/gui/gtk/scrolled/treeview.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/treeview.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/menu_bar.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/menu_shell.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/radio_menu_item.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/check_menu_item.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/menu_item.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/menu_signals.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/box.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/bin.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/container.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/separator.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/stock/icon.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/icon_factory.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/icon_set.hpp \
$${VEDERE_SRC}/vedere/gui/treeview.hpp \
$${VEDERE_SRC}/vedere/gui/menu.hpp \

gvexplore_SOURCES += \
$${VEDERE_SRC}/vedere/gui/gtk/scrolled/treeview.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/menu.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/menu_shell.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/radio_menu_item.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/check_menu_item.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/menu_item.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/menu_signals.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/box.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/bin.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/container.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/separator.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/stock/icon.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/icon_factory.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/icon_set.cpp \

########################################################################
gvexplore_HEADERS += \
$${VEDERE_SRC}/vedere/app/gui/gtk/explore/application/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/explore/application/window.hpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/explore/treeview.hpp \
$${VEDERE_SRC}/vedere/app/gui/explore/treeview.hpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/explore/menu_bar.hpp \
$${VEDERE_SRC}/vedere/app/gui/explore/menu_bar.hpp \
$${VEDERE_SRC}/vedere/app/gui/explore/directory/fs/path.hpp \
$${VEDERE_SRC}/vedere/app/gui/explore/directory/path.hpp \
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

gvexplore_SOURCES += \
$${VEDERE_SRC}/vedere/app/gui/gtk/explore/application/main.cpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/explore/application/window.cpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/explore/menu_bar.cpp \
$${VEDERE_SRC}/vedere/app/gui/explore/directory/fs/path.cpp \
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

gvexplore_LIBS += \
$${vedere_LIBS} \


