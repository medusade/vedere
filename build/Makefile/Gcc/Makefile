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
#   File: Makefile
#
# Author: $author$
#   Date: 12/23/2015
#
# build Gcc Makefile for lamna
########################################################################

########################################################################
# fl
#
build_fl_USRINCLUDES += \

build_fl_USRDEFINES += \

build_fl_USRLIBDIRS += \

build_fl_LIBS += \
-lfltk \

########################################################################
# wx
#
build_wx_USRINCLUDES += \
-I/$(HOME)/build/wxWidgets/include/wx-3.0 \
-I/$(HOME)/jboyd/build/wxWidgets/lib/wx/include/gtk2-unicode-3.0 \

build_wx_USRDEFINES += \
__WXGTK__ \

build_wx_USRLIBDIRS += \
-L/$(HOME)/build/wxWidgets/lib \

build_wx_LIBS += \
-lwx_gtk2u_core-3.0 \
-lwx_baseu-3.0 \

########################################################################
# gtk
#
# pkg-config --cflags --libs gtk+-3.0
#
build_gtk_USRINCLUDES += \
-I/usr/include/gtk-3.0 \
-I/usr/include/atk-1.0 \
-I/usr/include/at-spi2-atk/2.0 \
-I/usr/include/pango-1.0 \
-I/usr/include/gio-unix-2.0/ \
-I/usr/include/cairo \
-I/usr/include/gdk-pixbuf-2.0 \
-I/usr/include/glib-2.0 \
-I/usr/lib/i386-linux-gnu/glib-2.0/include \
-I/usr/include/harfbuzz \
-I/usr/include/freetype2 \
-I/usr/include/pixman-1 \
-I/usr/include/libpng12 \

build_gtk_USRDEFINES += \

build_gtk_USRLIBDIRS += \

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
-lglib-2.0 \

