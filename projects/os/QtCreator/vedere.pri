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
# Os QtCreator .pri file for vedere
########################################################################
UNAME = $$system(uname)

contains(UNAME,Windows) {
VEDERE_OS = windows
} else {
contains(UNAME,Darwin) {
VEDERE_OS = macosx
} else {
VEDERE_OS = linux
}
}

contains(VEDERE_OS,linux) {
VEDERE_BUILD = os
} else {
VEDERE_BUILD = $${VEDERE_OS}
}

#CONFIG += c++11
#CONFIG += c++0x

########################################################################
# nadir
NADIR_THIRDPARTY_PKG_MAKE_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${VEDERE_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_MAKE_BLD = $${NADIR_THIRDPARTY_PRJ}/build/$${VEDERE_BUILD}/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PKG_BLD = $${NADIR_THIRDPARTY_PKG}/build/$${VEDERE_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_THIRDPARTY_PRJ_BLD = $${NADIR_THIRDPARTY_PRJ}/build/$${VEDERE_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PKG_BLD = $${OTHER_BLD}/$${NADIR_PKG}/build/$${VEDERE_BUILD}/QtCreator/$${BUILD_CONFIG}
NADIR_PRJ_BLD = $${OTHER_BLD}/$${NADIR_PRJ}/build/$${VEDERE_BUILD}/QtCreator/$${BUILD_CONFIG}
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PKG_BLD}/lib
#NADIR_LIB = $${NADIR_THIRDPARTY_PRJ_BLD}/lib
#NADIR_LIB = $${NADIR_PKG_BLD}/lib
NADIR_LIB = $${NADIR_PRJ_BLD}/lib
#NADIR_LIB = $${VEDERE_LIB}

# nadir LIBS
#
nadir_LIBS += \
-L$${NADIR_LIB}/lib$${NADIR_NAME} \
-l$${NADIR_NAME} \

# xosnadir LIBS
#
xosnadir_LIBS += \
-L$${NADIR_LIB}/libxos$${NADIR_NAME} \
-lxos$${NADIR_NAME} \

########################################################################
# lamna
LAMNA_THIRDPARTY_PKG_MAKE_BLD = $${LAMNA_THIRDPARTY_PKG}/build/$${VEDERE_BUILD}/$${BUILD_CONFIG}
LAMNA_THIRDPARTY_PRJ_MAKE_BLD = $${LAMNA_THIRDPARTY_PRJ}/build/$${VEDERE_BUILD}/$${BUILD_CONFIG}
LAMNA_THIRDPARTY_PKG_BLD = $${LAMNA_THIRDPARTY_PKG}/build/$${VEDERE_BUILD}/QtCreator/$${BUILD_CONFIG}
LAMNA_THIRDPARTY_PRJ_BLD = $${LAMNA_THIRDPARTY_PRJ}/build/$${VEDERE_BUILD}/QtCreator/$${BUILD_CONFIG}
LAMNA_PKG_BLD = $${OTHER_BLD}/$${LAMNA_PKG}/build/$${VEDERE_BUILD}/QtCreator/$${BUILD_CONFIG}
LAMNA_PRJ_BLD = $${OTHER_BLD}/$${LAMNA_PRJ}/build/$${VEDERE_BUILD}/QtCreator/$${BUILD_CONFIG}
#LAMNA_LIB = $${LAMNA_THIRDPARTY_PKG_MAKE_BLD}/lib
#LAMNA_LIB = $${LAMNA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#LAMNA_LIB = $${LAMNA_THIRDPARTY_PKG_BLD}/lib
#LAMNA_LIB = $${LAMNA_THIRDPARTY_PRJ_BLD}/lib
#LAMNA_LIB = $${LAMNA_PKG_BLD}/lib
LAMNA_LIB = $${LAMNA_PRJ_BLD}/lib
#LAMNA_LIB = $${VEDERE_LIB}

# lamna LIBS
#
lamna_LIBS += \
-L$${LAMNA_LIB}/lib$${LAMNA_NAME} \
-l$${LAMNA_NAME} \

########################################################################
# vedere

# vedere INCLUDEPATH
#
vedere_INCLUDEPATH += \

# vedere DEFINES
#
vedere_DEFINES += \

# vedere LIBS
#
vedere_LIBS += \
$${lamna_LIBS} \
$${xosnadir_LIBS} \
$${build_vedere_LIBS} \
-lpthread \
-ldl \

contains(VEDERE_OS,linux) {
vedere_LIBS += \
-lrt
} else {
}

contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
########################################################################
# vedere libpgm INCLUDEPATH
#
vedere_libpgm_INCLUDEPATH += \
${HOME}/build/apertus/include \

# vedere libpgm DEFINES
#
vedere_libpgm_DEFINES += \

# vedere libpgm FRAMEWORKS
#
vedere_libpgm_FRAMEWORKS += \

# vedere libpgm LIBS
#
vedere_libpgm_LIBS += \
-L${HOME}/build/apertus/lib \
-lpgm \

contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
########################################################################
# vedere libpng INCLUDEPATH
#
vedere_libpng_INCLUDEPATH += \
${HOME}/build/libpng/include \

# vedere libpng DEFINES
#
vedere_libpng_DEFINES += \

# vedere libpng FRAMEWORKS
#
vedere_libpng_FRAMEWORKS += \

# vedere libpng LIBS
#
vedere_libpng_LIBS += \
-L${HOME}/build/libpng/lib \
-lpng \

contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
########################################################################
# vedere libjpeg INCLUDEPATH
#
vedere_libjpeg_INCLUDEPATH += \
${HOME}/build/jpeg/include \

# vedere libjpeg DEFINES
#
vedere_libjpeg_DEFINES += \

# vedere libjpeg FRAMEWORKS
#
vedere_libjpeg_FRAMEWORKS += \

# vedere libjpeg LIBS
#
vedere_libjpeg_LIBS += \
-L${HOME}/build/jpeg/lib \
-ljpeg \

contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
########################################################################
# vedere libtiff INCLUDEPATH
#
vedere_libtiff_INCLUDEPATH += \
${HOME}/build/tiff/include \

# vedere libtiff DEFINES
#
vedere_libtiff_DEFINES += \

# vedere libtiff FRAMEWORKS
#
vedere_libtiff_FRAMEWORKS += \

# vedere libtiff LIBS
#
vedere_libtiff_LIBS += \
-L${HOME}/build/tiff/lib \
-ltiff \

contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
########################################################################
# vedere libraw INCLUDEPATH
#
vedere_libraw_INCLUDEPATH += \
${HOME}/build/LibRaw/include \

# vedere libraw DEFINES
#
vedere_libraw_DEFINES += \

# vedere libraw FRAMEWORKS
#
vedere_libraw_FRAMEWORKS += \

# vedere libraw LIBS
#
vedere_libraw_LIBS += \
-L${HOME}/build/LibRaw/lib \
-lraw_r \

contains(VEDERE_OS,linux) {
vedere_libraw_LIBS += \
-lgomp
} else {
} # contains(VEDERE_OS,linux)

contains(VEDERE_OS,linux) {
} else {
########################################################################
# vedere cocoa INCLUDEPATH
#
vedere_cocoa_INCLUDEPATH += \

# vedere cocoa DEFINES
#
vedere_cocoa_DEFINES += \

# vedere cocoa FRAMEWORKS
#
vedere_cocoa_FRAMEWORKS += \
-framework AppKit \
-framework CoreFoundation \
-framework Foundation \

# vedere cocoa LIBS
#
vedere_cocoa_LIBS += \

} # contains(VEDERE_OS,linux)

contains(VEDERE_OS,linux) {
} else {
########################################################################
# vedere qt INCLUDEPATH
#
vedere_qt_INCLUDEPATH += \

# vedere qt DEFINES
#
vedere_qt_DEFINES += \

# vedere qt FRAMEWORKS
#
lessThan(QT_MAJOR_VERSION, 5) {
vedere_qt_FRAMEWORKS += -framework QtGui
} else {
vedere_qt_FRAMEWORKS += -framework QtWidgets
}

# vedere qt LIBS
#
vedere_qt_LIBS += \

} # contains(VEDERE_OS,linux)

contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
########################################################################
# vedere gtk INCLUDEPATH
#
vedere_gtk_INCLUDEPATH += \
$${build_gtk_INCLUDEPATH}

# vedere gtk DEFINES
#
vedere_gtk_DEFINES += \
$${build_gtk_DEFINES}

# vedere gtk FRAMEWORKS
#
vedere_gtk_FRAMEWORKS += \
$${build_gtk_FRAMEWORKS}

# vedere gtk LIBS
#
vedere_gtk_LIBS += \
$${build_gtk_LIBS}

