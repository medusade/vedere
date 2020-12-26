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
#   File: qVPgm.pri
#
# Author: $author$
#   Date: 11/28/2020, 12/14/2020
#
# QtCreator .pri file for vedere executable qVPgm
########################################################################

########################################################################
# qVPgm

# qVPgm TARGET
#
qVPgm_TARGET = qVPgm

# qVPgm INCLUDEPATH
#
qVPgm_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_qt_INCLUDEPATH} \
$${vedere_libpgm_INCLUDEPATH} \

# qVPgm DEFINES
#
qVPgm_DEFINES += \
$${vedere_DEFINES} \
XOS_DEFAULT_LOG_ERROR \
XOS_NO_ERR_LOG_DEBUG \
XOS_NO_ERR_LOG_TRACE \
VEDERE_GRAPHIC_IMAGE_FORMAT_PGM_VIEWER \

########################################################################
# qVPgm OBJECTIVE_HEADERS
#
#qVPgm_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# qVPgm OBJECTIVE_SOURCES
#
#qVPgm_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# qVPgm HEADERS
#
qVPgm_HEADERS += \
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
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libpgm/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/raw/libpgm/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/reader.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/reader_events.hpp \
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/libpgm.hpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader_events.hpp \
\
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
\
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

# qVPgm SOURCES
#
qVPgm_SOURCES += \
$${NADIR_SRC}/xos/base/matrix.cpp \
$${NADIR_SRC}/xos/base/vector.cpp \
\
$${LAMNA_SRC}/lamna/graphic/image/format/pgm/libpgm/libpgm.cpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/image_reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/libpgm/reader_events.cpp \
\
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/image_renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_loader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main_window.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/window.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main_opt.cpp \
\
$${VEDERE_SRC}/vedere/console/main_main.cpp \

########################################################################
# qVPgm FRAMEWORKS
#
qVPgm_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \
$${vedere_qt_FRAMEWORKS} \

# qVPgm LIBS
#
qVPgm_LIBS += \
$${vedere_LIBS} \
$${vedere_qt_LIBS} \
$${vedere_libpgm_LIBS} \


