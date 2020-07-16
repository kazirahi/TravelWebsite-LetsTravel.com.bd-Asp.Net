<%@ Page Title="Admin Ranked" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminRanked.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.AdminRanked" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%; height: auto">
                <h1 style="width: 100%; height: auto; padding-left: 20px; color:gray">Ranking Position Change</h1>

        <table style="width: 100%; height: auto; padding:20px; box-shadow: 0 0 5px gray">
            <tr>
                <td style="width: 20%; height: auto">
                    <h3>Position</h3>
                </td>
                <td style="width: 20%; height: auto">
                    <h3>Place ID</h3>
                </td>
                <td style="width: 40%; height: auto">
                    <h3>Place Name</h3>
                </td>
                <td style="width: 20%; height: auto">
                    <h3>Action</h3>
                </td>
            </tr>
        </table>

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal" Width="100%" >
            <ItemTemplate>
                <table style="width: 100%; height: auto; padding:20px; box-shadow: 0 0 5px gray">
            <tr>
                <td style="width: 20%; height: auto">
                    <asp:TextBox ID="PositionView" runat="server" Text='<%#Eval("position") %>' BorderStyle="None"></asp:TextBox>
                </td>
                <td style="width: 20%; height: auto">
                    <asp:Label ID="PlaceID" runat="server" Text='<%#Eval("PlaceID") %>'></asp:Label>

                </td>
                <td style="width: 40%; height: auto">
                    <asp:Label ID="PlaceName" runat="server" Text='<%#Eval("PlaceName") %>'></asp:Label>
                </td>
                <td style="width: 20%; height: auto">
                    <asp:Button style="border-radius:6px; padding:5px" runat="server" Text="Update" Width="80px" ToolTip="Update Position" Height="30px" BackColor="#D00040" ForeColor="White" Font-Bold="True" Font-Names="Roboto" BorderStyle="None" ID="UpdateButton" OnClick="UpdateButton_Click" />
                </td>
            </tr>
        </table>
            </>
</ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [PlaceID], [position], [PlaceName] FROM [PlaceInfo] ORDER BY [position]"></asp:SqlDataSource>
        

    </div>
</asp:Content>
