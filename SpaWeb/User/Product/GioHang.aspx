<%@ Page Title="Giỏ Hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="SpaWeb.User.Product.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%#: Page.Title %></h2>
            </hgroup>

            <asp:GridView runat="server" ID="CartItemGridView" CellPadding="4"
                AutoGenerateColumns="false" ShowFooter="true" GridLines="Vertical"
                ItemType="DAL.CartItem" SelectMethod="CartItemGridView_GetData">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="CartID"/>
                    <asp:BoundField DataField="SAN_PHAM.TEN_SP" HeaderText="Tên Sản Phẩm" />
                    <asp:BoundField DataField="SAN_PHAM.GIA" HeaderText="Giá" />
                    <asp:TemplateField  HeaderText="Số Lượng">            
                         <ItemTemplate>
                            <asp:TextBox ID="SoLuong" Width="40" runat="server" Text="df"></asp:TextBox> 
                        </ItemTemplate>        
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Thành Tiền">            
                         <ItemTemplate>
                             
                        </ItemTemplate>        
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </section>

</asp:Content>
