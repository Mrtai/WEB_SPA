<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.Master" AutoEventWireup="true" CodeBehind="SanPhamLoadList.aspx.cs" Inherits="WebSpa.user.products.SanPhamLoadList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <asp:ListView runat="server" GroupItemCount="4"
                ItemType="DAL.SAN_PHAM"
                DataKeyNames="MA_SP"
                SelectMethod="sanPhamList_GetData">
                <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>Không Có Dữ Liệu</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td />
                </EmptyItemTemplate>
                <GroupTemplate>

                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="#">
                                        <img src="../../resource/ImageProduct/<%#:Item.ANH %>" />
                                    </a>

                                </td>
                            </tr>
                        </table>
                    </td>
                </ItemTemplate>
            </asp:ListView>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
