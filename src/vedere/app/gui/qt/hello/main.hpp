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

#include "vedere/gui/qt/application/window_main.hpp"
#include "vedere/gui/qt/application/main_window.hpp"

namespace vedere {
namespace app {
namespace gui {
namespace qt {
namespace hello {

typedef vedere::gui::qt::application::main_window main_window;

typedef vedere::gui::qt::application::window_main_implements main_implements;
typedef vedere::gui::qt::application::window_main main_extends;
///////////////////////////////////////////////////////////////////////
///  Class: main
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main: virtual public main_implements, public main_extends {
public:
    typedef main_implements Implements;
    typedef main_extends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    main(): main_window_(0) {
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
            if ((mw->init())) {
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
