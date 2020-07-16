<%@ Page Title="About-Admin" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminAbout.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.AdminAbout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%; height: auto">
                <h1 style="width: 100%; height: auto; padding-left: 20px; color:gray">About Us Information</h1>

        <table style="width: 100%; height: auto; padding:20px; box-shadow: 0 0 5px gray">
            <tr>
                <td style="width: 30%; height: auto">
                    <h3>Place Description</h3>
                </td>
                <td style="width: 30%; height: auto">
                    <h3>Blog Description</h3>
                </td>
                <td style="width: 30%; height: auto">
                    <h3>Review Description</h3>
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
                <td style="width: 100%; height: auto;">
                    <table style="width: 100%; height: auto;">
                        <tr>
                            <td style="width: 30%; height: auto">
                    <asp:TextBox Width="100%" ID="PlaceInformation" runat="server" Text='<%#Eval("itemD") %>' TextMode="MultiLine" BorderStyle="None" Height="100px"></asp:TextBox>
                </td>
                <td style="width: 30%; height: auto">
                    <asp:TextBox Width="100%" ID="BlogInfo" runat="server" Text='<%#Eval("itemmD") %>' TextMode="MultiLine" BorderStyle="None" Height="100px"></asp:TextBox>

                </td>
                <td style="width: 30%; height: auto">
                <asp:TextBox Width="100%" ID="Review" runat="server" Text='<%#Eval("itemmmD") %>' TextMode="MultiLine" BorderStyle="None" Height="100px"></asp:TextBox>
                </td>
                    <td align="center" style="width: 10%; height: auto ; vertical-align: bottom">
                    <asp:Button  style="border-radius:6px; padding:5px" runat="server" Text="Update" Width="80px" ToolTip="Update Position" Height="30px" BackColor="#D00040" ForeColor="White" Font-Bold="True" Font-Names="Roboto" BorderStyle="None" ID="UpdateButton" OnClick="UpdateButton_Click" />
                </td>    

                        </tr>
                    </table>
                </td>
                
                
            </tr>
              <tr>
                
                  <td style="width: 100%; height: auto;">

                   <p>Our Mission</p>  <asp:TextBox Width="80%" runat="server" ID="MainDescription" runat="server" Text='<%#Eval("md") %>' TextMode="MultiLine" BorderStyle="None" Height="150px"></asp:TextBox>
                        </td>
                    </tr>
        </table>

            </>
</ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ItemD], [ItemmD], [ItemmmD], [md] FROM [about]"></asp:SqlDataSource>
        

    </div>
</asp:Content>
