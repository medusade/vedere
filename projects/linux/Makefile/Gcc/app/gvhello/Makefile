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
# Linux Gcc Makefile for vedere gvhello Executable
########################################################################
PKG = ../../../../../..

BMK = build/Makefile/Gcc
MAK = projects/Makefile/Gcc
PRJ = projects/linux/Makefile/Gcc
SRC = src

include $(PKG)/$(MAK)/Makedefines
include $(PKG)/$(PRJ)/Makedefines
include $(PKG)/$(MAK)/Makefile
include $(PKG)/$(BMK)/Makefile
include $(PKG)/$(MAK)/lib/libvedere/Makefile
include $(PKG)/$(MAK)/app/gvhello/Makefile

#
# target
#
EXETARGET = gvhello

#
# user defines
#
USRDEFINES = \
${libvedere_USRDEFINES} \
${build_gtk_USRDEFINES} \

#
# user includes
#
USRINCLUDES = \
${libvedere_USRINCLUDES} \
${build_libjpeg_USRINCLUDES} \
${build_libpng_USRINCLUDES} \
${build_libraw_USRINCLUDES} \
${build_gtk_USRINCLUDES} \

#
# user libdirs
#
USRLIBDIRS = \
${libvedere_USRLIBDIRS} \
${build_libjpeg_USRLIBDIRS} \
${build_libpng_USRLIBDIRS} \
${build_libraw_USRLIBDIRS} \
${build_gtk_USRLIBDIRS} \

#
# user c++ flags
#
USRCXXFLAGS = \
${libvedere_USRCXXFLAGS} \
${build_gtk_USRCXXFLAGS} \

#
# user c flags
#
USRCFLAGS = \

#
# user ld flags
#
USRLDFLAGS = \

#
# Executable C sources
#
EXE_C_SOURCES = \

#
# Executable C++ .cc sources
#
EXE_CC_SOURCES = \

#
# Executable C++ .cxx sources
#
EXE_CXX_SOURCES = \

#
# Executable C++ .cpp sources
#
EXE_CPP_SOURCES = \
${gvhello_EXE_CPP_SOURCES} \

#
# Executable Objective C .m sources
#
EXE_M_SOURCES = \

#
# Executable Objective C++ .mm sources
#
EXE_MM_SOURCES = \

#
# Executable libs
#
#LIBS = \
#-lsomelib
#
LIBS = \
${libvedere_LIBS} \
${build_libjpeg_LIBS} \
${build_libpng_LIBS} \
${build_libraw_LIBS} \
${build_gtk_LIBS} \

#
# Executable depends
#
#EXEDEP = \
#$(PKG)/$(BLD)/libsomelib \
#
EXEDEP = \

#
# Executable depend dirs
#
#EXEDEP_DIRS = \
#../libsomelib
#
EXEDEP_DIRS = \

include $(PKG)/$(PRJ)/Makerules

#
# Executable depend rules
#
#$(PKG)/$(BLD)/libsomelib.a:
#	@(echo Building libsomelib.a ...;\
#	  pushd ../libsomelib;\
#	  ((make) || (exit 1));\
#	  popd)
#

