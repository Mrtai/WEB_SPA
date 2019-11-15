<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSamPham.aspx.cs" Inherits="SpaWeb.Admin.Product.EditSamPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="h2 text-primary">Cập Nhật Sản Phẩm</div>
            <asp:Label runat="server" Text="value" ID="lb_messenger"
                Width="300px" Visible="false"
                CssClass="text-center btn-success text-uppercase"></asp:Label>
            <div>

                <asp:Label ID="la" runat="server" Text="Tên Sản Phẩm" CssClass="text-"></asp:Label>
                <br />
                <asp:TextBox ID="txt_TenSP" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Mô Tả"></asp:Label>
                <br />
                <asp:TextBox ID="txt_moTa" runat="server" Height="150px" Width="800px"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Ảnh"></asp:Label>
                <br />
                <asp:TextBox ID="txt_anh" runat="server" Width="800px"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server"  Text="Giá"></asp:Label>
                <br />
                <asp:TextBox ID="txt_gia" runat="server" Width="800px"></asp:TextBox>

            </div>
            <div>
                <br />
                <asp:Button runat="server" ID="btn_Save" CssClass="btn btn-success ml-30" Text="Lưu" OnClick="btn_Save_Click"/>
                <asp:Button runat="server" ID="btn_Reset" CssClass="btn btn-info" OnClick="btn_Reset_Click" Text="Reset"/>
                <a href="SanPhamLoad.aspx" class="btn btn-danger">Quay Lại</a>
            </div>
        </div>
    </form>
</body>
</html>
