<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SanPhamList.aspx.cs" Inherits="WebSpa.user.products.SanPhamList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" ID="sanPhamList" 
                ItemType="DAL.SAN_PHAM"
                DataKeyNames="MA_SP"
                SelectMethod="sanPhamList_GetData"
                AutoGenerateColumns="false">
                
                <Columns>
                    <asp:DynamicField DataField="MA_SP" />
                </Columns>
                

            </asp:GridView>
        </div>
    </form>
</body>
</html>
