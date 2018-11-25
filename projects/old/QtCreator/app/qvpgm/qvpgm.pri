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
#   File: qvpgm.pri
#
# Author: $author$
#   Date: 7/17/2016
########################################################################

qvpgm_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${qt_INCLUDEPATH} \
$${libpgm_INCLUDEPATH} \

qvpgm_DEFINES += \
$${vedere_DEFINES} \
$${qt_DEFINES} \
$${libpgm_DEFINES} \

########################################################################
# libpgm
qvpgm_HEADERS += \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libpgm/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libpgm/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/libpgm.hpp \

qvpgm_SOURCES += \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/libpgm.cpp \

_qvpgm_SOURCES += \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libpgm/reader.cpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/reader_events.cpp \

########################################################################
qvpgm_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader_events.hpp \

qvpgm_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/image_reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader_events.cpp \

########################################################################
qvpgm_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/image_renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_loader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main_window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main_window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/window.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main_opt.hpp \

qvpgm_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/image_renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_loader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main_window.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/window.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main.cpp \

########################################################################
qvpgm_HEADERS += \
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

qvpgm_SOURCES += \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

_qvpgm_SOURCES += \
$${VEDERE_SRC}/vedere/console/main_opt.cpp \

########################################################################

qvpgm_LIBS += \
$${vedere_LIBS} \
$${qt_LIBS} \
$${libpgm_LIBS} \

