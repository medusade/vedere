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
#   Date: 11/20/2018, 12/26/2020
#
# Os specific QtCreator .pri file for vedere
########################################################################
UNAME = $$system(uname)

contains(UNAME,Darwin) {
VEDERE_OS = macosx
} else {
contains(UNAME,Linux) {
VEDERE_OS = linux
} else {
VEDERE_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,VEDERE_OS) {
VEDERE_BUILD = $${VEDERE_OS}
} else {
VEDERE_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,VEDERE_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(VEDERE_OS,macosx) {
QMAKE_CXXFLAGS += \
-Wno-reserved-id-macro \
-Wno-unused-parameter \
-Wno-zero-as-null-pointer-constant \
-Wno-dangling-else 
} else {
contains(VEDERE_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(VEDERE_OS,windows) {
} else {
} # contains(VEDERE_OS,windows)
} # contains(VEDERE_OS,linux)
} # contains(VEDERE_OS,macosx)

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
-L$${NADIR_LIB}/lib$${NADIR_LIBRARY_NAME} \
-l$${NADIR_LIBRARY_NAME} \

# xosnadir LIBS
#
xosnadir_LIBS += \
-L$${NADIR_LIB}/libxos$${NADIR_LIBRARY_NAME} \
-lxos$${NADIR_LIBRARY_NAME} \

# nadir SOURCE_LIBS
#
nadir_SOURCE_LIBS += \
-L$${NADIR_LIB}/lib$${NADIR_SOURCE_LIBRARY_NAME} \
-l$${NADIR_SOURCE_LIBRARY_NAME} \

# xosnadir SOURCE_LIBS
#
xosnadir_SOURCE_LIBS += \
-L$${NADIR_LIB}/libxos$${NADIR_SOURCE_LIBRARY_NAME} \
-lxos$${NADIR_SOURCE_LIBRARY_NAME} \

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

########################################################################
# vedere giflib
#
contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
# vedere giflib INCLUDEPATH
#
vedere_giflib_INCLUDEPATH += \
$${BUILD_HOME}/build/giflib/include \

# vedere giflib DEFINES
#
vedere_giflib_DEFINES += \

# vedere giflib FRAMEWORKS
#
vedere_giflib_FRAMEWORKS += \

# vedere giflib LIBS
#
vedere_giflib_LIBS += \
-L$${BUILD_HOME}/build/giflib/lib \
-lgif \

########################################################################
# vedere libpgm
#
contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
# vedere libpgm INCLUDEPATH
#
vedere_libpgm_INCLUDEPATH += \
$${BUILD_HOME}/build/apertus/include \

# vedere libpgm DEFINES
#
vedere_libpgm_DEFINES += \

# vedere libpgm FRAMEWORKS
#
vedere_libpgm_FRAMEWORKS += \

# vedere libpgm LIBS
#
vedere_libpgm_LIBS += \
-L$${BUILD_HOME}/build/apertus/lib \
-lpgm \

########################################################################
# vedere libpng
#
contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
# vedere libpng INCLUDEPATH
#
vedere_libpng_INCLUDEPATH += \
$${BUILD_HOME}/build/libpng/include \

# vedere libpng DEFINES
#
vedere_libpng_DEFINES += \

# vedere libpng FRAMEWORKS
#
vedere_libpng_FRAMEWORKS += \

# vedere libpng LIBS
#
vedere_libpng_LIBS += \
-L$${BUILD_HOME}/build/libpng/lib \
-lpng \

########################################################################
# vedere libjpeg
#
contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
# vedere libjpeg INCLUDEPATH
#
vedere_libjpeg_INCLUDEPATH += \
$${BUILD_HOME}/build/jpeg/include \

# vedere libjpeg DEFINES
#
vedere_libjpeg_DEFINES += \

# vedere libjpeg FRAMEWORKS
#
vedere_libjpeg_FRAMEWORKS += \

# vedere libjpeg LIBS
#
vedere_libjpeg_LIBS += \
-L$${BUILD_HOME}/build/jpeg/lib \
-ljpeg \

########################################################################
# vedere libtiff
#
contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
# vedere libtiff INCLUDEPATH
#
vedere_libtiff_INCLUDEPATH += \
$${BUILD_HOME}/build/tiff/include \

# vedere libtiff DEFINES
#
vedere_libtiff_DEFINES += \

# vedere libtiff FRAMEWORKS
#
vedere_libtiff_FRAMEWORKS += \

# vedere libtiff LIBS
#
vedere_libtiff_LIBS += \
-L$${BUILD_HOME}/build/tiff/lib \
-ltiff \

########################################################################
# vedere libraw
#
contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
# vedere libraw INCLUDEPATH
#
vedere_libraw_INCLUDEPATH += \
$${BUILD_HOME}/build/LibRaw/include \

# vedere libraw DEFINES
#
vedere_libraw_DEFINES += \

# vedere libraw FRAMEWORKS
#
vedere_libraw_FRAMEWORKS += \

# vedere libraw LIBS
#
vedere_libraw_LIBS += \
-L$${BUILD_HOME}/build/LibRaw/lib \
-lraw_r \

contains(VEDERE_OS,linux) {
vedere_libraw_LIBS += \
-lgomp
} else {
} # contains(VEDERE_OS,linux)

########################################################################
# vedere zlib
#
# vedere zlib INCLUDEPATH
#
vedere_zlib_INCLUDEPATH += \

# vedere zlib DEFINES
#
vedere_zlib_DEFINES += \

# vedere zlib FRAMEWORKS
#
vedere_zlib_FRAMEWORKS += \

# vedere zlib LIBS
#
vedere_zlib_LIBS += \
-L$${BUILD_HOME}/build/zlib/lib \
-lz \

########################################################################
# vedere cocoa
#
contains(VEDERE_OS,linux) {
} else {
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

########################################################################
# vedere qt
#
contains(VEDERE_OS,linux) {
} else {
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

########################################################################
# vedere gtk
#
contains(VEDERE_OS,linux) {
} else {
} # contains(VEDERE_OS,linux)
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

########################################################################
# vedere fl
#
contains(VEDERE_OS,macosx) {
vedere_fl_INCLUDEPATH += \
$${FL_BUILD_HOME}/build/fltk/include \

# vedere fl DEFINES
#
vedere_fl_DEFINES += \

# vedere fl FRAMEWORKS
#
vedere_fl_FRAMEWORKS += \
-framework Cocoa \

# vedere fl LIBS
#
vedere_fl_LIBS += \
-L$${FL_BUILD_HOME}/build/fltk/lib \
-lfltk_forms \
-lfltk_gl \
-lfltk_images \
-lfltk_jpeg \
-lfltk_png \
-lfltk \

} else {
} # contains(VEDERE_OS,macosx)
# vedere fl INCLUDEPATH
#
vedere_fl_INCLUDEPATH += \
$${build_fl_INCLUDEPATH}

# vedere fl DEFINES
#
vedere_fl_DEFINES += \
$${build_fl_DEFINES}

# vedere fl FRAMEWORKS
#
vedere_fl_FRAMEWORKS += \
$${build_fl_FRAMEWORKS}

# vedere fl LIBS
#
vedere_fl_LIBS += \
$${build_fl_LIBS}

########################################################################
# vedere wx
#
contains(UNAME,Darwin) {
DARWIN_VERSION = $$system(sw_vers -productVersion)

WX_DARWIN_VERSION_MAJOR = 3
contains(DARWIN_VERSION,10.12.6) {
WX_DARWIN_VERSION_MINOR = 1
} else {
WX_DARWIN_VERSION_MINOR = 0
} # contains(DARWIN_VERSION,10.12.6)
WX_DARWIN_VERSION = $${WX_DARWIN_VERSION_MAJOR}.$${WX_DARWIN_VERSION_MINOR}

# vedere wx INCLUDEPATH
#
vedere_wx_INCLUDEPATH += \
$${BUILD_HOME}/build/wxwidgets/include/wx-$${WX_DARWIN_VERSION} \
$${BUILD_HOME}/build/wxwidgets/lib/wx/include/osx_cocoa-unicode-$${WX_DARWIN_VERSION}

# vedere wx DEFINES
#
vedere_wx_DEFINES += \
__WXOSX_COCOA__

# vedere wx_LIBS
#
vedere_wx_LIBS += \
-L$${BUILD_HOME}/build/wxwidgets/lib \
-lwx_osx_cocoau_core-$${WX_DARWIN_VERSION}\
-lwx_baseu-$${WX_DARWIN_VERSION} \

# vedere wx FRAMEWORKS
#
vedere_wx_FRAMEWORKS += \
-framework CoreFoundation
} else {
# vedere wx INCLUDEPATH
#
vedere_wx_INCLUDEPATH += \
$${build_wx_INCLUDEPATH}

# vedere wx DEFINES
#
vedere_wx_DEFINES += \
$${build_wx_DEFINES}

# vedere wx_LIBS
#
vedere_wx_LIBS += \
$${build_wx_LIBS}

# vedere wx FRAMEWORKS
#
vedere_wx_FRAMEWORKS += \
$${build_wx_FRAMEWORKS}
} # contains(UNAME,Darwin)
