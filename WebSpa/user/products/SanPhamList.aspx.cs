using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using DAL.DAL;

namespace WebSpa.user.products
{
    public partial class SanPhamList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sanPhamList_GetData();
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public List<SAN_PHAM> sanPhamList_GetData()
        {
            sanPhamDAL sp = new sanPhamDAL();
            var lis = sp.GetList();
            return lis;
        }
    }
}