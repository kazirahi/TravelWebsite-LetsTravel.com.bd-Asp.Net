<%@ Page Title="Admin New User" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminNotification.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.AdminNotification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .paggingbtn{
            border: 1px solid gray;
            background-color: #d00040;
            color:white;
            font-weight: bold;
            width:35px;
            height: 35px;
            padding: 5px;
            margin: 5px;
        }
    </style>
                    <asp:Label ID="NoBlog" runat="server" Text="No Notifications Found." BorderColor="#CC0000" BorderStyle="Solid" Font-Names="Roboto" Font-Size="X-Large" ForeColor="Black" Visible="False"></asp:Label>
                    <table style="width: 100%; height: auto; vertical-align: top">
                        <tr>
                            <td style="width: auto; height: auto">
                                 <asp:LinkButton ID="ClearNotification" runat="server" style="text-decoration: none; color: gray" OnClick="ClearNotification_Click"><i class=" fa fa-trash"></i> Clear All Notifications</asp:LinkButton>

                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%; height: auto; padding:0 80px;vertical-align: top">
                                <div>
                        <center >
            <asp:DataList  ID="DataList1"  runat="server" RepeatColumns="1" CellPadding="0"   Width="100%" RepeatDirection="Horizontal">

                <ItemTemplate >
                    <div style="padding:0px ">
                        <table style="width:100%; height: auto; vertical-align: top">
                            <tr>
                                <td style="width:100%; height: auto;vertical-align: top">
                                    <table align="left" style="width:100%;padding:20px; height: auto; border: 1px solid; vertical-align: top">
                                        <tr>
                                            <td align="left" style="width:5%; height: auto">
                                                <i class="fa fa-bell " style="color:yellow;text-align: center;font-size: 35px;text-shadow: 0 0 5px black"></i>
                                            </td>
                                            <td align="Left" style="width:70%; height: auto">
                                                <asp:Label ID="NotificationsLabel" runat="server" Text='<%#Eval("Notification") %>' Font-Size="15px" Font-Names="Roboto"></asp:Label>
                                            </td>
                                             <td align="right" style="width:25%; height: auto">
                                                <table style="width:auto; height: auto">
                                                    <tr>
                                                        <td style="width:auto; height: auto">
                                                            <asp:Label ID="Time" runat="server" Text='<%#Eval("Time") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width:auto; height: auto">
                                                            <asp:Label ID="Date" runat="server" Text='<%#Eval("Date") %>' Font-Size="15px" Font-Names="Roboto" Font-Italic="True"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        
                                           
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                   
                    
                   </div>
                </ItemTemplate>
            </asp:DataList>
        </center>
                        </div>
                    <div style="width:100%; margin:10px 0;" align="center">
                                <asp:Button ID="Button4" runat="server" Text="<<"  CssClass="paggingbtn" OnClick="Button4_Click1"></asp:Button>
                                <asp:Button ID="Button7" runat="server" Text="<"  CssClass="paggingbtn" OnClick="Button7_Click"></asp:Button>
                                <asp:Button ID="Button8" runat="server" Text=">"  CssClass="paggingbtn" OnClick="Button8_Click"></asp:Button>
                                <asp:Button ID="Button9" runat="server" Text=">>"  CssClass="paggingbtn" OnClick="Button9_Click"></asp:Button>
                            </div>
                            </td>
                        </tr>
                    </table>
               
</asp:Content>
