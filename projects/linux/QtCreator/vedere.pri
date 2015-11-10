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

VEDERE_OS = linux

########################################################################
# xos
XOS_BLD = ../$${XOS_PKG}/build/$${VEDERE_OS}/QtCreator/$${VEDERE_CONFIG}
XOS_LIB = $${XOS_BLD}/lib

########################################################################
# lamna
LAMNA_BLD = ../$${LAMNA_PKG}/build/$${VEDERE_OS}/QtCreator/$${VEDERE_CONFIG}
LAMNA_LIB = $${LAMNA_BLD}/lib

########################################################################
# vedere
vedere_INCLUDEPATH += \

vedere_LIBS += \
-L$${VEDERE_LIB}/libvedere \
-lvedere \
-L$${LAMNA_LIB}/liblamna \
-llamna \
-L$${XOS_LIB}/libxosnadir \
-lxosnadir \
-lpthread \
-ldl \
-lrt \

