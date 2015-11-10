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
///   File: image_renderer.hh
///
/// Author: $author$
///   Date: 11/7/2015
///////////////////////////////////////////////////////////////////////
#ifndef _VEDERE_APP_GUI_COCOA_HELLO_IMAGE_RENDERER_HH
#define _VEDERE_APP_GUI_COCOA_HELLO_IMAGE_RENDERER_HH

#include "vedere/gui/cocoa/iCocoa.hh"
#include "vedere/app/gui/hello/renderer.hpp"

namespace vedere {
namespace app {
namespace gui {
namespace cocoa {
namespace hello {

enum image_format_t {
    IMAGE_FORMAT_ABGR32
};
enum aspect_ratio_mode_t {
    ASPECT_RATIO_MODE_IGNORE,
    ASPECT_RATIO_MODE_KEEP
};

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
    image_renderer(iCGContextRef context = NULL): context_(context) {
    }
    virtual ~image_renderer() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool init(iCGContextRef context, size_t width, size_t height) {
        context_ = context;
        width_ = width;
        height_ = height;
        return true;
    }
    virtual bool finish() {
        context_ = NULL;
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
              r.size.width,r.size.height, r.origin.x,r.origin.y, image_format(),
              ASPECT_RATIO_MODE_IGNORE, interpolation_quality()))) {

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
                      ASPECT_RATIO_MODE_IGNORE, interpolation_quality()))) {
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
              r.size.width,r.size.height, r.origin.x,r.origin.y, image_format(),
              ASPECT_RATIO_MODE_IGNORE, interpolation_quality()))) {
            return true;
        }
        return false;
    }
    virtual bool render_stretched
    (const void* image, size_t image_width, size_t image_height) {
        if ((render
             (image, image_width,image_height,
              width_,height_, 0,0, image_format(),
              ASPECT_RATIO_MODE_IGNORE, interpolation_quality()))) {
            return true;
        }
        return false;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool render
    (const void* image, size_t image_width, size_t image_height,
     size_t width, size_t height, size_t x, size_t y, image_format_t image_format,
     aspect_ratio_mode_t aspect_ratio_mode, iCGInterpolationQuality interpolation_quality) {
        if ((context_) && (image)) {
            iCGImageRef cg_image = NULL;

            if ((cg_image = iCGImageCreateFromData
                 (image, image_width, image_height, image_format))) {
                iRect rect = iMakeRect(x,height_-y-height, width,height);
                iCGFloat x_scale = 1, y_scale = 1;

                iCGContextSaveGState(context_);
                iCGContextSetShouldAntialias(context_, false);
                iCGContextSetInterpolationQuality(context_, interpolation_quality);
                iCGContextScaleCTM(context_, x_scale,y_scale);
                iCGContextDrawImage(context_, rect, cg_image);
                iCGContextRestoreGState(context_);
                iCGImageRelease(cg_image);
                return true;
             }
        }
        return false;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual iCGImageRef iCGImageCreateFromData
    (const void* image, size_t image_width, size_t image_height,
     image_format_t image_format) const {
        switch(image_format) {
        case IMAGE_FORMAT_ABGR32:
            return iCGImageCreateFromABGR32(image, image_width, image_height);
            break;
        }
        return NULL;
    }
    virtual iCGImageRef iCGImageCreateFromABGR32
    (const void* image, size_t image_width, size_t image_height) const {
        iCGImageRef cg_image = NULL;

        if ((image) && (image_width) && (image_height)) {
            iCGColorSpaceRef color_space = NULL;

            if ((color_space = iCGColorSpaceCreateDeviceRGB())) {
                iCGDataProviderRef data_provider = NULL;

                if ((data_provider = iCGDataProviderCreateWithData
                     (NULL, image, image_width * image_height * 4, NULL))) {

                    cg_image = iCGImageCreate
                    (image_width, image_height, 8,32, image_width*4,
                     color_space, kCGImageAlphaNoneSkipLast, data_provider,
                     NULL, false, kCGRenderingIntentDefault);

                    iCGDataProviderRelease(data_provider);
                }
                iCGColorSpaceRelease(color_space);
            }
        }
        return cg_image;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual image_format_t image_format() const {
        return IMAGE_FORMAT_ABGR32;
    }
    virtual iCGInterpolationQuality interpolation_quality() const {
        return kCGInterpolationDefault;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
 protected:
    iCGContextRef context_;
    /*virtual bool OnPaintImage
    (const uint8* image, int width, int height, bool is_local)
    {
        bool handled = false;
        if ((handled = (m_onPaintHandled = (m_cg != 0))))
        {
            CGContextRef cgContext = m_cg->m_cgContext;
            CGContextSaveGState(cgContext);
            int winWidth = m_cg->m_width;
            int winHeight = m_cg->m_cheight;

            if ((1 < winWidth) && (1 < winHeight))
            {
                CGContextSetShouldAntialias(cgContext, false);
                CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();

                CGImageRef cgImage = CGImageCreate
                 (width, height, 8, 32, 4*width, colorSpace,
                  kCGImageAlphaNoneSkipLast,
                  CGDataProviderCreateWithData
                  (NULL, image, width*height*4, NULL),
                  NULL, false, kCGRenderingIntentDefault);

                if ((cgImage))
                {
                    CGContextSetInterpolationQuality(cgContext, kCGInterpolationNone);
                    CGContextTranslateCTM(cgContext, 0, winHeight);
                    CGContextScaleCTM(cgContext, 1, -1);
                    CGRect rect = { {0,0}, {width,height}};
                    CGContextDrawImage(cgContext, rect, cgImage);
                    CGImageRelease(cgImage);
                }
                CGColorSpaceRelease(colorSpace);
            }
            CGContextRestoreGState(cgContext);
        }
        return handled;
    }*/
};

} // namespace hello 
} // namespace cocoa 
} // namespace gui 
} // namespace app 
} // namespace vedere 

#endif // _VEDERE_APP_GUI_COCOA_HELLO_IMAGE_RENDERER_HH 
