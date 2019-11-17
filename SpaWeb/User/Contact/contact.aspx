<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="SpaWeb.User.Contact.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><h2><%: Title %>.</h2></h2>
    <div id="main">
        <section class="main-title-section-wrapper default" style="">
            <div class="container">
                <div class="main-title-section">
                    <h1>Liên Hệ</h1>		</div>
                <div class="breadcrumb" style="width: 98%;">
                    <a href="https://gaspa.vn/">Home</a><span class="fa default"></span><span class="current">Liên Hệ</span>
                </div>	
            </div>
        </section>
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <asp:MultiView ID="MultiView1" runat="server">
                         <asp:View ID="viewStep1" runat="server">
                             <div class="bg-primary">
                                 <div ><h2 class="text-center" >Đặt lịch</h2></div>
                                 <div class="form-group" >
                                     <asp:DropDownList CssClass="form-control " style="margin-left: 5%;" ID="dr_chinhanh" runat="server"></asp:DropDownList></div>
                                 <div class="form-group ">
                                     <asp:DropDownList CssClass="form-control " style="margin-left: 5%;" ID="DropDownList1" runat="server"></asp:DropDownList></div>
                                 <div class="form-group ">
                                     <asp:TextBox CssClass="form-control" style="margin-left: 5%;" ID="txtlich" runat="server"></asp:TextBox></div>
                                 <div class="form-group text-center">
                                     <asp:Button ID="btnNext" CssClass="btn btn-info" runat="server" Text="Đồng ý" />
                                 </div>
                             </div>

                         </asp:View>
                         <asp:View ID="viewStep2" runat="server"></asp:View>
                        <asp:View ID="viewStep3" runat="server"></asp:View>
                    </asp:MultiView>
                </div>
                <div class="col-lg-4">
                    <div class="wpb_wrapper">
			            <div class="booking-title"><strong>ĐỊA CHỈ</strong></div>
                        <div class="address">
                           <div><b>Cơ sở 1 – Gà Spa Quận 1</b></div>
                            <div>10 Nguyễn Thành Ý, P.Đa Kao, Q1, TPHCM</div>
                            <div>Phone: 0901 311 113</div>
                        </div>
                    </div>
                 </div>
                <div class="col-lg-4">
                    <div class="wpb_wrapper">
			            <p><strong>GIỜ LÀM VIỆC</strong></p>
                        <p><strong>Thứ 2 – Chủ nhật</strong></p>
                        <p>8:00 – 19:30</p>
                        <p><strong>Liên kết</strong> </p>
                        <ul class="dt-sc-sociable  dt-simple-narrow">
                            <li class="delicious"><a target="" href="https://www.youtube.com/channel/UCRkvlZJjyDbYEIlXjVSUR3A"></a></li>
                            <li class="dribbble"><a target="" href="https://www.instagram.com/ga.spa/"></a></li>
                            <li class="facebook"><a target="" href="https://www.facebook.com/gaspagroups/"></a></li>
                        </ul>
		             </div>
                </div>
        </div>
    </div>
    
</asp:Content>
