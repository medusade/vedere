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
#   Date: 7/19/2019, 11/28/2020, 11/29/2020
#
# QtCreator .pri file for vedere executable gVHello
########################################################################

contains(VEDERE_OS,linux) {
vedere_libpng_INCLUDEPATH = /usr/include/libpng
vedere_libpng_LIBS = -lpng
} # contains(VEDERE_OS,linux)

########################################################################
# gVHello

# gVHello TARGET
#
gVHello_TARGET = gVHello

# gVHello INCLUDEPATH
#
gVHello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_gtk_INCLUDEPATH} \
$${vedere_libtiff_INCLUDEPATH} \
$${vedere_libjpeg_INCLUDEPATH} \
$${vedere_libpng_INCLUDEPATH} \
$${vedere_libraw_INCLUDEPATH} \

# gVHello DEFINES
#
gVHello_DEFINES += \
$${vedere_DEFINES} \
XOS_DEFAULT_LOG_ERROR \
XOS_NO_ERR_LOG_DEBUG \
XOS_NO_ERR_LOG_TRACE \

contains(VEDERE_OS,linux) {
} else {
gVHello_DEFINES += \
VEDERE_APP_GUI_HELLO_MAIN_INSTANCE
} # contains(VEDERE_OS,linux)

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
gVHello_HEADERS += \
\
$${NADIR_SRC}/xos/mt/queue.hpp \
\
$${LAMNA_SRC}/lamna/gui/gtk/application/window_main.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/application/main.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/application/window.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/drawing_area.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/widget.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/main.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/gtk.hpp \
\
$${VEDERE_SRC}/vedere/gui/gtk/application/window_main.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/application/main.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/application/window.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/main_window.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/drawing_area.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/widget.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/main.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/gtk.hpp \
\
$${VEDERE_SRC}/vedere/app/gui/gtk/hello/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/hello/renderer.hpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/hello/image_renderer.hpp \
\
$${VEDERE_SRC}/vedere/app/gui/hello/main_window.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/window.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/renderer.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main_opt.hpp \
\
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

# gVHello SOURCES
#
gVHello_SOURCES += \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

contains(VEDERE_OS,linux) {
gVHello_SOURCES += \
$${VEDERE_SRC}/vedere/gui/gtk/application/window_main.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/application/window.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/drawing_area.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/widget.cpp \
\
$${VEDERE_SRC}/vedere/app/gui/gtk/hello/main.cpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/hello/renderer.cpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/hello/image_renderer.cpp \

} else {
gVHello_SOURCES += \
$${VEDERE_SRC}/vedere/app/gui/hello/main_window.cpp \
$${VEDERE_SRC}/vedere/app/gui/hello/window.cpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main.cpp \

} # contains(VEDERE_OS,linux)

########################################################################
# gVHello FRAMEWORKS
#
gVHello_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \

# gVHello LIBS
#
gVHello_LIBS += \
$${vedere_LIBS} \
$${vedere_gtk_LIBS} \
$${vedere_libtiff_LIBS} \
$${vedere_libjpeg_LIBS} \
$${vedere_libpng_LIBS} \
$${vedere_libraw_LIBS} \
$${vedere_zlib_LIBS} \
