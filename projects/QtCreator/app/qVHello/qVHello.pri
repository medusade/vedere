########################################################################
# Copyright (c) 1988-2018 $organization$
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
#   File: qVHello.pri
#
# Author: $author$
#   Date: 11/22/2018
#
# QtCreator .pri file for vedere executable qVHello
########################################################################

########################################################################
# qVHello

# qVHello TARGET
#
qVHello_TARGET = qVHello

# qVHello INCLUDEPATH
#
qVHello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_libpgm_INCLUDEPATH} \
$${vedere_libpng_INCLUDEPATH} \
$${vedere_libjpeg_INCLUDEPATH} \
$${vedere_libtiff_INCLUDEPATH} \
$${vedere_libraw_INCLUDEPATH} \

# qVHello DEFINES
#
qVHello_DEFINES += \
$${vedere_DEFINES} \

########################################################################
# qVHello OBJECTIVE_HEADERS
#
#qVHello_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# qVHello OBJECTIVE_SOURCES
#
#qVHello_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# qVHello HEADERS
#
qVHello_HEADERS += \
$${NADIR_SRC}/xos/base/matrix.hpp \
$${NADIR_SRC}/xos/base/vector.hpp \
$${NADIR_SRC}/xos/io/read/file_or_buffer.hpp \
$${NADIR_SRC}/xos/io/read/file.hpp \
$${NADIR_SRC}/xos/io/file/reader.hpp \
$${NADIR_SRC}/xos/io/read/buffer.hpp \
$${NADIR_SRC}/xos/io/buffer.hpp \
$${NADIR_SRC}/xos/io/seeker.hpp \
$${NADIR_SRC}/xos/io/teller.hpp \
$${NADIR_SRC}/xos/io/whencer.hpp \
$${NADIR_SRC}/xos/io/whence.hpp \
\
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
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/decompress.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/jpeg.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/tiff/libtiff/image_reader.hpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/raw/gamma/libraw/curve.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/filter.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/libraw.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/bmp.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/to_bytes_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/pixel.hpp \
$${VEDERE_SRC}/vedere/graphic/image/color.hpp \
$${VEDERE_SRC}/vedere/graphic/rectangle.hpp \
\
$${VEDERE_SRC}/vedere/gui/qt/application/main.hpp \
$${VEDERE_SRC}/vedere/gui/qt/main.hpp \
$${VEDERE_SRC}/vedere/gui/main.hpp \
\
$${VEDERE_SRC}/vedere/app/gui/qt/hello/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/renderer.hpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/image_renderer.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main_window.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/window.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/renderer.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main_opt.hpp \
\
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

# qVHello SOURCES
#
qVHello_SOURCES += \
$${NADIR_SRC}/xos/base/matrix.cpp \
$${NADIR_SRC}/xos/base/vector.cpp \
$${NADIR_SRC}/xos/io/read/file_or_buffer.cpp \
$${NADIR_SRC}/xos/io/read/file.cpp \
$${NADIR_SRC}/xos/io/read/buffer.cpp \
$${NADIR_SRC}/xos/io/seeker.cpp \
$${NADIR_SRC}/xos/io/teller.cpp \
$${NADIR_SRC}/xos/io/whencer.cpp \
$${NADIR_SRC}/xos/io/whence.cpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/reader.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info_reader.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info_created.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/read_struct.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/struct.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/struct_created.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/palette.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/color.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/png.cpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/decompress.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/jpeg.cpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/raw/gamma/libraw/curve.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/reader_events.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/filter.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/libraw.cpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/bmp.cpp \
\
$${VEDERE_SRC}/vedere/graphic/image/to_bytes_reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/pixel.cpp \
$${VEDERE_SRC}/vedere/graphic/rectangle.cpp \
\
$${VEDERE_SRC}/vedere/app/gui/qt/hello/main.cpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/renderer.cpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/image_renderer.cpp \
$${VEDERE_SRC}/vedere/app/gui/hello/window.cpp \
\
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

########################################################################
# qVHello FRAMEWORKS
#
qVHello_FRAMEWORKS += \
$${vedere_qt_FRAMEWORKS} \

# qVHello LIBS
#
qVHello_LIBS += \
$${vedere_LIBS} \
$${vedere_libpgm_LIBS} \
$${vedere_libpng_LIBS} \
$${vedere_libjpeg_LIBS} \
$${vedere_libtiff_LIBS} \
$${vedere_libraw_LIBS} \


