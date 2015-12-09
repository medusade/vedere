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
///   File: renderer.hpp
///
/// Author: $author$
///   Date: 10/22/2015
///////////////////////////////////////////////////////////////////////
#ifndef _VEDERE_APP_GUI_HELLO_RENDERER_HPP
#define _VEDERE_APP_GUI_HELLO_RENDERER_HPP

#include "vedere/base/base.hpp"
#include "vedere/graphic/rectangle.hpp"

#define VEDERE_APP_GUI_HELLO_RENDERER_IN_MIN_WIDTH  100
#define VEDERE_APP_GUI_HELLO_RENDERER_IN_MIN_HEIGHT 100
#define VEDERE_APP_GUI_HELLO_RENDERER_IN_OFFSET_X   10
#define VEDERE_APP_GUI_HELLO_RENDERER_IN_OFFSET_Y   10
#define VEDERE_APP_GUI_HELLO_RENDERER_IN_RATIO      4
#define VEDERE_APP_GUI_HELLO_RENDERER_IN_RATIO_TO   1

namespace vedere {
namespace app {
namespace gui {
namespace hello {
namespace image {

typedef int format;
typedef implement_base renderer_implements;
///////////////////////////////////////////////////////////////////////
///  Class: renderert
///////////////////////////////////////////////////////////////////////
template
<typename TFormat = format, class TImplements = renderer_implements>

class _EXPORT_CLASS renderert: virtual public TImplements {
public:
    typedef TImplements Implements;
    typedef TFormat format_t;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool initialize() {
        return true;
    }
    virtual bool realize() {
        return true;
    }
    virtual bool resize(size_t width, size_t height) {
        return true;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool render
    (const void* image, size_t image_width, size_t image_height,
     const void* in_image, size_t in_image_width, size_t in_image_height) {
     return false;
    }
    virtual bool render
    (const void* image, size_t image_width, size_t image_height) {
     return false;
    }
    virtual bool render_stretched
    (const void* image, size_t image_width, size_t image_height) {
     return false;
    }
    virtual bool render_raw
    (const void* image, size_t image_width, size_t image_height) {
     return false;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual format_t format() const {
        return 0;
    }
    virtual bool transform_smooth(bool on = true) {
        return false;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};
typedef renderert<> renderer;

typedef renderer renderer_extend_implements;
typedef base renderer_extend_extends;
///////////////////////////////////////////////////////////////////////
///  Class: renderer_extendt
///////////////////////////////////////////////////////////////////////
template
<typename TFormat = format,
 class TImplements = renderer_extend_implements,
 class TExtends = renderer_extend_extends>

class _EXPORT_CLASS renderer_extendt: virtual public TImplements, public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    typedef TFormat format_t;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    renderer_extendt()
    : width_(0), height_(0),
      in_min_width_(VEDERE_APP_GUI_HELLO_RENDERER_IN_MIN_WIDTH),
      in_min_height_(VEDERE_APP_GUI_HELLO_RENDERER_IN_MIN_HEIGHT),
      in_offset_x_(VEDERE_APP_GUI_HELLO_RENDERER_IN_OFFSET_X),
      in_offset_y_(VEDERE_APP_GUI_HELLO_RENDERER_IN_OFFSET_Y),
      in_ratio_(VEDERE_APP_GUI_HELLO_RENDERER_IN_RATIO),
      in_ratio_to_(VEDERE_APP_GUI_HELLO_RENDERER_IN_RATIO_TO) {
    }
    virtual ~renderer_extendt() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool resize(size_t width, size_t height) {
        width_ = width;
        height_ = height;
        return true;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    size_t width_, height_,
           in_min_width_, in_min_height_,
           in_offset_x_, in_offset_y_,
           in_ratio_, in_ratio_to_;
};
typedef renderer_extendt<> renderer_extend;

} // namespace image

typedef image::format image_format;
typedef image::renderer image_renderer;
typedef image::renderer_extend image_renderer_extend;
typedef implement_base renderer_implements;
typedef base renderer_extends;
///////////////////////////////////////////////////////////////////////
///  Class: renderert
///////////////////////////////////////////////////////////////////////
template
<typename TImageFormat = image_format, class TImageRenderer  = image_renderer,
 class TImplements = renderer_implements, class TExtends = renderer_extends>

class _EXPORT_CLASS renderert: virtual public TImplements, public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    typedef renderert Derives;
    typedef TImageFormat image_format_t;
    typedef TImageRenderer image_renderer_t;
    typedef bool (Derives::*render_t)();
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    renderert()
    : render_(0), image_(0), image_size_(0),
      image_width_(0), image_height_(0),
      image_format_(0) {
    }
    virtual ~renderert() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool render() {
        if ((render_) && (render_ != &Derives::render)) {
            return (this->*render_)();
        } else {
            image_renderer_t* renderer = 0;
            if ((image_) && (renderer = image_renderer(image_format()))) {
                if ((renderer->render(image_, image_width_, image_height_))) {
                    return renderer->realize();
                }
            }
        }
        return false;
    }
    virtual bool render_in() {
        image_renderer_t* renderer = 0;
        if ((image_) && (renderer = image_renderer(image_format()))) {
            if ((renderer->render
                 (image_, image_width_, image_height_,
                  image_, image_width_, image_height_))) {
                return renderer->realize();
            }
        }
        return false;
    }
    virtual bool render_stretched() {
        image_renderer_t* renderer = 0;
        if ((image_) && (renderer = image_renderer(image_format()))) {
            if ((renderer->render_stretched(image_, image_width_, image_height_))) {
                return renderer->realize();
            }
        }
        return false;
    }
    virtual bool render_raw() {
        image_renderer_t* renderer = 0;
        if ((image_) && (renderer = image_renderer(image_format()))) {
            if ((renderer->render_raw(image_, image_width_, image_height_))) {
                return renderer->realize();
            }
        }
        return false;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool transform_smooth(bool on = true) {
        image_renderer_t* renderer = 0;
        if ((renderer = image_renderer(image_format()))) {
            return renderer->transform_smooth(on);
        }
        return false;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void switch_render() {
        if ((render_ != &Derives::render_stretched)) {
            if ((render_ != &Derives::render_in)) {
                if ((render_ != &Derives::render_raw)) {
                    render_ = &Derives::render_in;
                } else {
                    render_ = &Derives::render;
                }
            } else {
                render_ = &Derives::render_stretched;
            }
        } else {
            render_ = &Derives::render_raw;
        }
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void* load_image
    (byte_reader& reader, size_t size, size_t width, size_t height) {
        const image_format_t& format = image_format();
        return load_image(reader, size, width, height, format);
    }
    virtual void* load_image
    (byte_reader& reader, size_t size,
     size_t width, size_t height, const image_format_t& format) {
        free_image();
        if (0 < (size)) {
            byte_t* bytes = 0;
            if ((bytes = new byte_t[size])) {
                if (size == (reader.read(bytes, size))) {
                    image_ = bytes;
                    image_size_ = size;
                    image_width_ = width;
                    image_height_ = height;
                    if (&format != &image_format_) {
                        image_format_ = format;
                    }
                    return image_;
                }
                delete[] bytes;
            }
        }
        return 0;
    }
    virtual void* set_image
    (byte_t* bytes, size_t size, size_t width, size_t height) {
        const image_format_t& format = image_format();
        return set_image(bytes, size, width, height, format);
    }
    virtual void* set_image
    (byte_t* bytes, size_t size,
     size_t width, size_t height, const image_format_t& format) {
        free_image();
        if ((bytes) && (0 < (size))) {
            image_ = bytes;
            image_size_ = size;
            image_width_ = width;
            image_height_ = height;
            if (&format != &image_format_) {
                image_format_ = format;
            }
            return image_;
        }
        return 0;
    }
    virtual void free_image() {
        byte_t* bytes = 0;
        if ((bytes = ((byte_t*)image_))) {
            delete[] bytes;
            image_ = 0;
            image_size_ = image_width_ = image_height_ = 0;
        }
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual image_renderer_t* image_renderer(const image_format_t& format) const {
        return 0;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual const image_format_t& image_format() const {
        return image_format_;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    render_t render_;
    void* image_;
    size_t image_size_, image_width_, image_height_;
    image_format_t image_format_;
};
typedef renderert<> renderer;

} // namespace hello 
} // namespace gui 
} // namespace app 
} // namespace vedere 

#endif // _VEDERE_APP_GUI_HELLO_RENDERER_HPP 
