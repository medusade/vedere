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
#   File: gvmd5.pri
#
# Author: $author$
#   Date: 8/27/2015
########################################################################

gvmd5_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

gvmd5_DEFINES += \
$${vedere_DEFINES} \

########################################################################
gvmd5_HEADERS += \
$${LAMNA_SRC}/lamna/gui/gtk/widget.hpp \
$${LAMNA_SRC}/lamna/gui/gtk/gtk.hpp \

gvmd5_SOURCES += \
$${LAMNA_SRC}/lamna/gui/gtk/widget.cpp \

########################################################################
gvmd5_HEADERS += \
$${VEDERE_SRC}/vedere/gui/dialog.hpp \

gvmd5_SOURCES += \
$${VEDERE_SRC}/vedere/gui/dialog.cpp \

########################################################################
gvmd5_HEADERS += \
$${VEDERE_SRC}/vedere/gui/gtk/dialog_box.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/progress_bar.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/text_view.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/entry.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/editable.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/grid.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/label.hpp \
$${VEDERE_SRC}/vedere/gui/gtk/misc.hpp \

gvmd5_SOURCES += \
$${VEDERE_SRC}/vedere/gui/gtk/dialog_box.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/progress_bar.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/text_view.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/entry.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/editable.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/grid.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/label.cpp \
$${VEDERE_SRC}/vedere/gui/gtk/misc.cpp \

########################################################################
gvmd5_HEADERS += \
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/window.hpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/main.hpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/dialog.hpp \
$${VEDERE_SRC}/vedere/app/gui/crypto/hash/dialog.hpp \
$${VEDERE_SRC}/vedere/console/main_opt.hpp \
$${VEDERE_SRC}/vedere/console/main_main.hpp \

gvmd5_SOURCES += \
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/window.cpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/main.cpp \
$${VEDERE_SRC}/vedere/app/gui/gtk/crypto/hash/application/dialog.cpp \
$${VEDERE_SRC}/vedere/console/main_opt.cpp \
$${VEDERE_SRC}/vedere/console/main_main.cpp \

gvmd5_LIBS += \
$${vedere_LIBS} \

