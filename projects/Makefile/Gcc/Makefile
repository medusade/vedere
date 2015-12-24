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
#   File: Makefile
#
# Author: $author$
#   Date: 12/23/2015
#
# Generic Gcc Makefile for vedere
########################################################################
VEDERE_PKG = ${PKG}
VEDERE_SRC = ${VEDERE_PKG}/src
VEDERE_BLD = ${VEDERE_PKG}/${BLD}/${BUILD_TYPE}
VEDERE_LIB = ${VEDERE_BLD}/lib
VEDERE_BIN = ${VEDERE_BLD}/bin

########################################################################
# xos
XOS_PKG = ${VEDERE_PKG}/../nadir
XOS_SRC = ${XOS_PKG}/src
XOS_BLD = ${XOS_PKG}/${BLD}/${BUILD_TYPE}
XOS_LIB = ${XOS_BLD}/lib
XOS_BIN = ${XOS_BLD}/bin

########################################################################
# lamna
LAMNA_PKG = ${VEDERE_PKG}/../lamna
LAMNA_SRC = ${LAMNA_PKG}/src
LAMNA_BLD = ${LAMNA_PKG}/${BLD}/${BUILD_TYPE}
LAMNA_LIB = ${LAMNA_BLD}/lib
LAMNA_BIN = ${LAMNA_BLD}/bin

########################################################################
# vedere
vedere_USRDEFINES += \

vedere_USRINCLUDES += \
-I${VEDERE_SRC} \
-I${LAMNA_SRC} \
-I${XOS_SRC} \

vedere_USRCXXFLAGS += \
-std=c++0x

vedere_USRLIBDIRS += \
-L${LAMNA_LIB} \
-L${XOS_LIB} \

vedere_LIBS += \
-llamna \
-lxosnadir \

