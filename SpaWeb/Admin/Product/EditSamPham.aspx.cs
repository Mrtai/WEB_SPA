using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SpaWeb.Admin;

namespace SpaWeb.Admin.Product
{
    public partial class EditSamPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            sanPhamDAL spDAL = new sanPhamDAL();
            SAN_PHAM sp = new SAN_PHAM();

            lb_messenger.Visible = true;
            var idSP = Request.QueryString["MaSP"];

            if (!String.IsNullOrEmpty(txt_TenSP.Text) || !String.IsNullOrEmpty(txt_moTa.Text) ||
                !String.IsNullOrEmpty(txt_anh.Text) || !String.IsNullOrEmpty(txt_gia.Text))
            {

                if (Regex.IsMatch(txt_gia.Text, @"^\d+$"))
                {
                    sp.MA_SP = Convert.ToInt32(idSP);
                    sp.TEN_SP = txt_TenSP.Text;
                    sp.MO_TA = txt_moTa.Text;
                    sp.ANH = txt_anh.Text;
                    sp.GIA = Convert.ToDouble(txt_gia.Text);

                    int result = spDAL.Update(sp);


                    if (result == 1)
                        lb_messenger.Text = "Thành Công";
                    else
                        lb_messenger.Text = "Thất Bại";
                }
                else
                {
                    lb_messenger.Text = "Giá Phải Là Số";
                    lb_messenger.CssClass = "btn btn-danger";
                }
            }
            else
            {
                lb_messenger.Text = "Phải Nhập Đủ Các Trường";
                lb_messenger.CssClass = "btn btn-danger";
            }
        }

        protected void btn_Reset_Click(object sender, EventArgs e)
        {
            AddSanPham aSP = new AddSanPham();
            aSP.resetControl();
        }

        protected void addDataIntoControl()
        {
            sanPhamDAL spDAL = new sanPhamDAL();

            var idSP = Request.QueryString["MaSP"];
            var sp = spDAL.GetDVByMa(Convert.ToInt32(idSP));
            if (sp != null)
            {
                txt_TenSP.Text = sp.TEN_SP;
                txt_moTa.Text = sp.MO_TA;
                txt_anh.Text = sp.ANH;
                txt_gia.Text = sp.GIA.ToString();
            }

        }
    }
}