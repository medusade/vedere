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
#   File: gvexplore.pro
#
# Author: $author$
#   Date: 6/28/2015
########################################################################
include(../../../../../build/QtCreator/gtk.pri)
include(../../gtk.pri)
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../../../QtCreator/app/gvexplore/gvexplore.pri)

TARGET = gvexplore

INCLUDEPATH += \
$${gvexplore_INCLUDEPATH} \
$${gtk_INCLUDEPATH} \

DEFINES += \
$${gvexplore_DEFINES} \
$${gtk_DEFINES} \

HEADERS += \
$${gvexplore_HEADERS} \

SOURCES += \
$${gvexplore_SOURCES} \

LIBS += \
$${gvexplore_LIBS} \
$${gtk_LIBS} \


