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
#   File: qVPng.pri
#
# Author: $author$
#   Date: 11/30/2020
#
# QtCreator .pri file for vedere executable qVPng
########################################################################

########################################################################
# qVPng

# qVPng TARGET
#
qVPng_TARGET = qVPng

# qVPng INCLUDEPATH
#
qVPng_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_qt_INCLUDEPATH} \
$${vedere_libpng_INCLUDEPATH} \

# qVPng DEFINES
#
qVPng_DEFINES += \
$${vedere_DEFINES} \
VEDERE_GRAPHIC_IMAGE_FORMAT_PNG_VIEWER \

########################################################################
# qVPng OBJECTIVE_HEADERS
#
#qVPng_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# qVPng OBJECTIVE_SOURCES
#
#qVPng_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# qVPng HEADERS
#
qVPng_HEADERS += \
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

# qVPng SOURCES
#
qVPng_SOURCES += \
$${NADIR_SRC}/xos/base/matrix.cpp \
$${NADIR_SRC}/xos/base/vector.cpp \
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
# qVPng FRAMEWORKS
#
qVPng_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \
$${vedere_qt_FRAMEWORKS} \

# qVPng LIBS
#
qVPng_LIBS += \
$${vedere_LIBS} \
$${vedere_qt_LIBS} \
$${vedere_libpng_LIBS} \
$${vedere_zlib_LIBS} \

contains(UNAME,Windows) {
} else {
contains(UNAME,Darwin) {
} else {
contains(UNAME,Linux) {
} else {
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)
} # contains(UNAME,Windows)
