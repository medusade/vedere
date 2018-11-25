########################################################################
# Copyright (c) 1988-2018 $organization$
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
#   File: iVHello.pri
#
# Author: $author$
#   Date: 11/21/2018
#
# QtCreator .pri file for vedere executable iVHello
########################################################################

########################################################################
# iVHello

# iVHello TARGET
#
iVHello_TARGET = iVHello

# iVHello INCLUDEPATH
#
iVHello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \
$${vedere_libpng_INCLUDEPATH} \
$${vedere_libjpeg_INCLUDEPATH} \
$${vedere_libtiff_INCLUDEPATH} \
$${vedere_libraw_INCLUDEPATH} \

# iVHello DEFINES
#
iVHello_DEFINES += \
$${vedere_DEFINES} \

########################################################################
# iVHello OBJECTIVE_HEADERS
#
iVHello_OBJECTIVE_HEADERS += \
$${LAMNA_SRC}/lamna/gui/cocoa/iWindowMain.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iOptMain.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iMain.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iCocoa.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iOs.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/apple/osx/cocoa.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/os/os.hh \
\
$${VEDERE_SRC}/vedere/gui/cocoa/iCocoa.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/iOs.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/os/os.hh \
\
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/iHelloMain.hh \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/renderer.hh \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/image_renderer.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main_main.hh \

# iVHello OBJECTIVE_SOURCES
#
iVHello_OBJECTIVE_SOURCES += \
$${LAMNA_SRC}/lamna/gui/cocoa/iWindowMain.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iOptMain.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iMain.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iCocoa.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iOs.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/apple/osx/cocoa.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/os/os.mm \
\
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/iHelloMain.mm \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/renderer.mm \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/image_renderer.mm \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main.mm \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main_main.mm \

########################################################################
# iVHello HEADERS
#
#iVHello_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hpp \

# iVHello SOURCES
#
#iVHello_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.cpp \

########################################################################
# iVHello FRAMEWORKS
#
iVHello_FRAMEWORKS += \
$${vedere_cocoa_FRAMEWORKS} \

# iVHello LIBS
#
iVHello_LIBS += \
$${vedere_LIBS} \
$${vedere_libpng_LIBS} \
$${vedere_libjpeg_LIBS} \
$${vedere_libtiff_LIBS} \
$${vedere_libraw_LIBS} \
