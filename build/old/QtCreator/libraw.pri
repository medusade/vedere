########################################################################
# Copyright (c) 1988-2016 $organization$
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
#   File: libraw.pri
#
# Author: $author$
#   Date: 3/27/2016
########################################################################

build_libraw_INCLUDEPATH += \
${HOME}/build/LibRaw/include \

build_libraw_DEFINES += \

build_libraw_LIBS += \
-L${HOME}/build/LibRaw/lib \
-lraw_r \

