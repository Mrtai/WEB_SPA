using DAL;
using DAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpaWeb.Admin.Product
{
    public partial class AddSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_tenSP.Focus();
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            sanPhamDAL spDAL = new sanPhamDAL();
            SAN_PHAM sp = new SAN_PHAM();

            lb_messenger.Visible = true;
            

            if (!String.IsNullOrEmpty(txt_tenSP.Text) || !String.IsNullOrEmpty(txt_moTa.Text) ||
                !String.IsNullOrEmpty(txt_anh.Text) || !String.IsNullOrEmpty(txt_gia.Text))
            {
               
                if (Regex.IsMatch(txt_gia.Text, @"^\d+$"))
                {
                    sp.TEN_SP = txt_tenSP.Text;
                    sp.MO_TA = txt_moTa.Text;
                    sp.ANH = txt_gia.Text;
                    sp.GIA = Convert.ToDouble(txt_gia.Text);

                    int result = spDAL.Add(sp);


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
            resetControl();
        }

        public void resetControl()
        {
            txt_tenSP.Text = "";
            txt_moTa.Text = "";
            txt_anh.Text = "";
            txt_gia.Text = "";
            lb_messenger.Visible = false;
        }
    }
}