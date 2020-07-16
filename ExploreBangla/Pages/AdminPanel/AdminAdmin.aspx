<%@ Page Title="Admin-Admin" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminAdmin.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.AdminAdmin" %>
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
                        <h1 style="color: gray">Admin Information</h1>
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
                                <asp:Label ID="Label1" runat="server" Text="Admin ID:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="AdminID" runat="server" placeholder="Insert Admin ID" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label2" runat="server" Text="Admin username:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="adminusername" runat="server" placeholder="Insert Admin userame" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        
                        <tr>
                            <td align="center" style="width:20%; height: auto; background-color: #808080">
                                <asp:Label ID="Label4" runat="server" Text="Password:" ForeColor="White" Font-Bold="True" Font-Size="Large" Font-Names="Roboto"></asp:Label>
                            </td>
                            <td align="left" style="width:40%; height: auto;">
                                <asp:TextBox ID="password" runat="server" placeholder="Insert Password" Height="36px" Width="557px" BorderStyle="None"></asp:TextBox>
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
                <td style="width: 30%; height: auto">
                    <h4>Admin ID</h4>
                </td>
                <td style="width: 30%; height: auto">
                    <h4>Username</h4>
                </td>
                <td style="width: 30%; height: auto">
                    <h4>Password</h4>
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
                <td style="width: 30%; height: auto">
                    <asp:Label ID="AdminID" runat="server" Text='<%# Eval("ID") %>' ></asp:Label>
                </td>
                <td style="width: 30%; height: auto">
                    <asp:TextBox runat="server" ID="AdminUserName" BorderStyle="None" BackColor="Transparent" ForeColor="#D00040" Width="100%" Text='<%# Eval("username") %>'></asp:TextBox>
                </td>
                <td style="width: 30%; height: auto">
                    <asp:TextBox runat="server" ID="AdminPassword" BorderStyle="None"   BackColor="Transparent" Width="100%" Text='<%# Eval("password") %>'></asp:TextBox>
                </td>
                
                
                <td align="center" style="width: 10%; height: auto">
                    <asp:Button runat="server" ID="UpdateButton" Text="Update" BackColor="#D00040" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="30px" Width="100%" OnClick="UpdateButton_Click"  /><br /><br />
                    <asp:Button runat="server" Text="Delete" ID="DeleteButton" BackColor="#4285F4" BorderStyle="None" Font-Bold="True" Height="30px" Width="100%" OnClick="DeleteButton_Click" OnClientClick="return confirm('Are you sure you want to delete this Place ?')" ForeColor="White"/>
                </td>
                
            </tr>
        
                </table>
          </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AdminPanel]"></asp:SqlDataSource>
       
    </div>
</asp:Content>
