########################################################################
# Copyright (c) 1988-2021 $organization$
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
#   File: qvebgra.pri
#
# Author: $author$
#   Date: 1/10/2021, 1/12/2021
#
# QtCreator .pri file for vedere executable qvebgra
########################################################################

########################################################################
# qvebgra

qvebgra_USE_OPENGL = NO
contains(qvebgra_USE_OPENGL, NO) {
} else {
QT += opengl
} # contains(qvebgra_USE_OPENGL, NO)

# qvebgra TARGET
#
qvebgra_TARGET = qvebgra

# qvebgra INCLUDEPATH
#
qvebgra_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_qt_INCLUDEPATH} \

# qvebgra DEFINES
#
qvebgra_DEFINES += \
$${vedere_DEFINES} \
XOS_DEFAULT_LOG_ERROR \
VEDERE_GRAPHIC_IMAGE_FORMAT_BGRA_VIEWER \

contains(qvebgra_USE_OPENGL, NO) {
qVedere_DEFINES += VEDERE_GRAPHIC_IMAGE_FORMAT_VIEWER_NO_USE_OPENGL
} else {
qVedere_DEFINES += VEDERE_GRAPHIC_IMAGE_FORMAT_VIEWER_USE_OPENGL
} # contains(qvebgra_USE_OPENGL, NO)

########################################################################
# qvebgra OBJECTIVE_HEADERS
#
#qvebgra_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# qvebgra OBJECTIVE_SOURCES
#
#qvebgra_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# qvebgra HEADERS
#
qvebgra_HEADERS += \
$${VEDERE_SRC}/vedere/gui/point.hpp \
$${VEDERE_SRC}/vedere/gui/size.hpp \
$${VEDERE_SRC}/vedere/gui/rectangle.hpp \
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

# qvebgra SOURCES
#
qvebgra_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/image_loader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main_window.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/main.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

contains(qvebgra_USE_OPENGL, NO) {
qvebgra_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/image_renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/renderer.cpp 
} else {
} # contains(qvebgra_USE_OPENGL, NO)

########################################################################
# qvebgra opengl HEADERS
#
contains(qvebgra_USE_OPENGL, NO) {
} else {
qvebgra_HEADERS += \
$${VEDERE_SRC}/vedere/gui/opengl/gl.hpp \
$${VEDERE_SRC}/vedere/gui/opengl/point.hpp \
$${VEDERE_SRC}/vedere/gui/opengl/size.hpp \
$${VEDERE_SRC}/vedere/gui/opengl/rectangle.hpp \
$${VEDERE_SRC}/vedere/gui/opengl/context.hpp \
$${VEDERE_SRC}/vedere/gui/qt/opengl.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/opengl/image_renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/opengl/image_renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/opengl/renderer.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/opengl/window.hpp 
} # contains(qvebgra_USE_OPENGL, NO)

# qvebgra opengl SOURCES
#
contains(qvebgra_USE_OPENGL, NO) {
} else {
qvebgra_SOURCES += \
$${VEDERE_SRC}/vedere/gui/opengl/gl.cpp \
$${VEDERE_SRC}/vedere/gui/opengl/point.cpp \
$${VEDERE_SRC}/vedere/gui/opengl/size.cpp \
$${VEDERE_SRC}/vedere/gui/opengl/rectangle.cpp \
$${VEDERE_SRC}/vedere/gui/opengl/context.cpp \
$${VEDERE_SRC}/vedere/gui/qt/opengl.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/opengl/image_renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/opengl/renderer.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/viewer/qt/opengl/window.cpp 
} # contains(qvebgra_USE_OPENGL, NO)

########################################################################
# qvebgra bgra HEADERS
#
qvebgra_HEADERS += \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/bgra/image_reader.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/bgra/file.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/bgra/reader_events.hpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/bgra/reader.hpp \

# qvebgra bgra SOURCES
#
qvebgra_SOURCES += \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/bgra/file.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/bgra/reader_events.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/bgra/reader.cpp \
$${VEDERE_SRC}/vedere/graphic/image/format/raw/bgra/image_reader.cpp \

########################################################################
# qvebgra FRAMEWORKS
#
qvebgra_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \
$${vedere_qt_FRAMEWORKS} \

# qvebgra LIBS
#
qvebgra_LIBS += \
$${vedere_LIBS} \
