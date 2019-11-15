using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.User.Product
{
    public partial class SanPhamDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public SAN_PHAM SanPhamDetail_GetItem([QueryString("MaSP")] int id)
        {
            DB_SPAEntities context = new DB_SPAEntities();
            sanPhamDAL sp = new sanPhamDAL();
            var sp2 = sp.GetDVByMa(id);
            return sp2;
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        
    }
}