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
#   File: qVView.pri
#
# Author: $author$
#   Date: 11/28/2020
#
# QtCreator .pri file for vedere executable qVView
########################################################################

########################################################################
# qVView

# qVView TARGET
#
qVView_TARGET = qVView

# qVView INCLUDEPATH
#
qVView_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_libpng_INCLUDEPATH} \
$${vedere_zlib_INCLUDEPATH} \
$${vedere_qt_INCLUDEPATH} \

# qVView DEFINES
#
qVView_DEFINES += \
$${vedere_DEFINES} \

########################################################################
# qVView OBJECTIVE_HEADERS
#
#qVView_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# qVView OBJECTIVE_SOURCES
#
#qVView_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# qVView HEADERS
#
qVView_HEADERS += \
$${LAMNA_SRC}/lamna/base/base.hpp \
$${LAMNA_SRC}/lamna/graphic/image/pixel.hpp \
$${LAMNA_SRC}/lamna/graphic/image/color_channels.hpp \
\
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
\
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/png.hpp \
\
$${VEDERE_SRC}/vedere/app/gui/qt/view/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/view/main_opt.hpp \
$${VEDERE_SRC}/vedere/app/gui/view/main.hpp \
\
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

# qVView SOURCES
#
qVView_SOURCES += \
$${LAMNA_SRC}/lamna/graphic/image/pixel.cpp \
$${LAMNA_SRC}/lamna/graphic/image/color_channels.cpp \
\
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
\
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/image_reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/png/libpng/png.cpp \
\
$${VEDERE_SRC}/vedere/app/gui/qt/view/main.cpp \
\
$${VEDERE_SRC}/vedere/app/gui/view/main_opt.cpp \
\
$${VEDERE_SRC}/vedere/console/main_main.cpp \

########################################################################
# qVView FRAMEWORKS
#
qVView_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \
$${vedere_qt_FRAMEWORKS} \

# qVView LIBS
#
qVView_LIBS += \
$${vedere_LIBS} \
$${vedere_qt_LIBS} \
$${vedere_libpng_LIBS} \
$${vedere_zlib_LIBS} \


