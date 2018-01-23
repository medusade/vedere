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
#   File: wx.pri
#
# Author: $author$
#   Date: 9/23/2015
########################################################################

########################################################################
# wx
build_wx_INCLUDEPATH += \
${HOME}/build/wxwidgets/include/wx-3.0 \
${HOME}/build/wxwidgets/lib/wx/include/osx_cocoa-unicode-3.0 \

build_wx_DEFINES += \
__WXOSX_COCOA__ \

build_wx_LIBS += \
-L${HOME}/build/wxwidgets/lib \
-lwx_osx_cocoau_core-3.0 \
-lwx_baseu-3.0 \
-framework CoreFoundation \
