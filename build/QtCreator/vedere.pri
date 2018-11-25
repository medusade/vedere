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
# build QtCreator .pri file for vedere
########################################################################

########################################################################
# nadir
#
# pkg-config --cflags --libs nadir
#

# build nadir INCLUDEPATH
#
build_nadir_INCLUDEPATH += \

# build nadir DEFINES
#
build_nadir_DEFINES += \

# build nadir LIBS
#
build_nadir_LIBS += \

########################################################################
# lamna
#
# pkg-config --cflags --libs lamna
#

# build lamna INCLUDEPATH
#
build_lamna_INCLUDEPATH += \

# build lamna DEFINES
#
build_lamna_DEFINES += \

# build lamna LIBS
#
build_lamna_LIBS += \

########################################################################
# vedere

# build vedere INCLUDEPATH
#
build_vedere_INCLUDEPATH += \
$${build_lamna_INCLUDEPATH} \
$${build_nadir_INCLUDEPATH} \


# build vedere DEFINES
#
build_vedere_DEFINES += \
$${build_nadir_DEFINES} \
$${build_lamna_DEFINES} \


# build vedere LIBS
#
build_vedere_LIBS += \
$${build_lamna_LIBS} \
$${build_nadir_LIBS} \


