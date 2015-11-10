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
#   File: ivhello.pri
#
# Author: $author$
#   Date: 11/5/2015
########################################################################

ivhello_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

ivhello_DEFINES += \
$${vedere_DEFINES} \

########################################################################
ivhello_OBJECTIVE_HEADERS += \
$${LAMNA_SRC}/lamna/gui/cocoa/iWindowMain.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iOptMain.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iMain.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iCocoa.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/iOs.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/apple/osx/cocoa.hh \
$${LAMNA_SRC}/lamna/gui/cocoa/os/os.hh \

ivhello_OBJECTIVE_SOURCES += \
$${LAMNA_SRC}/lamna/gui/cocoa/iWindowMain.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iOptMain.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iMain.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iCocoa.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/iOs.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/apple/osx/cocoa.mm \
$${LAMNA_SRC}/lamna/gui/cocoa/os/os.mm \

ivhello_HEADERS += \

ivhello_SOURCES += \

########################################################################
ivhello_OBJECTIVE_HEADERS += \
$${VEDERE_SRC}/vedere/gui/cocoa/iCocoa.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/iOs.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/os/os.hh \

ivhello_OBJECTIVE_SOURCES += \

ivhello_HEADERS += \

ivhello_SOURCES += \

########################################################################
ivhello_OBJECTIVE_HEADERS += \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/iHelloMain.hh \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/renderer.hh \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/image_renderer.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main.hh \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main_main.hh \

_ivhello_OBJECTIVE_HEADERS += \

ivhello_OBJECTIVE_SOURCES += \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/iHelloMain.mm \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/renderer.mm \
$${VEDERE_SRC}/vedere/app/gui/cocoa/hello/image_renderer.mm \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main.mm \
$${VEDERE_SRC}/vedere/gui/cocoa/apple/osx/main_main.mm \

_ivhello_OBJECTIVE_SOURCES += \

ivhello_HEADERS += \

ivhello_SOURCES += \

########################################################################

ivhello_LIBS += \
$${vedere_LIBS} \
