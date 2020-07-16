<%@ Page Title="Comment-Admin" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminComment.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.AdminComment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%; height: auto">
                <h1 style="width: 100%; height: auto; padding-left: 20px; color:gray">Comment Table</h1>

        <table style="width: 100%; height: auto; padding:20px; box-shadow: 0 0 5px gray">
            <tr>
                <td style="width: 10%; height: auto">
                    <h3>CommentID</h3>
                </td>
                <td style="width: 10%; height: auto">
                    <h3>UserID</h3>
                </td>
                <td style="width: 10%; height: auto">
                    <h3>BlogID</h3>
                </td>
                <td style="width: 40%; height: auto">
                    <h3>Comment</h3>
                </td>
                <td style="width: 10%; height: auto">
                    <h3>Action</h3>
                </td>
            </tr>
        </table>
        
       <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal" Width="100%" >
            <ItemTemplate>
        <table style="width: 100%; height: auto; padding:20px; box-shadow: 0 0 5px gray">
            <tr>
                <td style="width: 10%; height: auto">
                    <asp:Label runat="server" Text='<%#Eval("CommentID") %>' ID="CommentID"></asp:Label>
                </td>
                <td style="width: 10%; height: auto">
                    <asp:Label runat="server" Text='<%# Eval("ProfileID") %>' ID="ProfileID"></asp:Label>
                </td>
                <td style="width: 10%; height: auto">
                    <asp:Label runat="server" Text='<%#Eval("BlogID") %>' ID="BlogID"></asp:Label>
                    
                </td>
                <td style="width: 40%; height: auto">
                    <asp:Label runat="server" ID="CommentDescription" Text='<%#Eval("CommentDescription") %>' BorderStyle="None" TextMode="MultiLine" Width="100%"></asp:Label>
                </td>
                <td style="width: 10%; height: auto">
                    <asp:Button runat="server" Text="Delete" style="border-radius:6px; padding:5px" runat="server"  Width="80px" ToolTip="Update Position" Height="30px" BackColor="#D00040" ForeColor="White" Font-Bold="True" Font-Names="Roboto" BorderStyle="None" OnClick="Unnamed1_Click"/>
                </td>
            </tr>
        </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProfileID], [BlogID], [CommentDescription], [CommentID] FROM [CommentTable]"></asp:SqlDataSource>
        
        
    </div>
</asp:Content>
