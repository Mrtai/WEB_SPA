<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SanPhamDetail.aspx.cs" Inherits="SpaWeb.User.Product.SanPhamDetail" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >

    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />

    <asp:FormView ID="sanPhamDetail" SelectMethod="sanPhamDetail_GetItem" RenderOuterTable="false" runat="server" ItemType="DAL.SAN_PHAM">
        <ItemTemplate>
            <div><h1><%#: Item.TEN_SP %></h1></div>
            <br />
            <div>
                <div>
                    <img class="img-responsive" style="height:300px; border:solid" src="../../Resource/image/<%#:Item.ANH %>"/>
                </div>
            </div>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
