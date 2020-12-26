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
#   File: qVedere.pri
#
# Author: $author$
#   Date: 12/24/2020
#
# QtCreator .pri file for vedere executable qVedere
########################################################################

########################################################################
# qVedere

# qVedere TARGET
#
qVedere_TARGET = qVedere

# qVedere INCLUDEPATH
#
qVedere_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_qt_INCLUDEPATH} \
$${vedere_giflib_INCLUDEPATH} \
$${vedere_libpgm_INCLUDEPATH} \
$${vedere_libpng_INCLUDEPATH} \
$${vedere_libjpeg_INCLUDEPATH} \
$${vedere_libtiff_INCLUDEPATH} \
$${vedere_libraw_INCLUDEPATH} \

# qVedere DEFINES
#
qVedere_DEFINES += \
$${vedere_DEFINES} \
XOS_DEFAULT_LOG_ERROR \
VEDERE_GRAPHIC_IMAGE_FORMAT_ALL_VIEWER \

########################################################################
# qVedere OBJECTIVE_HEADERS
#
#qVedere_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# qVedere OBJECTIVE_SOURCES
#
#qVedere_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# qVedere HEADERS
#
qVedere_HEADERS += \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info_reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info_created.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/read_struct.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/struct.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/struct_created.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/palette.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/color.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/png.hpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/image_reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/opened.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/libtiff.hpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/libpgm.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libpgm/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libpgm/reader.hpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/filter.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/libraw.hpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/filter.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/map.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/pattern.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/gamma/libraw/curve.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/file.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/gif/giflib/giflib.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/png.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/decompress.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/jpeg.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/tiff/libtiff/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/tiff/libtiff/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/tiff/libtiff/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/tiff/libtiff/libtiff.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/image_reader.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/filter.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/libraw.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_loader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main_window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main_opt.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/image_renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main_window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main.hpp \
\
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

# qVedere SOURCES
#
qVedere_SOURCES += \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/libpgm.cpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader_events.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/image_reader.cpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_loader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/image_renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main_window.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/window.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main_opt.cpp \
\
$${VEDERE_SRC}/vedere/console/main_main.cpp \

########################################################################
# qVedere FRAMEWORKS
#
qVedere_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \
$${vedere_qt_FRAMEWORKS} \

# qVedere LIBS
#
qVedere_LIBS += \
$${vedere_LIBS} \
$${vedere_libraw_LIBS} \
$${vedere_libtiff_LIBS} \
$${vedere_libjpeg_LIBS} \
$${vedere_libpng_LIBS} \
$${vedere_libpgm_LIBS} \
$${vedere_giflib_LIBS} \
$${vedere_zlib_LIBS} \
