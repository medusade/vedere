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
#   File: gtk.pri
#
# Author: $author$
#   Date: 6/22/2015
########################################################################

########################################################################
# gtk
#
# pkg-config --cflags --libs gtk+-3.0
#
build_gtk_INCLUDEPATH += \
/usr/include/gtk-3.0 \
/usr/include/atk-1.0 \
/usr/include/at-spi2-atk/2.0 \
/usr/include/pango-1.0 \
/usr/include/gio-unix-2.0/ \
/usr/include/cairo \
/usr/include/gdk-pixbuf-2.0 \
/usr/include/glib-2.0 \
/usr/lib/x86_64-linux-gnu/glib-2.0/include \
/usr/include/harfbuzz \
/usr/include/freetype2 \
/usr/include/pixman-1 \
/usr/include/libpng12  \

build_gtk_DEFINES += \

build_gtk_LIBS += \
-lgtk-3 \
-lgdk-3 \
-latk-1.0 \
-lgio-2.0 \
-lpangocairo-1.0 \
-lgdk_pixbuf-2.0 \
-lcairo-gobject \
-lpango-1.0 \
-lcairo \
-lgobject-2.0 \
-lglib-2.0

