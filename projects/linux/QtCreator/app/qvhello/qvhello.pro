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
#   File: qvhello.pro
#
# Author: $author$
#   Date: 5/29/2015
########################################################################
include(../../../../QtCreator/vedere.pri)
include(../../vedere.pri)
include(../../qt.pri)
include(../../../../QtCreator/app/qvhello/qvhello.pri)

TARGET = qvhello

INCLUDEPATH += \
$${qvhello_INCLUDEPATH} \
$${qt_INCLUDEPATH} \

DEFINES += \
$${qvhello_DEFINES} \
$${qt_DEFINES} \

HEADERS += \
$${qvhello_HEADERS} \

SOURCES += \
$${qvhello_SOURCES} \

LIBS += \
$${qvhello_LIBS} \
$${qt_LIBS} \
