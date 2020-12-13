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
#   File: iVHello.pri
#
# Author: $author$
#   Date: 11/21/2018, 12/1/2020
#
# QtCreator .pri file for vedere executable iVHello
########################################################################
UNAME = $$system(uname)

contains(UNAME,Windows) {
} else {
contains(UNAME,Darwin) {
} else {
contains(UNAME,Linux) {
} else {
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)
} # contains(UNAME,Windows)

########################################################################
# iVHello

# iVHello TARGET
#
iVHello_TARGET = iVHello

# iVHello INCLUDEPATH
#
iVHello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_libpng_INCLUDEPATH} \
$${vedere_libjpeg_INCLUDEPATH} \
$${vedere_libtiff_INCLUDEPATH} \
$${vedere_libraw_INCLUDEPATH} \

# iVHello DEFINES
#
iVHello_DEFINES += \
$${vedere_DEFINES} \

contains(UNAME,Darwin) {
} else {

iVHello_DEFINES += \
VEDERE_APP_GUI_HELLO_MAIN_INSTANCE

} # contains(UNAME,Darwin)

########################################################################
# iVHello OBJECTIVE_HEADERS
#
iVHello_OBJECTIVE_HEADERS += \
$${LAMNA_SRC}/lamna/gui/cocoa/iWindowMain.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iOptMain.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iMain.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iCocoa.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iOs.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/apple/osx/cocoa.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/os/os.hh \
\
$${VEDERE_SRC}/vedere/gui/cocoa/iCocoa.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/iOs.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/os/os.hh \
\
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/iHelloMain.hh \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/renderer.hh \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/image_renderer.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main_main.hh \

# iVHello OBJECTIVE_SOURCES
#
contains(UNAME,Darwin) {

iVHello_OBJECTIVE_SOURCES += \
$${LAMNA_SRC}/lamna/gui/cocoa/iWindowMain.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iOptMain.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iMain.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iCocoa.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iOs.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/apple/osx/cocoa.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/os/os.mm \
\
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/iHelloMain.mm \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/renderer.mm \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/image_renderer.mm \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main.mm \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main_main.mm \

} else {
iVHello_OBJECTIVE_SOURCES += \

} # contains(UNAME,Darwin)

########################################################################
# iVHello HEADERS
#
iVHello_HEADERS += \
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
$${LAMNA_SRC}/lamna/graphic/image/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/color_channels.hpp \
$${LAMNA_SRC}/lamna/graphic/image/pixel.hpp \
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
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/opened.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/libtiff.hpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/libpgm.hpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/filter.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/map.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/pattern.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/gamma/libraw/curve.hpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/filter.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/libraw.hpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libpgm/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libpgm/reader_events.hpp \
\
$${VEDERE_SRC}/vedere/graphic/rectangle.hpp \
$${VEDERE_SRC}/vedere/graphic/image/to_bytes_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/pixel.hpp \
$${VEDERE_SRC}/vedere/graphic/image/color.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/decompress.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/error.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/jpeg/libjpeg/jpeg.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/png.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/tiff/libtiff/image_reader.hpp \
\
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
$${VEDERE_SRC}/vedere/gui/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main_window.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/window.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/renderer.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main_opt.hpp \
\
$${VEDERE_SRC}/vedere/gui/qt/main.hpp \
$${VEDERE_SRC}/vedere/gui/qt/application/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/renderer.hpp \
$${VEDERE_SRC}/vedere/app/gui/qt/hello/image_renderer.hpp \
\
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

# iVHello SOURCES
#
contains(UNAME,Darwin) {
} else {
iVHello_SOURCES += \
$${VEDERE_SRC}/vedere/app/gui/hello/main_window.cpp \
$${VEDERE_SRC}/vedere/app/gui/hello/window.cpp \
$${VEDERE_SRC}/vedere/app/gui/hello/main.cpp \
$${VEDERE_SRC}/vedere/app/gui/hello/renderer.cpp \
\
$${VEDERE_SRC}/vedere/console/main_main.cpp \

} # contains(UNAME,Darwin)

########################################################################
# iVHello FRAMEWORKS
#
iVHello_FRAMEWORKS += \
$${vedere_cocoa_FRAMEWORKS} \

# iVHello LIBS
#
iVHello_LIBS += \
$${vedere_LIBS} \
$${vedere_libpng_LIBS} \
$${vedere_libjpeg_LIBS} \
$${vedere_libtiff_LIBS} \
$${vedere_libraw_LIBS} \
$${vedere_zlib_LIBS} \
