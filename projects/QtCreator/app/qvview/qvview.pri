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
#   File: qvview.pri
#
# Author: $author$
#   Date: 3/27/2016
########################################################################

########################################################################
qvview_HEADERS += \
$${LAMNA_SRC}/lamna/graphic/image/pixel.hpp \
$${LAMNA_SRC}/lamna/graphic/image/color_channels.hpp \
$${LAMNA_SRC}/lamna/base/base.hpp \

qvview_SOURCES += \
$${LAMNA_SRC}/lamna/graphic/image/pixel.cpp \
$${LAMNA_SRC}/lamna/graphic/image/color_channels.cpp \

########################################################################
qvview_HEADERS += \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/opened.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/libtiff.hpp \

qvview_SOURCES += \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/reader.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/reader_events.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/opened.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/tiff/libtiff/libtiff.cpp \

########################################################################
qvview_HEADERS += \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/map.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/filter.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/pattern.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/filter.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/libraw.hpp \

qvview_SOURCES += \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/map.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/bayer/rgb/pattern.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/filter.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/libraw.cpp \

_qvview_SOURCES += \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/reader.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libraw/reader_events.cpp \

########################################################################
qvview_HEADERS += \
$${VEDERE_SRC}/vedere/app/gui/qt/view/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/view/main.hpp \

qvview_SOURCES += \
$${VEDERE_SRC}/vedere/app/gui/qt/view/main.cpp \

########################################################################
qvview_HEADERS += \
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

qvview_SOURCES += \
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

########################################################################

qvview_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${qt_INCLUDEPATH} \
$${libraw_INCLUDEPATH} \
$${libtiff_INCLUDEPATH} \

qvview_DEFINES += \
$${vedere_DEFINES} \
$${qt_DEFINES} \
$${libraw_DEFINES} \
$${libtiff_DEFINES} \

qvview_LIBS += \
$${vedere_LIBS} \
$${qt_LIBS} \
$${libraw_LIBS} \
$${libtiff_LIBS} \
