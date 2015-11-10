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
///   File: listview.hpp
///
/// Author: $author$
///   Date: 6/28/2015
///////////////////////////////////////////////////////////////////////
#ifndef _VEDERE_GUI_GTK_LISTVIEW_HPP
#define _VEDERE_GUI_GTK_LISTVIEW_HPP

#include "vedere/gui/gtk/treeview.hpp"

namespace vedere {
namespace gui {
namespace gtk {

typedef treeview_implements listview_implements;
typedef treeview listview_extends;
///////////////////////////////////////////////////////////////////////
///  Class: listviewt
///////////////////////////////////////////////////////////////////////
template
<class TImplements = listview_implements, class TExtends = listview_extends>

class _EXPORT_CLASS listviewt: virtual public TImplements,public TExtends {
public:
    typedef TImplements Implements;
    typedef TExtends Extends;

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    listviewt
    (widget_attached_t detached = 0, bool is_created = false)
    : Extends(detached, is_created) {
    }
    virtual ~listviewt() {
    }

    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
};

} // namespace gtk 
} // namespace gui 
} // namespace vedere 

#endif // _VEDERE_GUI_GTK_LISTVIEW_HPP 
