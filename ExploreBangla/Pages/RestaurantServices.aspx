<%@ Page Title="Restaurant Services" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RestaurantServices.aspx.cs" Inherits="ExploreBangla.Pages.RestaurantServices" %>
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
    <h1 style=" color: #808080; padding-left: 20px; border-left: 5px solid #d00040">Restaurant Service</h1>
    <div style="width: 100%; height: auto">
        
                     <asp:DataList align="center" ID="DataList6" runat="server" RepeatColumns="5"  CellPadding="3" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                                <table class="hoteltbl" align="center" style="width: 220px;padding:5px; height: 200px; vertical-align: top ">
                                    <asp:Image style="padding:0px;border-top-left-radius:10px;border-top-right-radius:10px; width: 220px; box-shadow:0 0 10px gray" ID="Image1" runat="server"  Height="180" ImageAlign="Middle" ImageUrl='<%#Eval("RestaurentImageUrl") %>' CssClass="htlimage" />
                                  
                                  
                                    <tr>
                                        <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px;vertical-align: top">
                                            <div style="text-align: center;font-family:Arial, Helvetica, sans-serif; font-weight: bold; font-size:14px"><%#Eval("RestaurentName") %></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px;vertical-align: top">
                                            <p style="text-align: center;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><%#Eval("RestaurentDescription") %></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  style="width: 100%; height: auto;padding:15px 5px 5px 20px;vertical-align: top">
                                            <div style="text-align: left; font-family:Arial, Helvetica, sans-serif; font-size: 13px; color: #808080"><i class="fa fa-map-marker"></i> <%#Eval("Adrees") %></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px;vertical-align: top">
                                            <div style="text-align: left;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><i class="fa fa-phone"></i> <%#Eval("RestaurentContactNo") %></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px;vertical-align: top">
                                            <div style="text-align: left;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><i class="fa fa-clock-o"></i> <span style="color: red;font-weight: bold"> <%#Eval("RestaurentStatus") %></span></div>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                    </asp:DataList>
                                    

    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [RestaurentInfo]"></asp:SqlDataSource>
</asp:Content>
