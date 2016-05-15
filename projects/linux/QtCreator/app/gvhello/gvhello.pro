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
#   File: gvhello.pro
#
# Author: $author$
#   Date: 5/27/2015
########################################################################
include(../../../../../build/QtCreator/libtiff.pri)
include(../../libtiff.pri)
include(../../../../../build/QtCreator/libjpeg.pri)
include(../../libjpeg.pri)
include(../../../../../build/QtCreator/libpng.pri)
include(../../libpng.pri)
include(../../../../../build/QtCreator/libraw.pri)
include(../../libraw.pri)
include(../../../../../build/QtCreator/gtk.pri)
include(../../gtk.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/gvhello/gvhello.pri)

TARGET = gvhello

INCLUDEPATH += \
$${gvhello_INCLUDEPATH} \
$${gtk_INCLUDEPATH} \
$${libtiff_INCLUDEPATH} \
$${libjpeg_INCLUDEPATH} \
$${libpng_INCLUDEPATH} \
$${libraw_INCLUDEPATH} \

DEFINES += \
$${gvhello_DEFINES} \

HEADERS += \
$${gvhello_HEADERS} \

SOURCES += \
$${gvhello_SOURCES} \

LIBS += \
$${gvhello_LIBS} \
$${gtk_LIBS} \
$${libtiff_LIBS} \
$${libjpeg_LIBS} \
$${libpng_LIBS} \
$${libraw_LIBS} \
-llcms2 \
-lgomp \
-lz \
