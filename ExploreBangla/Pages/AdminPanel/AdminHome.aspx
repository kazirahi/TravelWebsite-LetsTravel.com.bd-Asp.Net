<%@ Page Title="Home-Admin" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.Admin_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .LinkButton1{
            text-decoration: none;
            color: darkgray;
            font-weight: bold; 
            font-family: Roboto
        }
        .LinkButton1:hover{
            color:white;
        }
       
        .auto-style1 {
            width: 100%;
            height: 30px;
        }
       
        .auto-style2 {
            height: auto;
            width: 27%;
        }
       
    </style>
    
    
    <div style="width: 100%; height: auto">
        <table style="width: 100%; height: auto;padding:0px">
            <tr>
                <td style="width: 20%; height: 130px;border-collapse:collapse; padding:5px; ">
                    <table style="width: 100%; height: 100%; border-collapse:collapse; padding:0;background-color: #4285f4">
                        <tr>
                            <td style="height: 100px;border-collapse:collapse; padding:0">
                                <table style="width:100%; height:100%;border-collapse:collapse">
                                    <tr>
                                        <td align="bottom" style="width: 50%; height: 100%; padding:10px">
                                            <asp:Label ID="PlaceCount" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label1" runat="server" Text="Place" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label>
                                        </td>
                                        <td align="center" style="width: 50%; height: 100%; background-color:rgba(0, 0, 0, 0.1) ; clip-path: polygon(30% 0, 100% 0%, 70% 100%, 0 100%);">
                                            <asp:Label ID="Label2" runat="server" Text="" Font-Bold="True" Font-Size="50px" ForeColor="white"><i class="fa fa-map" style="text-shadow: 0 0px 10px black"></i></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: 100%; background-color:rgba(0, 0, 0, 0.58) ">
                                <asp:LinkButton ID="LinkButton1" class="LinkButton1" runat="server" OnClick="LinkButton1_Click">More Info <i class="fa fa-arrow-circle-o-right"></i></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 20%; height: 130px;border-collapse:collapse; padding:5px">
                    <table style="width: 100%; height: 100%; border-collapse:collapse; padding:0;background-color: #2CAE66">
                        <tr>
                            <td style="height: 100px;border-collapse:collapse; padding:0">
                                <table style="width:100%; height:100%;border-collapse:collapse">
                                    <tr>
                                        <td align="bottom" style="width: 50%; height: 100%; padding:10px">
                                            <asp:Label ID="BlogCount" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label4" runat="server" Text="Blog" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label>
                                        </td>
                                        <td align="center" style="width: 50%; height: 100%; background-color:rgba(0, 0, 0, 0.1) ; clip-path: polygon(30% 0, 100% 0%, 70% 100%, 0 100%);">
                                            <asp:Label ID="Label5" runat="server" Text="" Font-Bold="True" Font-Size="50px" ForeColor="white" ><i class="fa fa-rss" style="text-shadow: 0 0px 10px black"></i></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: 100%; background-color:rgba(0, 0, 0, 0.58) ">
                                <asp:LinkButton ID="LinkButton2" class="LinkButton1" runat="server" OnClick="LinkButton2_Click" >More Info <i class="fa fa-arrow-circle-o-right"></i></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 25%; height: 130px;border-collapse:collapse; padding:5px">
                    <table style="width: 100%; height: 100%; border-collapse:collapse; padding:0;background-color: #DF6589">
                        <tr>
                            <td style="height: 100px;border-collapse:collapse; padding:0">
                                <table style="width:100%; height:100%;border-collapse:collapse">
                                    <tr>
                                        <td align="bottom" style="width: 50%; height: 100%; padding:10px">
                                            <asp:Label ID="NotificationCount" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label6" runat="server" Text="Notification" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label>
                                        </td>
                                        <td align="center" style="width: 50%; height: 100%; background-color:rgba(0, 0, 0, 0.1) ; clip-path: polygon(30% 0, 100% 0%, 70% 100%, 0 100%);">
                                            <asp:Label ID="Label7" runat="server" Text="" Font-Bold="True" Font-Size="50px" ForeColor="white"><i class="fa fa-bell" style="text-shadow: 0 0px 10px black"></i></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: 100%; background-color:rgba(0, 0, 0, 0.58) ">
                                <asp:LinkButton ID="LinkButton3" class="LinkButton1" runat="server" OnClick="LinkButton3_Click1" >More Info <i class="fa fa-arrow-circle-o-right"></i></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 25%; height: 130px;border-collapse:collapse; padding:5px">
                    <table style="width: 100%; height: 100%; border-collapse:collapse; padding:0;background-color: #EEA47F">
                        <tr>
                            <td style="height: 100px;border-collapse:collapse; padding:0">
                                <table style="width:100%; height:100%;border-collapse:collapse">
                                    <tr>
                                        <td align="bottom" style="width: 50%; height: 100%; padding:10px">
                                            <asp:Label ID="UserCount" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label8" runat="server" Text="User" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label>
                                        </td>
                                        <td align="center" style="width: 50%; height: 100%; background-color:rgba(0, 0, 0, 0.1) ; clip-path: polygon(30% 0, 100% 0%, 70% 100%, 0 100%);">
                                            <asp:Label ID="Label9" runat="server" Text="" Font-Bold="True" Font-Size="50px" ForeColor="white"><i class="fa fa-user-plus" style="text-shadow: 0 0px 10px black"></i></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: 100%; background-color:rgba(0, 0, 0, 0.58) ">
                                <asp:LinkButton ID="LinkButton4" class="LinkButton1" runat="server" OnClick="LinkButton4_Click" >More Info <i class="fa fa-arrow-circle-o-right"></i></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 25%; height: 130px;border-collapse:collapse; padding:5px">
                    <table style="width: 100%; height: 100%; border-collapse:collapse; padding:0;background-color: #d00040">
                        <tr>
                            <td style="height: 100px;border-collapse:collapse; padding:0">
                                <table style="width:100%; height:100%;border-collapse:collapse">
                                    <tr>
                                        <td align="bottom" style="width: 50%; height: 100%; padding:10px">
                                            <asp:Label ID="HotelCount" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label10" runat="server" Text="Hotel" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label>
                                        </td>
                                        <td align="center" style="width: 50%; height: 100%; background-color:rgba(0, 0, 0, 0.1) ; clip-path: polygon(30% 0, 100% 0%, 70% 100%, 0 100%);">
                                            <asp:Label ID="Label11" runat="server" Text="" Font-Bold="True" Font-Size="50px" ForeColor="white"><i class="fa fa-hotel" style="text-shadow: 0 0px 10px black"></i></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: 100%; background-color:rgba(0, 0, 0, 0.58) ">
                                <asp:LinkButton ID="LinkButton5" class="LinkButton1" runat="server" OnClick="LinkButton5_Click" >More Info <i class="fa fa-arrow-circle-o-right"></i></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 25%; height: 130px;border-collapse:collapse; padding:5px">
                    <table style="width: 100%; height: 100%; border-collapse:collapse; padding:0;background-color: #968D32">
                        <tr>
                            <td style="height: 100px;border-collapse:collapse; padding:0">
                                <table style="width:100%; height:100%;border-collapse:collapse">
                                    <tr>
                                        <td align="bottom" style="width: 50%; height: 100%; padding:10px">
                                            <asp:Label ID="RestaurentCount" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label12" runat="server" Text="Restaurent" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label>
                                        </td>
                                        <td align="center" style="width: 50%; height: 100%; background-color:rgba(0, 0, 0, 0.1) ; clip-path: polygon(30% 0, 100% 0%, 70% 100%, 0 100%);">
                                            <asp:Label ID="Label13" runat="server" Text="" Font-Bold="True" Font-Size="50px" ForeColor="white"><i class="fa fa-coffee" style="text-shadow: 0 0px 10px black"></i></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: 100%; background-color:rgba(0, 0, 0, 0.58) ">
                                <asp:LinkButton ID="LinkButton6" class="LinkButton1" runat="server" OnClick="LinkButton6_Click"  >More Info <i class="fa fa-arrow-circle-o-right"></i></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 25%; height: 130px;border-collapse:collapse; padding:5px">
                    <table style="width: 100%; height: 100%; border-collapse:collapse; padding:0;background-color: #7e57c2">
                        <tr>
                            <td style="height: 100px;border-collapse:collapse; padding:0">
                                <table style="width:100%; height:100%;border-collapse:collapse">
                                    <tr>
                                        <td align="bottom" style="width: 50%; height: 100%; padding:10px">
                                            <asp:Label ID="ClientCount" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label14" runat="server" Text="Client" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label>
                                        </td>
                                        <td align="center" style="width: 50%; height: 100%; background-color:rgba(0, 0, 0, 0.1) ; clip-path: polygon(30% 0, 100% 0%, 70% 100%, 0 100%);">
                                            <asp:Label ID="Label15" runat="server" Text="" Font-Bold="True" Font-Size="50px" ForeColor="white"><i class="fa fa-user-circle-o" style="text-shadow: 0 0px 10px black"></i></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: 100%; background-color:rgba(0, 0, 0, 0.58) ">
                                <asp:LinkButton ID="LinkButton7" class="LinkButton1" runat="server" OnClick="LinkButton7_Click"  >More Info <i class="fa fa-arrow-circle-o-right"></i></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 25%; height: 130px;border-collapse:collapse; padding:5px">
                    <table style="width: 100%; height: 100%; border-collapse:collapse; padding:0;background-color: #793A38">
                        <tr>
                            <td style="height: 100px;border-collapse:collapse; padding:0">
                                <table style="width:100%; height:100%;border-collapse:collapse">
                                    <tr>
                                        <td align="bottom" style="width: 50%; height: 100%; padding:10px">
                                            <asp:Label ID="AdminCount" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label><br />
                                            <asp:Label ID="Label16" runat="server" Text="Admin" Font-Bold="True" Font-Size="X-Large" ForeColor="#CCCCCC"></asp:Label>
                                        </td>
                                        <td align="center" style="width: 50%; height: 100%; background-color:rgba(0, 0, 0, 0.1) ; clip-path: polygon(30% 0, 100% 0%, 70% 100%, 0 100%);">
                                            <asp:Label ID="Label17" runat="server" Text="" Font-Bold="True" Font-Size="50px" ForeColor="white"><i class="fa fa-user-secret" style="text-shadow: 0 0px 10px black"></i></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: 100%; background-color:rgba(0, 0, 0, 0.58) ">
                                <asp:LinkButton ID="LinkButton8" class="LinkButton1" runat="server" OnClick="LinkButton8_Click"   >More Info <i class="fa fa-arrow-circle-o-right"></i></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div style="height: auto:; width:100%;">
        <table style="height: auto;padding:10px; width:100%;">
            <tr>
                <td style="height: auto; width:100%;">
                    <h2>Landing Page</h2>
                </td>
            </tr>
        </table>
         <table align="center" style="height: 0px;padding:5px; width:100%;background-color: #9FC131">
            <tr>
                <td align="center" style="height: auto; width:30%;">
                    <h4>Main Heading</h4>
                </td>
                <td align="center" style="height: auto; width:30%;">
                    <h4>Sub Heading</h4>
                </td>
                <td align="center" style="height: auto; width:30%;">
                    <h4>Heading Image</h4>
                </td>
                <td align="center" style="height: auto; width:10%;">
                    <h4>Action</h4>
                </td>
            </tr>
        </table>

        <asp:DataList ID="DataList1" DataKeyField="ID" runat="server" Width="100%" RepeatColumns="1" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table style="height: auto;padding:50px; width:100%;background-color: #efefef">
            <tr>
                <td align="center" style="height: auto; width:30%;vertical-align: top">
                    <asp:Label ID="ID" runat="server" Text='<%# Eval("ID") %>' Visible="false"></asp:Label>
                    <asp:TextBox ID="MainHeading" runat="server" BackColor="Transparent" BorderStyle="None" Font-Bold="True" ForeColor="Black" TextMode="MultiLine" Width="100%" Height="182px" Text='<%# Eval("MainHeading") %>'></asp:TextBox>
                </td>
                <td align="center" style="height: auto; width:30%;vertical-align: top">
                    <asp:TextBox ID="SubHeadingTextBox" runat="server" BackColor="Transparent" BorderStyle="None" Font-Bold="True" Height="183px" Width="100%" Text='<%# Eval("SubHeading") %>' TextMode="MultiLine"></asp:TextBox>
                </td>
                <td align="center" style="height: auto; width:30%;vertical-align: top; padding: 5px">
                    <asp:Image ID="HeadingImage" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("MainImage")) %>' ImageAlign="Middle" Width="100%" Height="130px" /><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                    <asp:Button ID="UploadButton" runat="server" Text="Upload" BorderStyle="None" Width="100px" BackColor="#D00040" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="30px" OnClick="UploadButton_Click" />
                </td>
                <td align="center" style="height: auto; width:10%;">
                    <asp:Button ID="UpdateButton" runat="server" Text="Update" BackColor="#D00040" BorderStyle="None" Font-Bold="True" style="padding: 10px; border-radius:10px" Font-Size="Large" ForeColor="White" OnClick="UpdateButton_Click" />
                </td>
            </tr>
        </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [LandingPage]"></asp:SqlDataSource>

        
    </div>
    <div style="width: 100%; height: auto">
        <table style="width: 100%; height: auto">
            <tr>
                <td style="width: 50%; height: auto; vertical-align: top">
                    <table style="width: 100%; height: auto;background-color: #9FC131;padding:5px">
                        <tr>
                            <td align="Left" style="width: 20%; height: auto;padding:7px">
                                <h4><a href="AdminBlog.aspx" style="text-decoration:none; color: black">Blog Name</a></h4>
                            </td>
                            <td align="right" style="width: 80%; height: auto;padding:7px">
                                <h4>Status</h4>
                            </td>
                        </tr>
                    </table>
                    <div style="width: 100%; height: 350px;overflow: scroll">
                         
                                <asp:DataList ID="DataList2" runat="server" Width="100%"  DataSourceID="SqlDataSource2" RepeatColumns="1">
                        <ItemTemplate>
                            <table style="width: 100%; height: 100%; padding: 5px; box-shadow:0 0 5px black">
                        <tr>
                            <td  style="width: 80%; height: auto">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("BlogName") %>' ForeColor="Black" Font-Size="Medium" Font-Bold="False" Width="100%"></asp:Label>
                            </td>
                            <td align="center" style="width: 20%; height: 100%;background-color: yellowgreen;">
                                <asp:Label style=" border-radius: 5px" ID="Label18" runat="server" Text='<%# Eval("Status") %>' BorderStyle="None" Font-Bold="False" Font-Size="Medium" Width="100%"></asp:Label>
                            </td>
                        </tr>
                    </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [BlogName], [Status] FROM [BlogUpdate]"></asp:SqlDataSource>
                    
                            
                    </div>
                    
                </td>
                <td style="width: 50%; height: auto; vertical-align: top; padding-left: 60px">
                    <table style="width: 100%; height: auto;background-color: #4285f4"">
                        <tr>
                            <td align="Left" style="width: 50%; height: auto;padding:7px">
                                <h4><a href="AddPlaceInfo.aspx" style="text-decoration:none; color: black">Place Name</a></h4>
                            </td>
                            <td align="right" style="width: 50%; height: auto;padding:7px">
                                <h4>Position</h4>
                            </td>
                        </tr>
                    </table>
                    <div style="width: 100%; height: 350px; overflow: scroll">
                    <asp:DataList ID="DataList3" runat="server" Width="100%" DataSourceID="SqlDataSource3" RepeatColumns="1">
                        <ItemTemplate>
                            <table style="width: 100%; height: auto; padding: 5px; box-shadow: 0 0 5px black">
                        <tr>
                            <td  style="width: 80%; height: auto">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("PlaceName") %>' ForeColor="Black" Font-Size="Medium" Font-Bold="False" Width="100%"></asp:Label>
                            </td>
                            <td align="center" style="width: 20%; height: auto;">
                                <asp:Label style=" border-radius: 5px" ID="Label18" runat="server" Text='<%# Eval("position") %>' BorderStyle="None" Font-Bold="False" Font-Size="Medium" Width="100%"></asp:Label>
                            </td>
                        </tr>
                    </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [PlaceName], [position] FROM [PlaceInfo]"></asp:SqlDataSource>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div style="width: 100%; height: auto; padding-top: 30px;padding-bottom:30px; background-color:#efefef">
        <table style="width: 100%; height: auto">
            <tr>
                <td style="width: 33%; height: auto;padding-right:20px">
                    <table style="width: 100%; height: auto;background-color: #EEA47F">
                        <tr>
                            <td align="left" style="width: 50%; height: auto;padding-left:5px">
                                <h4>
                                   <a href="AdminHotelInformation.aspx" style="text-decoration:none; color: black">Hotel Name</a>
                                </h4>
                            </td >
                            <td align="right" style="width: 50%; height: auto;padding-right:5px">
                                <h4>
                                    PlaceName
                                </h4>
                            </td>
                        </tr>
                    </table>
                    <div style="width: 100%; height: 175px; overflow: scroll">
                    <asp:DataList ID="DataList4" Width="100%" runat="server" DataSourceID="SqlDataSource4">
                        <ItemTemplate>
                            <table style="width: 100%; height: auto; box-shadow: 0 0 5px black; background-color: white">
                        <tr>
                            <td align="left" style="width: 50%; height: auto;padding-left:5px">
                                <asp:Label ID="Label19" runat="server" BorderStyle="None" ForeColor="Black" Font-Size="Small" Font-Bold="False" Text='<%# Eval("HotelName") %>'></asp:Label>
                            </td >
                            <td align="right" style="width: 50%; height: auto;padding-right:5px">
                                <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Black" Text='<%# Eval("PlaceName") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [HotelName], [PlaceName] FROM [HotelInfo]"></asp:SqlDataSource>
                    </div>
                </td>
                <td style="width: 33%; height: auto; vertical-align: top">
                    <table style="width: 100%; height: auto;background-color: yellowgreen">
                        <tr>
                            <td align="left" style="width: 50%; height: auto;padding-left:5px">
                                <h4>
                                   <a href="AdminRestaurentInformation.aspx" style="text-decoration:none; color: black">Restaurent Name</a>
                                </h4>
                            </td >
                            <td align="right" style="width: 50%; height: auto;padding-right:5px">
                                <h4>
                                    PlaceName
                                </h4>
                            </td>
                        </tr>
                    </table>
                    <div style="width: 100%; height: 175px; overflow: scroll">
                    <asp:DataList ID="DataList5" Width="100%" runat="server" DataSourceID="SqlDataSource5">
                        <ItemTemplate>
                            <table style="width: 100%; height: auto; box-shadow: 0 0 5px black; background-color: white">
                        <tr>
                            <td align="left" style="width: 50%; height: auto;padding-left:5px">
                                <asp:Label ID="Label19" runat="server" BorderStyle="None" ForeColor="Black" Font-Size="Small" Font-Bold="False" Text='<%# Eval("RestaurentName") %>'></asp:Label>
                            </td >
                            <td align="right" style="width: 50%; height: auto;padding-right:5px">
                                <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Black" Text='<%# Eval("PlaceName") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [PlaceName], [RestaurentName] FROM [RestaurentInfo]"></asp:SqlDataSource>
                    </div>
                </td>
                <td style="width: 33%; height: auto; vertical-align: top; padding-left:20px">
                    <table style="width: 100%; height: auto;background-color: lightskyblue">
                        <tr>
                            <td align="left" style="width: 50%; height: auto;padding-left:5px">
                                <h4>
                                   <a href="AdminNewUser.aspx" style="text-decoration:none; color: black">User Name</a>
                                </h4>
                            </td >
                            <td align="right" style="width: 50%; height: auto;padding-right:10px">
                                <h4>
                                    Email
                                </h4>
                            </td>
                        </tr>
                    </table>
                    <div style="width: 100%; height: 175px; overflow: scroll">
                    <asp:DataList ID="DataList6" Width="100%" runat="server" DataSourceID="SqlDataSource6">
                        <ItemTemplate>
                            <table style="width: 100%; height: auto; box-shadow: 0 0 5px black; background-color: white">
                        <tr>
                            <td align="left" style="padding-left:5px" class="auto-style2">
                                <asp:Label ID="Label19" runat="server" BorderStyle="None" ForeColor="Black" Font-Size="Small" Font-Bold="False" Text='<%# Eval("FirstName") %>'></asp:Label>
                            </td >
                            <td align="right" style="width: 20%; height: auto;padding-right:5px">
                                <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="Black" Text='<%# Eval("EmailID") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [EmailID], [FirstName], [LastName] FROM [Signup]"></asp:SqlDataSource>
                    </div>
                </td>
                </td>
            </tr>
        </table>
    </div>
    <div style="width: 100%; height: auto; padding-top:50px">
        <table style="width: 100%; height: auto">
            <tr>
                <td style="width: 50%; height: auto; vertical-align: top; padding-right:10px">
                    <table style="background-color:lightskyblue;padding:5px" class="auto-style1">
                        <tr>
                            <td align="Left" style="width: 50%; height: 20px;padding:7px">
                                <h4><a href="AdminNotification.aspx" style="text-decoration:none; color: black">Client Name</a></h4>
                            </td>
                            <td align="right" style="width: 50%; height: 20px;padding:7px">
                                <h4>Comment</h4>
                            </td>
                        </tr>
                    </table>
                    <div style="width: 100%; height: 350px; overflow: scroll">
                    <asp:DataList ID="DataList7" runat="server" Width="100%" DataSourceID="SqlDataSource7" RepeatColumns="1">
                        <ItemTemplate>
                            <table style="width: 100%; height: auto; padding: 5px; box-shadow:0 0 5px black">
                        <tr>
                            <td  style="width: 10%; height: auto">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProfileName") %>' ForeColor="Black" Font-Size="Small" Font-Bold="False" Width="100%"></asp:Label>
                            </td>
                            <td align="left" style="width: 90%; height: auto;">
                                <asp:Label style=" border-radius: 5px" ID="Label18" runat="server" Text='<%# Eval("CommentDescription") %>' BorderStyle="None" Font-Bold="False" Font-Size="Small" Width="100%"></asp:Label>
                            </td>
                        </tr>
                    </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ProfileName], [CommentDescription] FROM [CommentTable]"></asp:SqlDataSource>
                    </div>
                </td>
                <td style="width: 50%; height: auto; vertical-align: top; padding-left: 10px">
                    <table style="width: 100%; height: auto;background-color: #DF6589"">
                        <tr>
                            <td align="Left" style="width: 50%; height: auto;padding:7px">
                                <h4><a href="AdminComment.aspx" style="text-decoration:none; color: black">Comment</a></h4>
                            </td>
                        </tr>
                    </table>
                    <div style="width: 100%; height: 350px; overflow: scroll">
                    <asp:DataList ID="DataList8" runat="server" Width="100%" DataSourceID="SqlDataSource8" RepeatColumns="1">
                        <ItemTemplate>
                            <table style="width: 100%; height: auto; padding: 5px; box-shadow: 0 0 5px black">
                        <tr>
                            <td  style="width: 100%; height: auto">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Notification") %>' ForeColor="Black" Font-Size="Small" Font-Bold="False" Width="100%"></asp:Label>
                            </td>
                        </tr>
                    </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Notification] FROM [AdminNotifications]"></asp:SqlDataSource>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
