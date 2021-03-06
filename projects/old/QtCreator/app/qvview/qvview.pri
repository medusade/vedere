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
# lamna
qvview_HEADERS += \
$${LAMNA_SRC}/lamna/graphic/image/pixel.hpp \
$${LAMNA_SRC}/lamna/graphic/image/color_channels.hpp \
$${LAMNA_SRC}/lamna/base/base.hpp \

qvview_SOURCES += \
$${LAMNA_SRC}/lamna/graphic/image/pixel.cpp \
$${LAMNA_SRC}/lamna/graphic/image/color_channels.cpp \

########################################################################
# lamna libpng
qvview_HEADERS += \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info_reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info_created.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/read_struct.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/struct.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/struct_created.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/palette.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/color.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/png.hpp \

qvview_SOURCES += \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/reader.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/reader_events.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info_reader.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/info_created.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/read_struct.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/struct.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/struct_created.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/palette.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/png/libpng/color.cpp \

########################################################################
qvview_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/png.hpp \

qvview_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/image_reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/png.cpp \

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
$${libpng_INCLUDEPATH} \

qvview_DEFINES += \
$${vedere_DEFINES} \
$${qt_DEFINES} \
$${libpng_DEFINES} \

qvview_LIBS += \
$${vedere_LIBS} \
$${qt_LIBS} \
$${libpng_LIBS} \

