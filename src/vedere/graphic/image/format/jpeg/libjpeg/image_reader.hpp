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
///   File: image_reader.hpp
///
/// Author: $author$
///   Date: 11/18/2015
///////////////////////////////////////////////////////////////////////
#ifndef _VEDERE_GRAPHIC_IMAGE_FORMAT_JPEG_LIBJPEG_IMAGE_READER_HPP
#define _VEDERE_GRAPHIC_IMAGE_FORMAT_JPEG_LIBJPEG_IMAGE_READER_HPP

#include "vedere/graphic/image/format/jpeg/libjpeg/reader.hpp"
#include "vedere/graphic/image/reader.hpp"

namespace vedere {
namespace graphic {
namespace image {
namespace format {
namespace jpeg {
namespace libjpeg {

typedef image::reader image_reader_implement;
typedef reader_events reader_implement;
///////////////////////////////////////////////////////////////////////
///  Class: image_readerimplement
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS image_reader_implements
: virtual public reader_implement,
  virtual public image_reader_implement {
public:
    typedef image_reader_implement Implements;
    typedef reader_implement ReaderImplements;
};
typedef base image_reader_extends;
///////////////////////////////////////////////////////////////////////
///  Class: image_readert
///////////////////////////////////////////////////////////////////////
template
<class TImplements = image_reader_implements,
 class TExtends = image_reader_extends>

class _EXPORT_CLASS image_readert
: virtual public TImplements, public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    typedef image_readert Derives;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    image_readert()
    : on_jpeg_sample_col_(0),
      bits_per_pixel_value_(0),
      pixel_value_interpretation_(pixel_value_interpretation_none) {
    }
    virtual ~image_readert() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    using Implements::Implements::read;
    virtual bool read(FILE* file) {
        if ((file)) {
            libjpeg::reader reader(this);
            if ((reader.read(file))) {
                return true;
            }
        }
        return false;
    }

protected:
    typedef bool (Derives::*on_jpeg_sample_col_t)
    (JSAMPROW samples, size_t samples_size,
     size_t samples_row, size_t samples_col,
     JDIMENSION output_height, JDIMENSION output_width,
     JDIMENSION output_components, JDIMENSION out_color_components,
     JDIMENSION actual_number_of_colors, J_COLOR_SPACE out_color_space,
     JSAMPARRAY colormap);

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool on_begin_jpeg_image
    (JDIMENSION output_height, JDIMENSION output_width,
     JDIMENSION output_components, JDIMENSION out_color_components,
     JDIMENSION actual_number_of_colors, J_COLOR_SPACE out_color_space,
     JSAMPARRAY colormap) {
        bool success = true;
        VEDERE_LOG_MESSAGE_DEBUG
        ("on_begin_jpeg_image"
         "\n(output_height = " << output_height << ", output_width = " << output_width <<
         ",\n output_components = " << output_components <<
         ", out_color_components = " << out_color_components <<
         ",\n actual_number_of_colors = " << actual_number_of_colors <<
         ", out_color_space = " << out_color_space <<
         " \"" << color_space().name(out_color_space) << "\""
         ",...)...");
        switch(out_color_space) {
        case JCS_RGB:
            if (3 != out_color_components) {
                VEDERE_LOG_ERROR("unexpected 3 != out_color_components");
                success = false;
            } else {
                if ((colormap)) {
                    if (1 != output_components) {
                        VEDERE_LOG_ERROR("unexpected 1 != output_components");
                        success = false;
                    } else {
                        on_jpeg_sample_col_ = &Derives::on_rgb_palette_jpeg_sample_col;
                        pixel_value_interpretation_ = pixel_value_interpretation_palette;
                        bits_per_pixel_value_ = (sizeof(JSAMPLE) * 8);
                    }
                } else {
                    if (3 != output_components) {
                        VEDERE_LOG_ERROR("unexpected 3 != output_components");
                        success = false;
                    } else {
                        on_jpeg_sample_col_ = &Derives::on_rgb_jpeg_sample_col;
                        pixel_value_interpretation_ = pixel_value_interpretation_rgb;
                        bits_per_pixel_value_ = (sizeof(JSAMPLE) * 8);
                    }
                }
            }
            break;
        default:
            VEDERE_LOG_ERROR("color space " << out_color_space << " \"" << color_space().name(out_color_space) << "\" not implemented");
            success = false;
            break;
        }
        if ((success)) {
            success = this->on_begin_image
            (output_width, output_height, 1, output_components,
             bits_per_pixel_value_, pixel_value_interpretation_);
        }
        return success;
    }
    virtual bool on_end_jpeg_image
    (JDIMENSION output_height, JDIMENSION output_width,
     JDIMENSION output_components, JDIMENSION out_color_components,
     JDIMENSION actual_number_of_colors, J_COLOR_SPACE out_color_space,
     JSAMPARRAY colormap) {
        bool success = true;
        VEDERE_LOG_MESSAGE_DEBUG("...on_end_jpeg_image()");
        success = this->on_end_image
        (output_width, output_height, 1, output_components,
         bits_per_pixel_value_, pixel_value_interpretation_);
        pixel_value_interpretation_ = pixel_value_interpretation_none;
        bits_per_pixel_value_ = 0;
        on_jpeg_sample_col_ = 0;
        return success;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool on_jpeg_sample_col
    (JSAMPROW samples, size_t samples_size,
     size_t samples_row, size_t samples_col,
     JDIMENSION output_height, JDIMENSION output_width,
     JDIMENSION output_components, JDIMENSION out_color_components,
     JDIMENSION actual_number_of_colors, J_COLOR_SPACE out_color_space,
     JSAMPARRAY colormap) {
        bool success = false;
        if ((on_jpeg_sample_col_)) {
            success = (this->*on_jpeg_sample_col_)
            (samples, samples_size, samples_row, samples_col,
             output_height, output_width, output_components,
             out_color_components, actual_number_of_colors,
             out_color_space, colormap);
        }
        return success;
    }
    virtual bool on_rgb_jpeg_sample_col
    (JSAMPROW samples, size_t samples_size,
     size_t samples_row, size_t samples_col,
     JDIMENSION output_height, JDIMENSION output_width,
     JDIMENSION output_components, JDIMENSION out_color_components,
     JDIMENSION actual_number_of_colors, J_COLOR_SPACE out_color_space,
     JSAMPARRAY colormap) {
        bool success = true;
        if (!(3 != samples_size)) {
            byte_t* byte = ((byte_t*)samples);
            rgba::pixel_t pixel(byte[0], byte[1], byte[2]);
            success = this->on_image_pixel
            (pixel, byte, samples_size, samples_col, samples_row, 0,
             output_width, output_height, 1, 3, 8, pixel_value_interpretation_);
        } else {
            success = false;
        }
        return success;
    }
    virtual bool on_rgb_palette_jpeg_sample_col
    (JSAMPROW samples, size_t samples_size,
     size_t samples_row, size_t samples_col,
     JDIMENSION output_height, JDIMENSION output_width,
     JDIMENSION output_components, JDIMENSION out_color_components,
     JDIMENSION actual_number_of_colors, J_COLOR_SPACE out_color_space,
     JSAMPARRAY colormap) {
        bool success = true;
        return success;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    on_jpeg_sample_col_t on_jpeg_sample_col_;
    size_t bits_per_pixel_value_;
    pixel_value_interpretation_t pixel_value_interpretation_;
};
typedef image_readert<> image_reader;

typedef image_reader_implements bgra_image_reader_implements;
typedef image_reader bgra_image_reader_extends;
///////////////////////////////////////////////////////////////////////
///  Class: bgra_image_readert
///////////////////////////////////////////////////////////////////////
template
<class TImplements = bgra_image_reader_implements,
 class TExtends = bgra_image_reader_extends>
class _EXPORT_CLASS bgra_image_readert
: virtual public TImplements, public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    bgra_image_readert()
    : image_width_(0), image_height_(0),
      image_depth_(0), image_size_(0), bytes_(0) {
    }
    virtual ~bgra_image_readert() {
        free_image();
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool on_begin_image
    (size_t image_width, size_t image_height, size_t image_planes,
     size_t values_per_pixel, size_t bits_per_value,
     pixel_value_interpretation_t pixel_value_interpretation) {
        bool success = true;

        if ((1 == image_planes) && (8 == bits_per_value)
            && ((3 == values_per_pixel) || (4 == values_per_pixel))) {
            size_t image_byte_depth = (values_per_pixel + ((4 > values_per_pixel)?(1):(0))),
                   image_size = (image_height * image_width * image_byte_depth);

            free_image();
            if ((alloc_image(image_width, image_height, image_byte_depth*8, image_size))) {
                return true;
            }
        } else {
            VEDERE_LOG_MESSAGE_ERROR("invalid image configuration values_per_pixel = " << values_per_pixel << ", bits_per_value = " << bits_per_value << "");
            success = false;
        }
        return success;
    }
    virtual bool on_end_image
    (size_t image_width, size_t image_height, size_t image_planes,
     size_t values_per_pixel, size_t bits_per_value,
     pixel_value_interpretation_t pixel_value_interpretation) {
        bool success = true;
        return success;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool on_image_pixel
    (pixel_t& pixel, byte_t* pixel_byte, size_t pixel_bytes,
     size_t image_col, size_t image_row, size_t image_plane,
     size_t image_width, size_t image_height, size_t image_planes,
     size_t values_per_pixel, size_t bits_per_value,
     pixel_value_interpretation_t pixel_value_interpretation) {
        bool success = true;
        size_t pixel_offset = ((image_row*image_width)+(image_col))*4;
        if ((bytes_) && (image_size_ > pixel_offset)) {
            byte_t* byte = bytes_ + pixel_offset;
            byte[0] = pixel.color_axis(color::space::rgba::axis_blue);
            byte[1] = pixel.color_axis(color::space::rgba::axis_green);
            byte[2] = pixel.color_axis(color::space::rgba::axis_red);
        }
        return success;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual byte_t* detach_image
    (size_t& image_width, size_t& image_height,
     size_t& image_depth, size_t& image_size) {
        byte_t* bytes = bytes_;
        image_size = image_size_;
        image_width = image_width_;
        image_height = image_height_;
        image_depth = image_depth_;
        bytes_ = 0;
        image_width_ = (image_height_ = (image_depth_ = (image_size_ = 0)));
        return bytes;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual byte_t* alloc_image
    (size_t image_width, size_t image_height,
     size_t image_depth, size_t image_size) {
        VEDERE_LOG_MESSAGE_DEBUG("bytes_ = new byte_t[image_size = " << image_size << "]...");
        if ((bytes_ = new byte_t[image_size])) {
            VEDERE_LOG_MESSAGE_DEBUG("...bytes_ = new byte_t[image_size = " << image_size << "]");
            image_width_ = image_width;
            image_height_ = image_height;
            image_depth_ = image_depth;
            image_size_ = image_size;
            memset(bytes_, 255, image_size);
            return bytes_;
        }
        return 0;
    }
    virtual void free_image() {
        image_width_ = (image_height_ = (image_depth_ = (image_size_ = 0)));
        if ((bytes_)) {
            VEDERE_LOG_MESSAGE_DEBUG("delete[] bytes_...");
            delete[] bytes_;
            VEDERE_LOG_MESSAGE_DEBUG("...delete[] bytes_");
            bytes_ = 0;
        }
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    size_t image_width_, image_height_, image_depth_, image_size_;
    byte_t* bytes_;
};
typedef bgra_image_readert<> bgra_image_reader;

} // namespace libjpeg
} // namespace jpeg 
} // namespace format 
} // namespace image 
} // namespace graphic 
} // namespace vedere 

#endif // _VEDERE_GRAPHIC_IMAGE_FORMAT_JPEG_LIBJPEG_IMAGE_READER_HPP 
        

