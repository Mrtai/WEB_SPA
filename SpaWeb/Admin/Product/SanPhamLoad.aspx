<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SanPhamLoad.aspx.cs" Inherits="SpaWeb.Admin.Product.SanPhamLoad" %>

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
<body onload="document.form12.submit()">
    <form id="form1" runat="server" name="form12">
         <div class="container">
            <h2>Danh Sách Sản Phẩm</h2>
            <div>
                <a class="btn btn-success text-center" href="AddSanPham.aspx" style="margin-bottom:30px">Tạo Mới</a>
                <asp:Label runat="server" Text="value" ID="lb_messenger" Enabled="false" Visible="false" Font-Size="XX-Large" CssClass="text-center btn-success text-uppercase"></asp:Label>
            </div>
             <div class="table table-hover">
                <asp:GridView CssClass="table table-hover" runat="server" ID="SanPhamLoadGrid" AutoGenerateColumns="False"
                    SelectMethod="SanPhamLoad_GetData">
                    <Columns >
                        <asp:BoundField DataField="MA_SP" HeaderText="ID" SortExpression="MA_SP"/>
                        <asp:BoundField DataField="TEN_SP" HeaderText="Tên Sản Phẩm"/>
                        <asp:BoundField DataField="MO_TA" HeaderText="Mô Tả" />
                        
                        <asp:BoundField DataField="GIA" HeaderText="Giá" />

                      <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                          <img src ="../../Resource/image/<%# Eval("ANH") %>" />
                        </ItemTemplate>
                      </asp:TemplateField>

                        <asp:TemplateField HeaderText="Chức Năng">
                            <ItemTemplate>

                               <a href="EditSamPham.aspx?MaSP=<%# Eval("MA_SP") %>" class="btn btn-warning" style="padding:10px">Cập Nhật</a>
                               <a href="SanPhamLoad.aspx"> <asp:LinkButton CssClass="btn btn-danger" style="padding:10px" runat ="server" Text="Xóa" 
                                    CommandArgument='<%# Eval("MA_SP") %>' OnClick="btn_Delete_Click"
                                    OnClientClick="return confirm('Bạn Có Muốn Xóa Sản Phẩm Này Không?');"/>
                                </a>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>


    <script>
        $(function () {
            var successMessage = "value";
            successMessage = document.getElementById("lb_messenger").value;
            if (successMessage != 'value')
                alertify.success(successMessage);
        });
    </script>
</body>
</html>
