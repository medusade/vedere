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
#   File: gVMd5.pri
#
# Author: $author$
#   Date: 11/28/2020
#
# QtCreator .pri file for vedere executable gVMd5
########################################################################

########################################################################
# gVMd5

# gVMd5 TARGET
#
gVMd5_TARGET = gVMd5

# gVMd5 INCLUDEPATH
#
gVMd5_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_gtk_INCLUDEPATH} \

# gVMd5 DEFINES
#
gVMd5_DEFINES += \
$${vedere_DEFINES} \
XOS_DEFAULT_LOG_ERROR \
XOS_NO_ERR_LOG_DEBUG \
XOS_NO_ERR_LOG_TRACE \

contains(VEDERE_OS,linux) {
} else {
gVMd5_DEFINES += \
VEDERE_GUI_MAIN_INSTANCE
} # contains(VEDERE_OS,linux)

########################################################################
# gVMd5 OBJECTIVE_HEADERS
#
#gVMd5_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# gVMd5 OBJECTIVE_SOURCES
#
#gVMd5_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# gVMd5 HEADERS
#
gVMd5_HEADERS += \
$${LAMNA_SRC}/lamna/gui/gtk/widget.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/gtk.hpp \
\
$${VEDERE_SRC}/vedere/gui/dialog.hpp \
$${VEDERE_SRC}/vedere/gui/main.hpp \
\
$${VEDERE_SRC}/vedere/gui/gtk/dialog_box.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/progress_bar.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/text_view.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/entry.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/editable.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/grid.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/label.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/misc.hpp \
\
$${VEDERE_SRC}/vedere/app/gui/crypto/hash/dialog.hpp \
\
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/window.hpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/dialog.hpp \
\
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

# gVMd5 SOURCES
#
gVMd5_SOURCES += \
$${VEDERE_SRC}/vedere/gui/dialog.cpp \
\
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

contains(VEDERE_OS,linux) {
gVMd5_SOURCES += \
$${LAMNA_SRC}/lamna/gui/gtk/widget.cpp \
\
$${VEDERE_SRC}/vedere/gui/gtk/dialog_box.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/progress_bar.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/text_view.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/entry.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/editable.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/grid.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/label.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/misc.cpp \
\
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/window.cpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/main.cpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/dialog.cpp \

} else {
gVMd5_SOURCES += \
$${VEDERE_SRC}/vedere/gui/main.cpp \

} # contains(VEDERE_OS,linux)

########################################################################
# gVMd5 FRAMEWORKS
#
gVMd5_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \

# gVMd5 LIBS
#
gVMd5_LIBS += \
$${vedere_LIBS} \
$${vedere_gtk_LIBS} \
