///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2016 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: main_opt.hpp
///
/// Author: $author$
///   Date: 7/17/2016
///////////////////////////////////////////////////////////////////////
#ifndef _VEDERE_GRAPHIC_IMAGE_FORMAT_VIEWER_MAIN_OPT_HPP
#define _VEDERE_GRAPHIC_IMAGE_FORMAT_VIEWER_MAIN_OPT_HPP

#include "vedere/console/main_opt.hpp"

namespace vedere {
namespace graphic {
namespace image {
namespace format {
namespace viewer {

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPT "image-transform"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTARG_REQUIRED VEDERE_MAIN_OPT_ARGUMENT_REQUIRED
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTARG_RESULT 0
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_FAST_OPTARG_C "f"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_FAST_OPTARG_S "fast"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_SMOOTH_OPTARG_C "s"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_SMOOTH_OPTARG_S "smooth"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTARG \
    "{" "(" VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_FAST_OPTARG_C ")" \
            VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_FAST_OPTARG_S " | " \
        "(" VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_SMOOTH_OPTARG_C ")" \
            VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_SMOOTH_OPTARG_S "}"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTUSE ""
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTVAL_S "m:"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTVAL_C 'm'
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTION \
   {VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPT, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTARG_REQUIRED, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTARG_RESULT, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTVAL_C}, \

#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPT "image-width"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTARG_REQUIRED VEDERE_MAIN_OPT_ARGUMENT_REQUIRED
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTARG_RESULT 0
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTARG "number"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTUSE "Image width in pixels"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTVAL_S "x:"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTVAL_C 'x'
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTION \
   {VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPT, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTARG_REQUIRED, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTARG_RESULT, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTVAL_C}, \

#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPT "image-height"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTARG_REQUIRED VEDERE_MAIN_OPT_ARGUMENT_REQUIRED
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTARG_RESULT 0
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTARG "number"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTUSE "Image height in pixels"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTVAL_S "y:"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTVAL_C 'y'
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTION \
   {VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPT, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTARG_REQUIRED, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTARG_RESULT, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTVAL_C}, \

#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPT "image-depth"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTARG_REQUIRED VEDERE_MAIN_OPT_ARGUMENT_REQUIRED
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTARG_RESULT 0
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTARG "number"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTUSE "Image depth in bits"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTVAL_S "z:"
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTVAL_C 'z'
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTION \
   {VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPT, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTARG_REQUIRED, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTARG_RESULT, \
    VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTVAL_C}, \

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
#define VEDERE_APP_GUI_HELLO_MAIN_OPTIONS_CHARS \
   VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTVAL_S \
   VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTVAL_S \
   VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTVAL_S \
   VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTVAL_S \
   VEDERE_MAIN_OPTIONS_CHARS

#define VEDERE_APP_GUI_HELLO_MAIN_OPTIONS_OPTIONS \
   VEDERE_APP_GUI_HELLO_MAIN_IMAGE_TRANSFORM_OPTION \
   VEDERE_APP_GUI_HELLO_MAIN_IMAGE_WIDTH_OPTION \
   VEDERE_APP_GUI_HELLO_MAIN_IMAGE_HEIGHT_OPTION \
   VEDERE_APP_GUI_HELLO_MAIN_IMAGE_DEPTH_OPTION \
   VEDERE_MAIN_OPTIONS_OPTIONS

///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
#define VEDERE_APP_GUI_HELLO_MAIN_ARGS "[imagefile]"
#define VEDERE_APP_GUI_HELLO_MAIN_ARGV "[imagefile] Image filename",
#define VEDERE_APP_GUI_HELLO_MAIN_IMAGE_FILE_ARG 0

} // namespace viewer
} // namespace format 
} // namespace image 
} // namespace graphic 
} // namespace vedere 

#endif // _VEDERE_GRAPHIC_IMAGE_FORMAT_VIEWER_MAIN_OPT_HPP 