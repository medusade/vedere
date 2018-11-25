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
#   File: vedere.pri
#
# Author: $author$
#   Date: 11/20/2018
#
# QtCreator .pri file for vedere executable vedere
########################################################################

########################################################################
# vedere

# vedere_exe TARGET
#
vedere_exe_TARGET = vedere

# vedere_exe INCLUDEPATH
#
vedere_exe_INCLUDEPATH += \
$${vedere_INCLUDEPATH} \

# vedere_exe DEFINES
#
vedere_exe_DEFINES += \
$${vedere_DEFINES} \

########################################################################
# vedere_exe OBJECTIVE_HEADERS
#
#vedere_exe_OBJECTIVE_HEADERS += \
#$${VEDERE_SRC}/vedere/base/Base.hh \

# vedere_exe OBJECTIVE_SOURCES
#
#vedere_exe_OBJECTIVE_SOURCES += \
#$${VEDERE_SRC}/vedere/base/Base.mm \

########################################################################
# vedere_exe HEADERS
#
vedere_exe_HEADERS += \
$${VEDERE_SRC}/vedere/app/console/vedere/main.hpp \

# vedere_exe SOURCES
#
vedere_exe_SOURCES += \
$${VEDERE_SRC}/vedere/app/console/vedere/main.cpp \

########################################################################
# vedere_exe FRAMEWORKS
#
vedere_exe_FRAMEWORKS += \
$${vedere_FRAMEWORKS} \

# vedere_exe LIBS
#
vedere_exe_LIBS += \
$${vedere_LIBS} \


