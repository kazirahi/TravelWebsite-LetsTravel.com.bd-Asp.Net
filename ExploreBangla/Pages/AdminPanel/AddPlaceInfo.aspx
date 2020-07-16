<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AddPlaceInfo.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.AddPlaceInfo" %>

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
    
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <div style="width: 100%; height: auto">

        <div style="width: 100%; height: auto">
           
            <table style="width: 100%; height: auto">
                <tr>
                    <td style="width: 100%; height: auto">
                        <h1 style="color: gray">Place Information</h1>
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
        
        <div id="Insert"  style="width: 100%; height: auto; display: none">
            
            <table id="table" style="width: 100%; height: auto" Visible="false" align="center">
                <tr>
                    <td style="width: 100%; height: auto">
                        <!-- add place form -->
                        
                            <table style="width:80%; height: auto" align="center" >
                                <tr>
                                    <td align="center" style="background-color: #808080; width:20%">
                                        <asp:Label runat="server" Text="Place ID:" Style="color: white" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="margin: 10px">
                                        <asp:TextBox Style="margin: 10px" ID="placeid" runat="server" placeholder="Insert Place ID" Width="249px" Height="27px" BorderStyle="None"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="background-color: #808080">
                                        <asp:Label runat="server" Text="Place Ranking:" Style="color: white" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td style="margin: 10px">
                                        <asp:TextBox Style="margin: 10px" ID="PlaceRanking" runat="server" placeholder="Insert Place Ranking No" Width="249px" Height="27px" BorderStyle="None"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="center" style="background-color: #808080">
                                        <asp:Label runat="server" Text="Place Name:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox Style="margin: 10px" Width="249px" Height="27px" placeholder="Insert Place Name" ID="placename" runat="server" BorderStyle="None"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="background-color: #808080">
                                        <asp:Label runat="server" Text="District ID:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox Style="margin: 10px" Width="249px" Height="27px" ID="districtid" placeholder="Insert District ID" runat="server" BorderStyle="None"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="background-color: #808080">
                                        <asp:Label runat="server" Text="District Name:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox Style="margin: 10px" Width="249px" Height="27px" placeholder="Insert District Name" ID="districtname" runat="server" BorderStyle="None"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="background-color: #808080">
                                        <asp:Label runat="server" Text="Place Description:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox Style="width: 300px; height: 100px; margin: 10px" ID="placedescription" placeholder="Insert Place Description" TextMode="MultiLine" runat="server" BorderStyle="None"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="background-color: #808080">
                                        <asp:Label runat="server" Text="Transport ID:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                            <td>
                                                <asp:TextBox Style="margin: 10px" Width="249px" Height="27px" ID="transportid" placeholder="Insert Transport ID" runat="server" BorderStyle="None"></asp:TextBox>
                                            </td>
                                </tr>
                                <tr>
                                    <td align="center" style="background-color:#808080">
                                        <asp:Label runat="server" Text="Transport Description:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="transportdescription" Style="width: 300px; height: 100px; margin: 10px" TextMode="MultiLine" placeholder="Insert Tramsport Description" runat="server" BorderStyle="None"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="background-color:#808080">
                                        <asp:Label runat="server" Text="Food ID:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox Style="margin: 10px" Width="249px" Height="27px" ID="foodid" runat="server" placeholder="Insert Food ID" BorderStyle="None"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="background-color:#808080">
                                        <asp:Label runat="server" Text="Food Name:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox Style="margin: 10px" Width="249px" Height="27px" ID="foodname" runat="server" placeholder="Insert Food Name" BorderStyle="None"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="background-color:#808080">
                                        <asp:Label runat="server" Text="Food Description:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="fooddescription" Style="width: 300px; height: 100px; margin: 10px" TextMode="MultiLine" placeholder="Insert Food Description" runat="server" BorderStyle="None"></asp:TextBox>
                                    </td>

                                </tr>

                                <tr>
                                    <td align="center" style="background-color:#808080">
                                        <asp:Label runat="server" Text="Place Image:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:FileUpload Style="margin: 10px" Width="249px" Height="27px" ID="placecoverimage" runat="server" BackColor="#4285F4" BorderStyle="Ridge"></asp:FileUpload>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblplacecoverimage" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td align="center" style="background-color:#808080">
                                        <asp:Label runat="server" Text="Food Image:" ForeColor="White" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:FileUpload Style="margin: 10px" Width="249px" Height="27px" ID="foodimage" runat="server" BackColor="#4285F4" BorderStyle="Ridge"></asp:FileUpload>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblfoodimage" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr align="center">
                                    <td colspan="3">
                                        <asp:Button Style="margin: 10px; border-radius: 15px" Width="249px" Height="40px" ID="submitbutton" runat="server" Text="Insert" OnClick="submitbutton_Click" BackColor="#D00040" BorderColor="Red" BorderStyle="Inset" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                                    </td>
                                    <tr>
                                        <td colspan="3" align="center">
                                            <asp:Label ID="lblsubmit" Style="margin: 10px" Width="249px" Height="27px" runat="server" Text=""></asp:Label>
                                        </td>
                                    </tr>
                                </tr>



                            </table>
                        
                    </td>
                </tr>
            </table>
            
        </div>
   
        
      <div id="ModifyDiv" style="">
          <table style="height: auto;width: 100%; background-color:#efefef">
              <tr>
                  <td align="center" style="height: auto;width: 100%">
                              Find the place for Modify: <asp:DropDownList ID="DropDownList1" runat="server" Style="margin: 0px; padding: 0px; font-size: 20px;" Height="65px" Width="379px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="PlaceName" DataValueField="ID" Font-Bold="True" Font-Names="Roboto" BorderStyle="None" BackColor="Gray" ForeColor="White" ToolTip="Find Place">
                <asp:ListItem Text=" -- Select Place -- " Value="0"> </asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID],[PlaceName] FROM [PlaceInfo] order by PlaceName"></asp:SqlDataSource>

                  </td>
              </tr>
              <tr>
                  <td align="center" style="height: auto;width: 100%">
                      <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Horizontal" Width="100%">
                <ItemTemplate>
                    <table style="width: 100%; height: auto">
                        <tr>
                            <td style="width: 30%; height: auto">
                                <h2>Place Information
                                </h2>
                            </td>

                            <td style="width: 30%; height: auto">
                                <h2>Food
                                </h2>
                            </td>

                            <td style="width: 30%; height: auto">
                                <h2>Transport
                                </h2>
                            </td>

                            <td style="width: 10%; height: auto">
                                <h2>Action
                                </h2>
                            </td>
                        </tr>
                    </table>
                    <table style="width: 100%; height: 496px; margin: 30px 0 30px 0; border: 1px solid black; box-shadow: 0 0 5px gray">
                        <tr>

                            <td style="width: 30%; height: auto; vertical-align: top">
                                <table style="width: 100%; height: auto">
                                    <tr>
                                        <td style="width: 100%; height: auto">
                                            <table style="width: 100%; height: auto">
                                                <tr>
                                                    <td style="width: 50%; height: auto">
                                                        <asp:Image ID="PlaceImage" runat="server" Height="120px" Width="100%" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("PlaceCImage")) %>' />
                                                    </td>
                                                    <td style="width: 50%; height: auto">
                                                        <table style="width: 100%; height: auto">
                                                            <tr>
                                                                <td style="width: 100%; height: auto">
                                                                    <asp:FileUpload ID="PlaceImageUpload" runat="server" BorderStyle="None" Width="100%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" style="width: 100%; height: auto">
                                                                    <asp:Button ID="PlaceImageUploadButton" runat="server" Text="Upload" BackColor="#D00040" BorderStyle="None" ForeColor="White" OnClick="PlaceImageUploadButton_Click" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto">ID:
                                            <asp:Label ID="ID" runat="server" Text='<%# Eval("ID") %>' BackColor="Transparent">></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto">PlaceID:<asp:TextBox ID="PlaceID" runat="server" BorderStyle="None" Width="80%" Text='<%# Eval("PlaceID") %>' BackColor="Transparent" ForeColor="#D00040" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto">PlaceName:<asp:TextBox ID="PlaceName" runat="server" BorderStyle="None" Width="75%" Text='<%# Eval("PlaceName") %>' BackColor="Transparent" Font-Bold="True" ForeColor="#D00040" Font-Size="Medium"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto">DistrictID:<asp:TextBox ID="DistrictID" runat="server" BorderStyle="None" Width="80%" Text='<%# Eval("DistrictID") %>' BackColor="Transparent" ForeColor="#D00040" Font-Size="Medium" Font-Bold="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto">DistrictName:<asp:TextBox ID="DistrictName" runat="server" BorderStyle="None" Width="70%" Text='<%# Eval("DistrictName") %>' BackColor="Transparent" ForeColor="#D00040" Font-Size="Medium" Font-Bold="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto">
                                            <p>PlaceDescription:</p>
                                            <asp:TextBox ID="PlaceDescription" runat="server" BorderStyle="None" Width="100%" Height="180px" TextMode="MultiLine" Text='<%# Eval("PlaceDescription") %>' BackColor="Transparent"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>





                            <td style="width: 30%; height: auto; vertical-align: top">
                                <table style="width: 100%; height: auto">
                                    <tr>
                                        <td style="width: 100%; height: auto">
                                            <table style="width: 100%; height: auto">
                                                <tr>
                                                    <td style="width: 50%; height: auto">
                                                        <asp:Image ID="FoodImage" runat="server" Height="120px" Width="100%" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("FoodImage")) %>' />
                                                    </td>
                                                    <td style="width: 50%; height: auto">
                                                        <table style="width: 100%; height: auto">
                                                            <tr>
                                                                <td style="width: 100%; height: auto">
                                                                    <asp:FileUpload ID="FoodImageUpload" runat="server" BorderStyle="None" Width="100%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" style="width: 100%; height: auto">
                                                                    <asp:Button ID="FoodImageUploadButton" runat="server" Text="Upload" BackColor="#D00040" BorderStyle="None" ForeColor="White" OnClick="FoodImageUploadButton_Click" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto">FoodID:<asp:TextBox ID="FoodID" runat="server" BorderStyle="None" Width="80%" Text='<%# Eval("FoodID") %>' BackColor="Transparent" ForeColor="#D00040" Font-Size="Medium" Font-Bold="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto">FoodName:<asp:TextBox ID="FoodName" runat="server" BorderStyle="None" Width="75%" Text='<%# Eval("FoodName") %>' BackColor="Transparent" ForeColor="#D00040" Font-Size="Medium" Font-Bold="True"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td style="width: 100%; height: auto">
                                            <p>FoodDescription:</p>
                                            <asp:TextBox ID="FoodDescription" runat="server" BorderStyle="None" Width="100%" Height="250px" TextMode="MultiLine" Text='<%# Eval("FoodDescription") %>' BackColor="Transparent"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>




                            <td style="width: 30%; height: auto; vertical-align: top">
                                <table style="width: 100%; height: 460px">

                                    <tr>
                                        <td style="width: 100%; height: auto">Transport ID:<asp:TextBox ID="TransportID" runat="server" BorderStyle="None" Width="70%" Text='<%# Eval("TransportID") %>' BackColor="Transparent" ForeColor="#D00040" Font-Size="Medium" Font-Bold="True"></asp:TextBox>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td style="width: 100%; height: auto;">
                                            <p>Transport Description:</p>
                                            <asp:TextBox ID="TransportDescription" runat="server" BorderStyle="None" Width="100%" Height="377px" TextMode="MultiLine" Text='<%# Eval("TransportDescription") %>' BackColor="Transparent"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>




                            <td style="width: 10%; height: auto">
                                <table style="width: 100%; height: auto">
                                    <tr>
                                        <td style="width: 100%; height: auto">
                                            <asp:Button Style="margin: 5px; border-radius: 7px" ID="UpdateButton" runat="server" Text="Update" BackColor="#4285F4" BorderStyle="None" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="36px" Width="82px" OnClick="UpdateButton_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto">
                                            <asp:Button Style="margin: 5px; border-radius: 7px" ID="DeleteButton" runat="server" Text="Delete" BackColor="#D00040" BorderStyle="None" Font-Bold="True" Font-Size="Small" ForeColor="White" Height="36px" Width="82px" OnClick="DeleteButton_Click" OnClientClick="return confirm('Are you sure you want to delete this Place ?')" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto">
                                            <asp:Label ID="warning" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
                  </td>
              </tr>
          </table>

            
       </div>
        
    </div>
</asp:Content>
