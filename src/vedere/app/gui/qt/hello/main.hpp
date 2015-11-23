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
///   Date: 5/29/2015
///////////////////////////////////////////////////////////////////////
#ifndef _VEDERE_APP_GUI_QT_HELLO_MAIN_HPP
#define _VEDERE_APP_GUI_QT_HELLO_MAIN_HPP

#include "vedere/graphic/image/format/jpeg/libjpeg/image_reader.hpp"
#include "vedere/graphic/image/format/jpeg/libjpeg/reader.hpp"
#include "vedere/app/gui/qt/hello/renderer.hpp"
#include "vedere/app/gui/qt/hello/image_renderer.hpp"
#include "vedere/gui/qt/application/window_main.hpp"
#include "vedere/gui/qt/application/main_window.hpp"
#include "vedere/app/gui/hello/window.hpp"
#include "vedere/app/gui/hello/renderer.hpp"
#include "vedere/app/gui/hello/main.hpp"

namespace vedere {
namespace app {
namespace gui {
namespace qt {
namespace hello {

typedef gui::hello::windowt<QWidget> main_widget_extends;
///////////////////////////////////////////////////////////////////////
///  Class: main_widget
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main_widget: public main_widget_extends {
public:
    typedef main_widget_extends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main_widget(QWidget* parent) {
        setParent(parent);
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool init() {
        renderer_.init(this);
        return true;
    }
    virtual bool finish() {
        renderer_.finish();
        return true;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void* load_image
    (byte_reader& reader, size_t size, size_t width, size_t height) {
        return renderer_.load_image(reader, size, width, height);
    }
    virtual void* set_image
    (byte_t* bytes, size_t size, size_t width, size_t height) {
        return renderer_.set_image(bytes, size, width, height);
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void switch_render() {
        renderer_.switch_render();
        update(0,0, width(),height());
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool post_message(message_type_t type, message_data_t data) {
        VEDERE_LOG_MESSAGE_DEBUG("QApplication::postEvent(this, new MessageQEvent(message_type_t type = " << type << ",...))...");
        QApplication::postEvent(this, new MessageQEvent(type, data));
        return false;
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual void resizeEvent(QResizeEvent *event) {
        size_t width = this->width(), height = this->height();
        VEDERE_LOG_MESSAGE_DEBUG("renderer_.resize(" << width << ", " << height << ")");
        Extends::resizeEvent(event);
        renderer_.resize(width, height);
    }
    virtual void paintEvent(QPaintEvent *event) {
        Extends::paintEvent(event);
        renderer_.render();
    }
    virtual void mouseReleaseEvent(QMouseEvent *event) {
        Qt::MouseButton button = Qt::NoButton;
        Extends::mouseReleaseEvent(event);
        switch((button = event->button())) {
        case Qt::LeftButton:
            post_message(message_type_switch_render, 0);
            break;
        case Qt::RightButton:
            break;
        default:
            break;
        }
    }
    virtual void customEvent(QEvent* event) {
        QEvent::Type type = event->type();
        switch(type) {
        case Message: {
            MessageQEvent* message = ((MessageQEvent*)event);
            on_message(message->type(), message->data());
            break; }
        default:
            VEDERE_LOG_MESSAGE_DEBUG("...customEvent() type = " << type);
            break;
        }
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    enum {
        Message = QEvent::User+1
    };
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    class MessageQEvent: public QEvent {
    public:
        MessageQEvent
        (message_type_t type, message_data_t data)
        : QEvent((Type)Message), message_(type, data) {}
        MessageQEvent
        (const MessageQEvent& copy)
        : QEvent((Type)Message), message_(copy.message_) {}
        ///////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////////////
        virtual message_type_t type() const { return message_.type_; }
        virtual message_data_t data() const { return message_.data_; }
        ///////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////////////
    protected:
        message_t message_;
    };

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    renderer renderer_;
};

typedef vedere::gui::qt::application::main_window main_window_extends;
///////////////////////////////////////////////////////////////////////
///  Class: main_window
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main_window: public main_window_extends {
public:
    typedef main_window_extends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main_window(): main_widget_(0) {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool init
    (size_t image_width, size_t image_height, size_t image_depth,
     gui::hello::image_format_t image_format, const char_t* image_file) {
        if ((main_widget_ = new main_widget(this))) {
            if ((main_widget_->init())) {
                this->setCentralWidget(main_widget_);
                switch (image_format) {
                case gui::hello::image_format_jpeg:
                    load_jpeg_image(image_file);
                    break;
                default:
                    load_raw_image
                    (image_width, image_height,
                     image_depth, image_format, image_file);
                    break;
                }
                return true;
            }
            delete main_widget_;
            main_widget_ = 0;
        }
        return true;
    }
    virtual bool finish() {
        return true;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool load_jpeg_image(const char_t* image_file) {
        if ((main_widget_) && (image_file)) {
            graphic::image::format::jpeg::libjpeg::bgra_image_reader reader;
            bool success = false;
            if ((reader.read(image_file))) {
                size_t image_width = 0, image_height = 0,
                       image_depth = 0, image_size = 0;
                byte_t* bytes = 0;

                if ((bytes = reader.detach_image
                     (image_width, image_height, image_depth, image_size))) {
                    if ((main_widget_->set_image
                        (bytes, image_size, image_width, image_height))) {
                        success = true;
                    } else {
                        delete[] bytes;
                    }
                }
            }
            return success;
        }
        return false;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool load_raw_image
    (size_t image_width, size_t image_height, size_t image_depth,
     gui::hello::image_format_t image_format, const char_t* image_file) {
        if ((main_widget_) && (image_file)
            && (image_width) && (image_height) && (image_depth)) {
            size_t image_pixel_size = ((image_depth+7)/8),
                   image_size = (image_width*image_height*image_pixel_size);
            FILE* file = 0;
            if ((file = fopen(image_file, "rb"))) {
                xos::io::read::byte_file f(file);
                bool success = false;
                if ((main_widget_->load_image
                    (f, image_size, image_width, image_height))) {
                    success = true;
                }
                fclose(file);
                return success;
            } else {
                VEDERE_LOG_MESSAGE_ERROR("...failed on fopen(" << image_file << ", \"rb\")");
            }
        }
        return false;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    main_widget* main_widget_;
};

typedef vedere::gui::qt::application::window_main_implements main_implements;
typedef vedere::app::gui::hello::maint
<main_implements, vedere::gui::qt::application::window_main> main_extends;
///////////////////////////////////////////////////////////////////////
///  Class: main
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main: virtual public main_implements, public main_extends {
public:
    typedef main_implements Implements;
    typedef main_extends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main()
    : main_window_(0) {
    }
    virtual ~main() {
    }

protected:
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual QMainWindow* create_main_window
    (QApplication& qApplication, int argc, char_t** argv, char_t** env) {
        main_window* mw = 0;
        if ((mw = new main_window())) {
            mw->resize(main_window_width_, main_window_height_);
            if ((mw->init
                 (image_width_, image_height_, image_depth_,
                  image_format_, image_file_.has_chars()))) {
                main_window_ = mw;
                return main_window_;
            } else {
                VEDERE_LOG_ERROR("failed on main_window_->init()");
            }
        }
        return 0;
    }
    virtual bool destroy_main_window
    (QMainWindow* qMainWindow, QApplication& qApplication,
     int argc, char_t** argv, char_t** env) {
        if ((qMainWindow) && (qMainWindow == ((QMainWindow*)main_window_))) {
            bool success = false;
            if (!(success = main_window_->finish())) {
                VEDERE_LOG_ERROR("failed on main_window_->finish()");
            }
            delete main_window_;
            main_window_ = 0;
            return success;
        }
        return false;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    main_window* main_window_;
};

} // namespace hello 
} // namespace qt 
} // namespace gui 
} // namespace app 
} // namespace vedere 

#endif // _VEDERE_APP_GUI_QT_HELLO_MAIN_HPP 
