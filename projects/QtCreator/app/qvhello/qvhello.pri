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
#   File: qvhello.pri
#
# Author: $author$
#   Date: 5/29/2015
########################################################################

qvhello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

qvhello_DEFINES += \
$${vedere_DEFINES} \

########################################################################
# xos
qvhello_HEADERS += \
$${XOS_SRC}/xos/base/matrix.hpp \
$${XOS_SRC}/xos/base/vector.hpp \
$${XOS_SRC}/xos/io/read/file_or_buffer.hpp \
$${XOS_SRC}/xos/io/read/file.hpp \
$${XOS_SRC}/xos/io/file/reader.hpp \
$${XOS_SRC}/xos/io/read/buffer.hpp \
$${XOS_SRC}/xos/io/buffer.hpp \
$${XOS_SRC}/xos/io/seeker.hpp \
$${XOS_SRC}/xos/io/teller.hpp \
$${XOS_SRC}/xos/io/whencer.hpp \
$${XOS_SRC}/xos/io/whence.hpp \

qvhello_SOURCES += \
$${XOS_SRC}/xos/base/matrix.cpp \
$${XOS_SRC}/xos/base/vector.cpp \
$${XOS_SRC}/xos/io/read/file_or_buffer.cpp \
$${XOS_SRC}/xos/io/read/file.cpp \
$${XOS_SRC}/xos/io/read/buffer.cpp \
$${XOS_SRC}/xos/io/seeker.cpp \
$${XOS_SRC}/xos/io/teller.cpp \
$${XOS_SRC}/xos/io/whencer.cpp \
$${XOS_SRC}/xos/io/whence.cpp \

########################################################################
# libpng

qvhello_HEADERS += \
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

qvhello_SOURCES += \
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

########################################################################
# libpng

_qvhello_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/png.hpp \

_qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/png.cpp \

########################################################################
# libtiff

qvhello_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/format/tiff/libtiff/image_reader.hpp \

qvhello_SOURCES += \

_qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/tiff/libtiff/image_reader.cpp \

########################################################################
# libjpeg

qvhello_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/decompress.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/jpeg.hpp \

qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/decompress.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/jpeg.cpp \

########################################################################
# libraw

qvhello_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/filter.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/libraw.hpp \

qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/reader_events.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/filter.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/libraw.cpp \

_qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/image_reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libraw/reader.cpp \

########################################################################
# bmp
qvhello_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/bmp.hpp \

qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/bmp.cpp \

_qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/image_reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/bmp/implement/reader_events.cpp \

########################################################################

qvhello_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/to_bytes_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/pixel.hpp \
$${VEDERE_SRC}/vedere/graphic/image/color.hpp \
$${VEDERE_SRC}/vedere/graphic/rectangle.hpp \

qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/to_bytes_reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/pixel.cpp \
$${VEDERE_SRC}/vedere/graphic/rectangle.cpp \

_qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/color.cpp \

########################################################################

qvhello_HEADERS += \
$${VEDERE_SRC}/vedere/gui/qt/application/main.hpp \
$${VEDERE_SRC}/vedere/gui/qt/main.hpp \
$${VEDERE_SRC}/vedere/gui/main.hpp \

qvhello_SOURCES += \

########################################################################

qvhello_HEADERS += \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/renderer.hpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/image_renderer.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main_window.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/window.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/renderer.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

qvhello_SOURCES += \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/main.cpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/renderer.cpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/image_renderer.cpp \
$${VEDERE_SRC}/vedere/app/gui/hello/window.cpp \
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

########################################################################

qvhello_LIBS += \
$${vedere_LIBS} \

