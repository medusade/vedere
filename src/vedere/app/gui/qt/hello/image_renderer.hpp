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
///   File: image_renderer.hpp
///
/// Author: $author$
///   Date: 11/10/2015
///////////////////////////////////////////////////////////////////////
#ifndef _VEDERE_APP_GUI_QT_HELLO_IMAGE_RENDERER_HPP
#define _VEDERE_APP_GUI_QT_HELLO_IMAGE_RENDERER_HPP

#include "vedere/gui/qt/gui.hpp"
#include "vedere/app/gui/hello/renderer.hpp"

namespace vedere {
namespace app {
namespace gui {
namespace qt {
namespace hello {

typedef gui::hello::image_renderer image_renderer_implements;
typedef gui::hello::image_renderer_extend image_renderer_extends;
///////////////////////////////////////////////////////////////////////
///  Class: image_renderer
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS image_renderer
: virtual public image_renderer_implements, public image_renderer_extends {
public:
    typedef image_renderer_implements Implements;
    typedef image_renderer_extends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    image_renderer(QWidget* widget = 0): widget_(widget) {
    }
    virtual ~image_renderer() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool init(QWidget* widget) {
        widget_ = widget;
        return true;
    }
    virtual bool finish() {
        widget_ = 0;
        return true;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool render
    (const void* image, size_t image_width, size_t image_height,
     const void* in_image, size_t in_image_width, size_t in_image_height) {
        graphic::size_t size(image_width, image_height),
                        to_size(width_, height_);
        graphic::rectangle_t r(size, to_size);

        if ((render
             (image, image_width,image_height,
              width_,height_, r.origin.x,r.origin.y, image_format(),
              Qt::KeepAspectRatio, transformation_mode()))) {

            if ((width_ >= in_min_width_) && (height_ >= in_min_height_)) {
                int x = r.origin.x + r.size.width - in_offset_x_;
                int y = r.origin.y + r.size.height - in_offset_y_;
                int width = (r.size.width*in_ratio_to_)/in_ratio_;
                int height = (r.size.height*in_ratio_to_)/in_ratio_;
                graphic::size_t in_size(in_image_width, in_image_height),
                                to_in_size(width, height);
                graphic::rectangle_t in_r(in_size, to_in_size);

                if ((render
                     (in_image, in_image_width,in_image_height,
                      in_r.size.width,in_r.size.height,
                      x-in_r.size.width,y-in_r.size.height, image_format(),
                      Qt::KeepAspectRatio, transformation_mode()))) {
                    return true;
                }
            }
            return true;
        }
        return false;
    }
    virtual bool render
    (const void* image, size_t image_width, size_t image_height) {
        graphic::size_t size(image_width, image_height),
                        to_size(width_, height_);
        graphic::rectangle_t r(size, to_size);

        if ((render
             (image, image_width,image_height,
              width_,height_, r.origin.x,r.origin.y, image_format(),
              Qt::KeepAspectRatio, transformation_mode()))) {
            return true;
        }
        return false;
    }
    virtual bool render_stretched
    (const void* image, size_t image_width, size_t image_height) {
        if ((render
             (image, image_width,image_height,
              width_,height_, 0,0, image_format(),
              Qt::IgnoreAspectRatio, transformation_mode()))) {
            return true;
        }
        return false;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool render
    (const void* image, size_t image_width, size_t image_height,
     size_t width, size_t height, size_t x, size_t y, QImage::Format image_format,
     Qt::AspectRatioMode aspectRatioMode, Qt::TransformationMode transformationMode) {
        if ((widget_) && (image)) {
            QPainter qPainter(widget_);
            QImage qImage
            ((const unsigned char*)(image),
             image_width, image_height, image_format);
            qPainter.drawImage
            (x,y, qImage.scaled(width, height, aspectRatioMode, transformationMode));
            return true;
        }
        return false;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual QImage::Format image_format() const {
        return QImage::Format_ARGB32;
    }
    virtual Qt::TransformationMode transformation_mode() const {
#if defined(MACOSX)
        return Qt::FastTransformation;
#else // defined(MACOSX)
        return Qt::SmoothTransformation;
#endif // defined(MACOSX)
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    QWidget* widget_;
};

} // namespace hello
} // namespace qt 
} // namespace gui 
} // namespace app 
} // namespace vedere 

#endif // _VEDERE_APP_GUI_QT_HELLO_IMAGE_RENDERER_HPP 
