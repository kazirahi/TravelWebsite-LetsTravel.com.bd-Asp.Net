<%@ Page Title="Transport Services" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TransportService.aspx.cs" Inherits="ExploreBangla.Pages.TransportService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <table style="width: 100%; height: auto;">
       <tr>
           <td style="width: 50%; height: auto;">
                <h1 style=" color: #808080; padding-left: 20px; border-left: 5px solid #d00040">Transport System</h1>
           </td>
           <td style="width: 100%; height: auto;">
               How to go to: <asp:DropDownList ID="DropDownList1" runat="server" Style="padding: 0px; font-size: 20px; margin-left: 0px; margin-right: 0px; margin-top: 0px;" Height="65px" Width="379px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="PlaceName" DataValueField="ID" Font-Bold="True" Font-Names="Roboto" BorderStyle="None" BackColor="Gray" ForeColor="White" ToolTip="Find Place">
                <asp:ListItem Text=" -- Select Place -- " Value="0"> </asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID],[PlaceName] FROM [PlaceInfo] order by PlaceName"></asp:SqlDataSource>

           </td>
       </tr>
   </table>
    <div style="width: 100%; height: auto; background: #efefef ; padding: 40px">
        
        <asp:DataList align="center" ID="DataList2" runat="server" Width="80%" >
            <ItemTemplate>
                <table align="center" style="width: 100%; height: auto; padding: 40px; background-color: white; border: 1px solid black">
            <tr>
                <td style="width: 100%; height: auto">
                    <h2>How to go to <%# Eval("PlaceName") %></h2>
                </td>
            </tr>
            <tr>
                <td style="width: 100%; height: auto">
                    <p>
                        <%# Eval("TransportDescription") %>'
                    </p>
                </td>
            </tr>
        </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="width: 100%; height: auto; background: #efefef ; padding: 40px">
        
        <asp:DataList align="center" ID="DataList1" runat="server" Width="80%" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table align="center" style="width: 100%; height: auto; padding: 40px; background-color: white; border: 1px solid black">
            <tr>
                <td style="width: 100%; height: auto">
                    <h2>How to go to <%# Eval("PlaceName") %></h2>
                </td>
            </tr>
            <tr>
                <td style="width: 100%; height: auto">
                    <p>
                        <%# Eval("TransportDescription") %>'
                    </p>
                </td>
            </tr>
        </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [PlaceName], [TransportDescription] FROM [PlaceInfo]"></asp:SqlDataSource>
    </div>
</asp:Content>
