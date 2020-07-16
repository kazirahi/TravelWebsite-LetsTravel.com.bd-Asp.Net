<%@ Page Title="Hotel Services" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HotelServices.aspx.cs" Inherits="ExploreBangla.Pages.HotelServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .hoteltbl {
            
            box-shadow: 0px 0px 10px gray;
        }

            .hoteltbl:hover {
                background-color: #eeeeee;
                box-shadow: 0px 0px 10px gray;
            }
    </style>
    
    
    <h1 style=" color: #808080; padding-left: 20px; border-left: 5px solid #d00040">Hotel Service</h1>
    <div style="width: 100%; height: auto">
        <asp:DataList align="center" ID="DataList1" runat="server" CellPadding="3" RepeatColumns="5" RepeatDirection="Horizontal" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table class="hoteltbl" align="center" style="width: 220px;padding:0 ;background-color: white; height: 190px; vertical-align: top ">
                                             <asp:Image  style="padding:0px; box-shadow:0px 0px 10px gray; width: 220px;border-top-left-radius:10px; border-top-right-radius: 10px" ID="Image3" runat="server"  Height="180" ImageAlign="Middle" ImageUrl='<%#Eval("HotelImageUrl") %>' CssClass="htlimage" />
                                             <tr>
                                                    <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                                        <div style="text-align: center;font-family:Arial, Helvetica, sans-serif; font-weight: bold; font-size:14px"><%#Eval("HotelName") %></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                                        <p style="text-align: center;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><%#Eval("HotelDescription") %></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                                        <div style="text-align: left; font-family:Arial, Helvetica, sans-serif; font-size: 13px; color: #808080"> <i class="fa fa-map-marker"></i> <%#Eval("Adrees") %></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                                        <div style="text-align: left;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><i class="fa fa-phone" ></i> <%#Eval("HotelContactNo") %></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                                        <div style="text-align: left;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><i class=" fa fa-bed" ></i> <span style="color: #d00040; font-weight: bold"> <%#Eval("HoteleStatus") %> </span></div>
                                                    </td>
                                             
                                                 
                                   
                                    </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [HotelInfo]"></asp:SqlDataSource>
    </div>
</asp:Content>
