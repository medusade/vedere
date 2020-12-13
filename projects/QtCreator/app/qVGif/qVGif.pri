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
#   File: qVGif.pri
#
# Author: $author$
#   Date: 12/6/2020
#
# QtCreator .pri file for vedere executable qVGif
########################################################################

########################################################################
# qVGif

# qVGif TARGET
#
qVGif_TARGET = qVGif

# qVGif INCLUDEPATH
#
qVGif_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_qt_INCLUDEPATH} \
$${vedere_giflib_INCLUDEPATH} \

# qVGif DEFINES
#
qVGif_DEFINES += \
$${vedere_DEFINES} \
VEDERE_GRAPHIC_IMAGE_FORMAT_GIF_VIEWER \

########################################################################
# qVGif OBJECTIVE_HEADERS
#
#qVGif_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# qVGif OBJECTIVE_SOURCES
#
#qVGif_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# qVGif HEADERS
#
qVGif_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/giflib.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/file.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/image_reader.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_loader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main_window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main_opt.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/image_renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main_window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main.hpp \
\
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

# qVGif SOURCES
#
qVGif_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/giflib.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/file.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/reader_events.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/reader.cpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_loader.cpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/image_renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/window.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main_window.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main.cpp \
\
$${VEDERE_SRC}/vedere/console/main_main.cpp \

########################################################################
# qVGif FRAMEWORKS
#
qVGif_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \
$${vedere_qt_FRAMEWORKS} \

# qVGif LIBS
#
qVGif_LIBS += \
$${vedere_LIBS} \
$${vedere_qt_LIBS} \
$${vedere_giflib_LIBS} \
$${vedere_zlib_LIBS} \
