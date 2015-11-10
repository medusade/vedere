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
#   File: vedere.pri
#
# Author: $author$
#   Date: 5/26/2015
########################################################################

VEDERE_PKG = ../../../../..
VEDERE_BLD = ../..
VEDERE_PRJ = $${VEDERE_PKG}
VEDERE_BIN = $${VEDERE_BLD}/bin
VEDERE_LIB = $${VEDERE_BLD}/lib
VEDERE_SRC = $${VEDERE_PKG}/src

CONFIG(debug, debug|release) {
VEDERE_CONFIG = Debug
} else {
VEDERE_CONFIG = Release
}

########################################################################
# xos
XOS_PKG = $${VEDERE_PKG}/../nadir
XOS_PRJ = $${XOS_PKG}
XOS_SRC = $${XOS_PKG}/src

xos_INCLUDEPATH += \
$${XOS_SRC} \

xos_DEFINES += \

########################################################################
# lamna
LAMNA_PKG = $${VEDERE_PKG}/../lamna
LAMNA_PRJ = $${LAMNA_PKG}
LAMNA_SRC = $${LAMNA_PKG}/src

lamna_INCLUDEPATH += \
$${LAMNA_SRC} \

lamna_DEFINES += \

########################################################################
# vedere
vedere_INCLUDEPATH += \
$${VEDERE_SRC} \
$${lamna_INCLUDEPATH} \
$${xos_INCLUDEPATH} \

vedere_DEFINES += \
$${xos_DEFINES} \
$${lamna_DEFINES} \

