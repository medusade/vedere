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
#   File: libjpeg.pri
#
# Author: $author$
#   Date: 11/27/2015
########################################################################

########################################################################
# libjpeg
build_libjpeg_INCLUDEPATH += \
${HOME}/build/jpeg/include \

build_libjpeg_DEFINES += \

build_libjpeg_LIBS += \
-L${HOME}/build/jpeg/lib \
-ljpeg \
