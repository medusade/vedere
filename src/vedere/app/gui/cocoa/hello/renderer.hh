///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2015 $organization$
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
///   File: renderer.hh
///
/// Author: $author$
///   Date: 11/8/2015
///////////////////////////////////////////////////////////////////////
#ifndef _VEDERE_APP_GUI_COCOA_HELLO_RENDERER_HH
#define _VEDERE_APP_GUI_COCOA_HELLO_RENDERER_HH

#include "vedere/app/gui/cocoa/hello/image_renderer.hh"
#include "vedere/io/logger.hpp"

namespace vedere {
namespace app {
namespace gui {
namespace cocoa {
namespace hello {

typedef gui::hello::renderer_implements renderer_implements;
typedef gui::hello::renderer renderer_extends;
///////////////////////////////////////////////////////////////////////
///  Class: renderer
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS renderer
: virtual public renderer_implements, public renderer_extends {
public:
    typedef renderer_implements Implements;
    typedef renderer_extends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    renderer()
    : image_width_option_(0), image_height_option_(0), image_depth_option_(0) {
    }
    virtual ~renderer() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool init(iCGContextRef context, size_t width, size_t height) {
        return image_renderer_.init(context, width,height);
    }
    virtual bool finish() {
        return image_renderer_.finish();
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool resize(size_t width, size_t height) {
        return image_renderer_.resize(width, height);
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual image_renderer_t* image_renderer(const image_format_t& format) const {
        if (!(format != image_renderer_.format())) {
            return ((image_renderer_t*)&image_renderer_);
        }
        return 0;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void* load_image_file() {
        size_t image_pixel_size = ((image_depth_option_+7)/8),
               image_size = (image_width_option_*image_height_option_*image_pixel_size);
        void* image = 0;
        FILE* file = 0;
        if ((file = fopen(image_file_option_.chars(), "rb"))) {
            xos::io::read::byte_file f(file);
            if ((image = load_image
                (f, image_size, image_width_option_, image_height_option_))) {
            }
            fclose(file);
        } else {
            VEDERE_LOG_MESSAGE_ERROR("...failed on fopen(" << image_file_option_ << ", \"rb\")");
        }
        return image;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual const char_t* set_image_width_option(const char_t* to) {
        if ((to) && (to[0])) {
            VEDERE_LOG_MESSAGE_DEBUG("image_width_option = \"" << to << "\"...");
            image_width_option_ = chars_t::to_unsigned(to);
        }
        return to;
    }
    ///////////////////////////////////////////////////////////////////////
    virtual const char_t* set_image_height_option(const char_t* to) {
        if ((to) && (to[0])) {
            VEDERE_LOG_MESSAGE_DEBUG("image_height_option = \"" << to << "\"...");
            image_height_option_ = chars_t::to_unsigned(to);
        }
        return to;
    }
    ///////////////////////////////////////////////////////////////////////
    virtual const char_t* set_image_depth_option(const char_t* to) {
        if ((to) && (to[0])) {
            VEDERE_LOG_MESSAGE_DEBUG("image_depth_option = \"" << to << "\"...");
            image_depth_option_ = chars_t::to_unsigned(to);
        }
        return to;
    }
    ///////////////////////////////////////////////////////////////////////
    virtual const char_t* set_image_file_option(const char_t* to) {
        if ((to) && (to[0])) {
            VEDERE_LOG_MESSAGE_DEBUG("image_file_option = \"" << to << "\"...");
            image_file_option_.assign(to);
        }
        return to;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    size_t image_width_option_, image_height_option_, image_depth_option_;
    string image_file_option_;
    hello::image_renderer image_renderer_;
};

} // namespace hello
} // namespace cocoa 
} // namespace gui 
} // namespace app 
} // namespace vedere 

#endif // _VEDERE_APP_GUI_COCOA_HELLO_RENDERER_HH 
