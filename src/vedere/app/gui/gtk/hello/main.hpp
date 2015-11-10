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
///   File: main.hpp
///
/// Author: $author$
///   Date: 5/27/2015
///////////////////////////////////////////////////////////////////////
#ifndef _VEDERE_APP_GUI_GTK_HELLO_MAIN_HPP
#define _VEDERE_APP_GUI_GTK_HELLO_MAIN_HPP

#include "vedere/gui/gtk/application/window_main.hpp"
#include "vedere/gui/gtk/application/window.hpp"
#include "vedere/gui/gtk/application/main.hpp"
#include "vedere/gui/gtk/main_window.hpp"
#include "vedere/gui/gtk/main.hpp"
#include "vedere/gui/gtk/drawing_area.hpp"
#include "vedere/app/gui/hello/main.hpp"
#include "vedere/app/gui/hello/renderer.hpp"
#include "vedere/app/gui/hello/window.hpp"
#include "xos/mt/queue.hpp"

namespace vedere {
namespace app {
namespace gui {
namespace gtk {
namespace hello {

enum aspect_ratio_mode_t {
    ASPECT_RATIO_MODE_IGNORE,
    ASPECT_RATIO_MODE_KEEP
};
enum transformation_mode_t {
    TRANSFORMATION_MODE_NONE,
    TRANSFORMATION_MODE_FAST,
    TRANSFORMATION_MODE_SMOOTH
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
    image_renderer(cairo_t* cr = 0): cr_(cr_) {
    }
    virtual ~image_renderer() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool init(cairo_t* cr, size_t width, size_t height) {
        cr_ = cr;
        width_ = width;
        height_ = height;
        return true;
    }
    virtual bool finish() {
        cr_ = 0;
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
              ASPECT_RATIO_MODE_IGNORE, transformation_mode()))) {
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
                      ASPECT_RATIO_MODE_IGNORE, transformation_mode()))) {
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
              ASPECT_RATIO_MODE_IGNORE, transformation_mode()))) {
            return true;
        }
        return false;
    }
    virtual bool render_stretched
    (const void* image, size_t image_width, size_t image_height) {
        if ((render
             (image, image_width,image_height,
              width_,height_, 0,0, image_format(),
              ASPECT_RATIO_MODE_IGNORE, transformation_mode()))) {
            return true;
        }
        return false;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool render
    (const void* image, size_t image_width, size_t image_height,
     size_t width, size_t height, size_t x, size_t y, cairo_format_t image_format,
     aspect_ratio_mode_t aspect_ratio_mode, transformation_mode_t transformation_mode) {
        if ((cr_) && (image)) {
            cairo_surface_t* surface = 0;
            if ((surface = image_create_from_data
                 ((unsigned char*)image, image_format, image_width, image_height))) {
                cairo_save(cr_);
                switch(aspect_ratio_mode) {
                case ASPECT_RATIO_MODE_IGNORE: {
                    double scale_x = (((double)width)/((double)image_width)),
                           scale_y = (((double)height)/((double)image_height));
                    cairo_translate(cr_, x,y);
                    cairo_scale(cr_, scale_x,scale_y);
                    break; }
                }
                cairo_set_source_surface(cr_, surface, 0,0);
                cairo_paint(cr_);
                cairo_restore(cr_);
                cairo_surface_destroy(surface);
                return true;
            }
        }
        return false;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual cairo_surface_t* image_create_from_data
    (const unsigned char* image, cairo_format_t image_format,
     guint image_width, guint image_height) const {
        if ((image) && (image_width) && (image_height)) {
            cairo_surface_t* surface = 0;

            if ((surface = cairo_image_surface_create
                 (image_format, image_width, image_height))) {
                unsigned char* surface_data = 0;

                cairo_surface_flush(surface);
                if ((surface_data = cairo_image_surface_get_data(surface))) {
                    int surface_stride = cairo_image_surface_get_stride(surface);

                    if (0 < (surface_stride)) {
                        cairo_surface_mark_dirty(surface);
                        if ((image_copy_data
                             (surface, surface_data, image, image_format,
                              image_width, image_height, surface_stride))) {
                            cairo_surface_flush(surface);
                            return surface;
                        }
                    }
                }
                cairo_surface_destroy(surface);
            }
        }
        return 0;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual cairo_surface_t* image_copy_data
    (cairo_surface_t* surface, unsigned char* surface_data,
     const unsigned char* image, cairo_format_t image_format,
     guint image_width, guint image_height, guint surface_stride) const {
        if (CAIRO_FORMAT_ARGB32 == (image_format)) {
            return image_copy_data_argb32
            (surface, surface_data, image,
             image_width, image_height, surface_stride);
        }
        return 0;
    }
    virtual cairo_surface_t* image_copy_data_argb32
    (cairo_surface_t* surface, unsigned char* surface_data,
     const unsigned char* image, guint image_width, guint image_height,
     guint surface_stride) const {
        if ((surface) && (surface_data) && (surface_stride)
            && (image) && (image_width) && (image_height)) {
            size_t row_size = (image_width * sizeof(uint32_t));

            for (guint row = 0; row < image_height; ++row) {
                memcpy(surface_data, image, row_size);
                surface_data += surface_stride;
                image += row_size;
            }
            return surface;
        }
        return 0;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual cairo_format_t image_format() const {
        return CAIRO_FORMAT_ARGB32;
    }
    virtual transformation_mode_t transformation_mode() const {
        return TRANSFORMATION_MODE_NONE;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    cairo_t* cr_;
};

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
    renderer() {
    }
    virtual ~renderer() {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool init(cairo_t* cr, size_t width, size_t height) {
        return image_renderer_.init(cr, width,height);
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
protected:
    hello::image_renderer image_renderer_;
};

typedef gui::hello::windowt
<vedere::gui::gtk::drawing_area> drawing_area_extends;
///////////////////////////////////////////////////////////////////////
///  Class: drawing_area
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS drawing_area: public drawing_area_extends {
public:
    typedef drawing_area_extends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    drawing_area() {
    }
    virtual ~drawing_area() {
        the_signal_idle_id() = 0;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void* load_image
    (byte_reader& reader, size_t size, size_t width, size_t height) {
        return renderer_.load_image(reader, size, width, height);
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void switch_render() {
        renderer_.switch_render();
        queue_draw();
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool connect_signal_idle() {
        guint& the_id = the_signal_idle_id();
        if (!(the_id)) {
            guint id = 0;
            if ((id = g_idle_add(signal_idle_callback, ((gpointer*)this)))) {
                the_id = id;
                return true;
            } else {
                VEDERE_LOG_MESSAGE_ERROR("failed on g_idle_add()");
            }
        }
        return false;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool post_message(message_type_t type, message_data_t data) {
        message_t message(type, data);
        if ((message_queue_.enqueue(message))) {
            return true;
        }
        return false;
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool got_message(message_type_t& type, message_data_t& data) {
        message_t message;
        if ((message_queue_.try_dequeue(message))) {
            type = message.type_;
            data = message.data_;
            return true;
        }
        return false;
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void on_signal_draw(GtkWidget* widget, cairo_t* cr) {
        gint width = 0, height = 0, x = 0, y = 0;
        if ((get_size(width, height))) {
            if ((renderer_.init(cr, width,height))) {
                renderer_.render();
                renderer_.finish();
            }
        }
    }
    virtual void on_signal_button_release_event(GtkWidget* widget, GdkEvent* event) {
        VEDERE_LOG_MESSAGE_DEBUG("on_signal_button_release_event()...");
        VEDERE_LOG_MESSAGE_DEBUG("post_message(message_type_switch_render, 0)...");
        post_message(message_type_switch_render, 0);
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual gboolean on_signal_idle() {
        message_type_t type = message_type_none;
        message_data_t data = 0;
        if ((got_message(type, data))) {
            on_message(type, data);
        }
        return TRUE;
    }
    static gboolean signal_idle_callback(gpointer data) {
        guint& the_id = the_signal_idle_id();
        if ((the_id)) {
            drawing_area* the_drawing_area = ((drawing_area*)data);
            if ((the_drawing_area)) {
                return the_drawing_area->on_signal_idle();
            }
        }
        return FALSE;
    }
    static guint& the_signal_idle_id() {
        static guint the_id = 0;
        return the_id;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    renderer renderer_;
    message_queue_t message_queue_;
};

typedef vedere::gui::gtk::application::window window_extends;
///////////////////////////////////////////////////////////////////////
///  Class: window
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS window: public window_extends {
public:
    typedef window_extends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    window() {
    }
    virtual ~window() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool init
    (size_t image_width, size_t image_height,
     size_t image_depth, const char_t* image_file) {
        GtkWidget* parent = this->attached_to();
        if ((parent)) {
            GtkWidget* child = 0;
            if ((child = d_.create_attached())) {
                d_.connect_signal_idle();
                d_.connect_signal_draw();
                d_.connect_signal_button_events();
                gtk_container_add(GTK_CONTAINER(parent), child);
                if ((image_file) && (image_width) && (image_height) && (image_depth)) {
                    size_t image_pixel_size = ((image_depth+7)/8),
                           image_size = (image_width*image_height*image_pixel_size);
                    FILE* file = 0;
                    if ((file = fopen(image_file, "rb"))) {
                        xos::io::read::byte_file f(file);
                        if ((d_.load_image
                            (f, image_size, image_width, image_height))) {
                        }
                        fclose(file);
                    } else {
                        VEDERE_LOG_MESSAGE_ERROR("...failed on fopen(" << image_file << ", \"rb\")");
                    }
                }
            }
        }
        return true;
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void on_signal_configure
    (GtkWidget* widget, GdkWindow *window, gint x,gint y,
     gint width,gint height, gboolean sent_explicitly) {
        LAMNA_LOG_MESSAGE_DEBUG("on_signal_configure(..., x=" << x << ",y=" << y << ", width=" << width << ",height=" << height << ")...");
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    drawing_area d_;
};

typedef vedere::gui::gtk::application::window_main_implements main_implements;
typedef vedere::app::gui::hello::maint
<main_implements, vedere::gui::gtk::application::window_main> main_extends;
///////////////////////////////////////////////////////////////////////
///  Class: main
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main
: virtual public lamna::gui::gtk::widget_signals,
  virtual public main_implements, public main_extends {
public:
    typedef main_implements Implements;
    typedef main_extends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main() {
    }
    virtual ~main() {
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual GtkWidget* create_main_window(GtkApplication *application) {
        if ((application)) {
            GtkWidget* main_window = 0;
            if ((main_window = main_window_.create_attached(application))) {
                main_window_.set_default_size(main_window_width_, main_window_height_);
                main_window_.connect_signal_configure_event();
                main_window_.init
                (image_width_, image_height_,
                 image_depth_, image_file_.has_chars());
                return main_window;
            }
        }
        return 0;
    }
    virtual bool destroy_main_window
    (GtkWidget* main_window, GtkApplication *application) {
        if ((application) && (main_window)
            && (main_window == (main_window_.attached_to()))) {
            if ((main_window_.destroyed())) {
                return true;
            }
        }
        return false;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    hello::window main_window_;
};

} // namespace hello 
} // namespace gtk 
} // namespace gui 
} // namespace app 
} // namespace vedere 

#endif // _VEDERE_APP_GUI_GTK_HELLO_MAIN_HPP 
