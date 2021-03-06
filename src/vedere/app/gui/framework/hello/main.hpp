///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2020 $organization$
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
///   Date: 12/1/2020
///////////////////////////////////////////////////////////////////////
#ifndef _VEDERE_APP_GUI_FRAMEWORK_HELLO_MAIN_HPP
#define _VEDERE_APP_GUI_FRAMEWORK_HELLO_MAIN_HPP

#include "vedere/app/gui/framework/hello/main_opt.hpp"

namespace vedere {
namespace app {
namespace gui {
namespace framework {
namespace hello {

typedef main_opt::Implements maint_implements;
typedef main_opt maint_extends;
///////////////////////////////////////////////////////////////////////
///  Class: maint
///////////////////////////////////////////////////////////////////////
template <class TImplements = maint_implements, class TExtends = maint_extends>
class _EXPORT_CLASS maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;
    typedef maint Derives;
    
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
private:
    maint(const maint &copy) {
    }
public:
    maint() {
    }
    virtual ~maint() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
}; /// class _EXPORT_CLASS maint
typedef maint<> main;

} /// namespace hello
} /// namespace framework
} /// namespace gui
} /// namespace app
} /// namespace vedere

#endif /// _VEDERE_APP_GUI_FRAMEWORK_HELLO_MAIN_HPP 
