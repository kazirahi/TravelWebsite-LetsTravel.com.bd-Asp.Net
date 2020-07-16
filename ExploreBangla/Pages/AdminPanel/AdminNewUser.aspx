<%@ Page Title="Admin new User" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminNewUser.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.AdminNewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%; height: auto">
                <h1 style="width: 100%; height: auto; padding-left: 20px; color:gray">User Information</h1>

        <table style="width: 100%; height: auto; padding:20px; box-shadow: 0 0 5px gray">
            <tr>
                <td style="width: 15%; height: auto">
                    <h3>User ID</h3>
                </td>
                <td style="width: 20%; height: auto">
                    <h3>Email</h3>
                </td>
                <td style="width: 25%; height: auto">
                    <h3>Name</h3>
                </td>
                <td style="width: 20%; height: auto">
                    <h3>Image</h3>
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
                            <td style="width: 15%; height: auto">
                                <asp:Label ID="User" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                            </td>
                <td style="width: 20%; height: auto">
                    <asp:Label ID="EmailID" runat="server" Text='<%#Eval("EmailID") %>'></asp:Label>
                </td>
                <td style="width: 25%; height: auto">
                    <asp:Label ID="Name" runat="server" Text='<%#Eval("FirstName") %>'> <br />

                    </asp:Label><asp:Label ID="Name2" runat="server" Text='<%#Eval("LastName") %>'></asp:Label>
                </td>
                  <td align="center" style="width: 20%; height: auto">
                      <asp:Image ID="UserImage" runat="server" Height="120px" Width="100px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("PersonImages")) %>'/>
                   </td>
                    <td align="center" style="width: 20%; height: auto">
                        <table style="width: 100%; height: auto">
                            <tr>
                                <td style="width: 50%; height: auto">
                                    <asp:Button  style="border-radius:6px; padding:5px" runat="server" Text="Delete" Width="80px" OnClientClick="return confirm ('Are you sure want to delete this account?')" ToolTip="Update Position" Height="30px" BackColor="#D00040" ForeColor="White" Font-Bold="True" Font-Names="Roboto" BorderStyle="None" ID="UpdateButton" OnClick="UpdateButton_Click" />
                                </td>
                                
                            </tr>
                            <tr>
                                <td style="width: 50%; height: auto">
                                    <asp:Button ID="NotificationSend" runat="server" Text="Send Message" BackColor="#4285F4" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="30px" OnClick="NotificationSend_Click" />
                                </td>
                            </tr>
                        </table>
                </td>    

                        </tr>
                    </table>
                </td>
                
                
            </tr>
              <tr>
                <td style="width:100%; height: auto">
                    <table style="width:100%; height: auto">
                        <tr>
                            <asp:Label ID="SendMessageWarning" runat="server" Visible="false" Text="Send Successfully!" ForeColor="#0066FF" Font-Bold="True"></asp:Label>
                             <td style="width: 80%; height: auto;">
                      <asp:TextBox Width="100%" runat="server" ID="SendMessage" Visible="false" placeholder="Write Message Here"   TextMode="MultiLine" BorderStyle="None" Height="70px" BackColor="#CCCCCC" ForeColor="Black" Font-Size="Medium" Font-Bold="True"></asp:TextBox>
                        </td>
                  <td align="center" style="width: 20%; height: auto;">
                      <asp:Button ID="SendButton" Visible="false" runat="server" Text="Send" BorderStyle="None" BackColor="#4285F4" ForeColor="White" Font-Bold="True" OnClick="SendButton_Click" Width="100px" Height="50" />
                  </td>
                        </tr>
                    </table>
                </td>
                 
                    </tr>
        </table>

            </>
</ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [FirstName], [LastName], [EmailID], [PersonImages] FROM [Signup]"></asp:SqlDataSource>
        

    </div>
</asp:Content>
