<%@ Page Title="Admin Restaurent" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminRestaurentInformation.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.AdminRestaurentInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script>
        function myFunction() {
            var x = document.getElementById("Insert");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
        function myFunction1() {
            var x = document.getElementById("ModifyDiv");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>

    <div style="width: 100%; height: auto">
        <div style="width: 100%; height: auto">
           
            <table style="width: 100%; height: auto">
                <tr>
                    <td style="width: 100%; height: auto">
                        <h1 style="color: gray">Restaurent Information</h1>
                    </td>
                    <td align="right" style="width: 100%; height: auto">
                         <button type="button" style="width:150px; height: 50px; border: none; background-color: #d00040; color: white; font-weight: bold; font-size: 18px" onclick="myFunction1()" >Modify Data</button>

                    </td>
                    
                    <td align="right" style="width: 100%; height: auto">
                        <button type="button" style="width:150px; height: 50px; border: none; background-color: #4285f4; color: white; font-weight: bold; font-size: 18px" onclick="myFunction()" >Insert Data</button>
                    </td>
                    
                </tr>
            </table>
        </div>
    </div>


    <div id="Insert" style="display:none ">
        <table align="center" style="width:100%; height: auto">
            <tr>
                <td align="center" style="width:100%; height: auto;">
                    <table align="center" style="width:100%; height: auto">
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label1" runat="server" Text="Place Name:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:DropDownList ID="DropDownList1" runat="server" style="width: 100%; height:25px" DataSourceID="SqlDataSource2" DataTextField="PlaceName" DataValueField="ID"   AppendDataBoundItems="True" Font-Size="1.2em" Font-Bold="True" Font-Names="Roboto" CausesValidation="False"  align="center">
            <asp:ListItem Text=" -- Select Place -- " Value="0"> </asp:ListItem>
           

        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID],[PlaceName] FROM [PlaceInfo] order by PlaceName"></asp:SqlDataSource>
        
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label2" runat="server" Text="Restaurent ID:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="PlaceID" runat="server" placeholder="Insert Restaurant ID" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label3" runat="server" Text="Restaurent Name:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="HotelName" runat="server" placeholder="Insert Restaurent Name" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label4" runat="server" Text="Address:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="Address" runat="server" placeholder="Insert Address" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label5" runat="server" Text="Restaurent Description:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="HotelDescription" runat="server" placeholder="Insert Restaurent Description" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label6" runat="server" Text="Restaurent Status:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="HotelStatus" runat="server" placeholder="Insert Restaurent Status" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label7" runat="server" Text="Restaurent Image URL:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="HotelImageURL" runat="server" placeholder="Insert Restaurent Image Url" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label8" runat="server" Text="Restaurent Contact NO:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="HotelContactNo" runat="server" placeholder="Insert Restaurent Contact No" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="width:100%; height: auto;">
                    <asp:Button ID="InsertHotel" runat="server" Text="Insert" BackColor="#4285F4" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="50px" OnClick="InsertHotel_Click" Width="251px" />
                </td>
            </tr>
        </table>
    </div>
    <div id="ModifyDiv">
        <h2 style="color: gray">Restaurent Information (Update & Delete)</h2>
        <table style="width: 100%; height: auto">
            <tr>
                <td style="width: 5%; height: auto">
                    <h4>ID</h4>
                </td>
                <td style="width: 10%; height: auto">
                    <h4>PlaceName</h4>
                </td>
                <td style="width: 13%; height: auto">
                    <h4>RestaurentName</h4>
                </td>
                <td style="width: 13%; height: auto">
                    <h4>Address</h4>
                </td>
                <td style="width: 13%; height: auto">
                    <h4>ContactNo</h4>
                </td>
                <td style="width: 10%; height: auto">
                    <h4>Description</h4>
                </td>
                <td style="width: 10%; height: auto">
                    <h4>RestaurentStatus</h4>
                </td>
                <td style="width: 9%; height: auto">
                    <h4 style="margin-left: 0px">ImageURL</h4>
                </td>
                <td style="width: 10%; height: auto">
                    <h4>Action</h4>
                </td>
            </tr>
        </table>

   <asp:DataList ID="DataList1" runat="server" Width="100%" DataSourceID="SqlDataSource1">
            <ItemTemplate> 
                <table style="width: 100%; height: auto ; border: 1px solid black; box-shadow: 0 0 5px gray">
            <tr>
                <td style="width: 5%; height: auto">
                    <asp:Label ID="HotelID" runat="server" BorderStyle="None" Text='<%# Eval("ID") %>' Width="29px"></asp:Label>
                </td>
                <td style="width: 6%; height: auto">
                    <asp:TextBox ID="HotelPlaceName" runat="server" BorderStyle="None" Text='<%# Eval("PlaceName") %>' Width="90px"></asp:TextBox>
                </td>
                <td style="width: 10%; height: auto">
                    <asp:TextBox ID="HotelHotelName" runat="server" BorderStyle="None" Text='<%# Eval("RestaurentName") %>' Width="106px"></asp:TextBox>
                </td>
                <td style="width: 10%; height: auto">
                    <asp:TextBox ID="HotelAddress" runat="server" BorderStyle="None" Text='<%# Eval("Adrees") %>' Width="111px"></asp:TextBox>
                </td>
                <td style="width: 10%; height: auto">
                    <asp:TextBox ID="HotelContactNo1" runat="server" BorderStyle="None" Text='<%# Eval("RestaurentContactNo") %>' Width="102px"></asp:TextBox>
                </td>
                <td style="width: 10%; height: auto">
                    <asp:TextBox ID="HotelDescription1" runat="server" BorderStyle="None" Text='<%# Eval("RestaurentDescription") %>' Height="60px" TextMode="MultiLine" Width="124px"></asp:TextBox>
                </td>
                <td style="width: 8%; height: auto">
                    <asp:TextBox ID="HotelStatus1" runat="server" BorderStyle="None" Text='<%# Eval("RestaurentStatus") %>' Width="65px"></asp:TextBox>
                </td>
                <td style="width: 13%; height: auto">
                    <asp:TextBox ID="hotelImageURl1" runat="server" BorderStyle="None" Text='<%# Eval("RestaurentImageUrl") %>' Width="105px"></asp:TextBox>
                </td>
                <td style="width: 10%; height: auto">
                    <table style="width: 100%; height: auto">
                        <tr>
                            <td>
                                 <asp:Button ID="UpdatteButton" runat="server"  Text="Update" ForeColor="White" BackColor="#d00040
                                     " BorderStyle="None" OnClick="UpdatteButton_Click"  Width="100%" Height="30" />
                            </td>
                        </tr>
                        <tr>
                            <td style=" height: auto">
                                
                                <asp:Button ID="Delete" runat="server" OnClientClick="return confirm('Are you sure you want to delete this Place ?')" Text="Delete" ForeColor="White" BackColor="#4285F4" BorderStyle="None" OnClick="Delete_Click" Width="100%" Height="30" />


                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [RestaurentInfo]"></asp:SqlDataSource>
        
    </div>
</asp:Content>
