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

namespace vedere {
namespace app {
namespace gui {
namespace gtk {
namespace hello {

typedef vedere::gui::gtk::application::window_main_implements main_implements;
typedef vedere::gui::gtk::application::window_main main_extends;
///////////////////////////////////////////////////////////////////////
///  Class: main
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS main: virtual public main_implements, public main_extends {
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
            if ((main_window_.create(application))) {
                return main_window_;
            }
        }
        return 0;
    }
    virtual bool destroy_main_window
    (GtkWidget* main_window, GtkApplication *application) {
        if ((application) && (main_window) && (main_window == (main_window_))) {
            if ((main_window_.destroy())) {
                return true;
            }
        }
        return false;
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    vedere::gui::gtk::application::window main_window_;
};

} // namespace hello 
} // namespace gtk 
} // namespace gui 
} // namespace app 
} // namespace vedere 

#endif // _VEDERE_APP_GUI_GTK_HELLO_MAIN_HPP 
