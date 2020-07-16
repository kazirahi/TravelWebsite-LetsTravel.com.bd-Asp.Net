<%@ Page Title="Client-Admin" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminClient.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.AdminClient" %>
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
                        <h1 style="color: gray">Client Information</h1>
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


    <div id="Insert" style="display: none">
        <table align="center" style="width:100%; height: auto">
            <tr>
                <td align="center" style="width:100%; height: auto;">
                    <table align="center" style="width:100%; height: auto">
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label1" runat="server" Text="Client Name:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="ClientIDTextBox" runat="server" placeholder="Insert Client ID" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label2" runat="server" Text="Client Name:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="ClientNameTextBox" runat="server" placeholder="Insert Client Name" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label3" runat="server" Text="Client Review:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="ClientReviewTextBox" runat="server" placeholder="Insert client review" Height="186px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label4" runat="server" Text="Show Status:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="ShowStatusTextBox" runat="server" placeholder="If show this article then 1/2/3 other wise its 100" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        
                        
                        
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label8" runat="server" Text="Client Image:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:FileUpload ID="ClientImage" runat="server" BorderStyle="None" Width="432px"></asp:FileUpload>
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
        <h2 style="color: gray">Client Information (Update & Delete)</h2>
        <table style="width: 100%; height: auto">
            <tr>
                <td style="width: 5%; height: auto">
                    <h4>Client ID</h4>
                </td>
                <td style="width: 11%; height: auto">
                    <h4>ClientName</h4>
                </td>
                <td style="width: 25%; height: auto">
                    <h4>Client Review</h4>
                </td>
                <td style="width: 13%; height: auto">
                    <h4>ClientImage</h4>
                </td>
                <td style="width: 6%; height: auto">
                    <h4>DisplayAction</h4>
                </td>
                <td style="width: 5%; height: auto">
                    <h4>Action</h4>
                </td>
                
            </tr>
        </table>

  <asp:DataList ID="DataList1" runat="server" Width="100%" DataSourceID="SqlDataSource1">
            <ItemTemplate> 
                <table style="width: 100%; height: auto ; border: 1px solid black; box-shadow: 0 0 5px gray">
            
                    <tr>
                <td style="width: 5%; height: auto">
                    <asp:Label ID="ClientID" runat="server" Text='<%# Eval("ID") %>' ></asp:Label>
                </td>
                <td style="width: 10%; height: auto">
                    <asp:TextBox runat="server" ID="ClientName" BorderStyle="None" BackColor="Transparent" ForeColor="#D00040" Width="100%" Text='<%# Eval("ClientName") %>'></asp:TextBox>
                </td>
                <td style="width: 10%; height: auto">
                    <asp:TextBox runat="server" ID="ClientReview" BorderStyle="None" Height="104px" TextMode="MultiLine" BackColor="Transparent" Width="100%" Text='<%# Eval("ClientReview") %>'></asp:TextBox>
                </td>
                <td style="width: 13%; height: auto;vertical-align: top">
                    <table style="width: 100%; height: auto; vertical-align: top">
                        <tr>
                            <td style="width: 50%; height: auto">
                                <asp:Image runat="server" ID="ClientImageShow" Height="80px" Width="100%" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("ClientImage")) %>'></asp:Image>
                            </td>
                            <td style="width: 50%; height: auto">
                                <asp:FileUpload runat="server" BorderStyle="None" Width="100%" ID="ClientImageUpdate" BackColor="Transparent"></asp:FileUpload><br />
                                <asp:Button runat="server" Text="Upload" ID="ClientImageUpdateButton" BackColor="#D00040" BorderStyle="None" ForeColor="White" OnClick="ClientImageUpdateButton_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td align="center" style="width: 5%; height: auto; border: 1px solid black">
                    <asp:TextBox align="center" runat="server" ID="DisplayAction" BorderStyle="None" BackColor="Transparent" ForeColor="#D00040" Width="100%" Text='<%# Eval("Display") %>'></asp:TextBox>
                </td>
                <td align="center" style="width: 5%; height: auto">
                    <asp:Button runat="server" ID="UpdateButton" Text="Update" BackColor="#D00040" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="30px" Width="100%" OnClick="UpdateButton_Click"  /><br /><br />
                    <asp:Button runat="server" Text="Delete" ID="DeleteButton" BackColor="#4285F4" BorderStyle="None" Font-Bold="True" Height="30px" Width="100%" OnClick="DeleteButton_Click" OnClientClick="return confirm('Are you sure you want to delete this Place ?')" ForeColor="White"/>
                </td>
                
            </tr>
        
                </table>
          </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Client]"></asp:SqlDataSource>
       
    </div>
</asp:Content>
