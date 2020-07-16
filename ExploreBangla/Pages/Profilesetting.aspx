<%@ Page Title="My Profile Setting" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Profilesetting.aspx.cs" Inherits="ExploreBangla.Pages.Profilesetting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .linkbutton{
            text-decoration: none;
            font-family: Roboto;
            font-size: 15px;
            font-weight: bold;
            color: gray;
        }
    </style>

    <div style="width:100%; height: auto">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>  
        <table style="width:100%; height: auto">
            <tr>
                <td align="center" style="width: 20%; height: auto; background-color: #f6f0f0; vertical-align: top">
                    <table align="center" style="width: 100%; height: auto">
                        <tr>
                            <td align="center" style="width: 100%; height: auto;padding:20px;border-bottom: 2px dotted gray">
                                   
                                <center>
                                    <asp:DataList runat="server" ID="CommentDataList1"  runat="server" RepeatColumns="1" CellPadding="0"   Width="100%" RepeatDirection="Horizontal" DataSourceID="SqlDataSource1">
                                         <ItemTemplate >
                                              <div align="center" style="padding: 2px">
                                                                                  <asp:Image ID="Image1" style="border-radius: 50%" runat="server" Width="150px" Height="150px" ImageAlign="Middle" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("PersonImages")) %>'/>

                                                                    </div>
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                            
                                                        </center>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PersonImages] FROM [Signup] WHERE ([EmailID] = @EmailID)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="EmailID" QueryStringField="EmailID" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: auto;padding:20px;border-bottom: 2px dotted gray">
                                <asp:Label ID="ProfileName" runat="server" Font-Size="Medium" Font-Bold="True"></asp:Label>
                                <asp:Label ID="GetID1" runat="server" Visible="False"></asp:Label>
                                <br />
                                <asp:Label ID="ProfileEmailID" runat="server" Text="Label" Font-Size="Medium" ForeColor="Gray"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: auto;padding:20px">
                                <table align="center" style="width: 100%; height: auto;padding:20px">
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px; border-bottom: 2px dotted gray">
                                            <asp:Button ID="HomeButton" runat="server" Text="Home"  style="padding: 20px ; width:100%"   BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="HomeButton_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                            <asp:Button ID="MyBlogs" runat="server" Text="My Blogs" style="padding: 20px ; width:100%"   BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="Gray" Font-Names="Roboto" OnClick="MyBlogs_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table style="width: 100%; height: auto">
                                                <tr>
                                                    <td align="left"style="width: auto; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                                    <asp:Button style="padding: 20px 0 20px 20px ; text-align: right" ID="Notifications" runat="server"  Text="Notifications"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="Notifications_Click"  />
                                           
                                        </td>
                                        <td align="left"style="width: auto; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                             <asp:Label ID="CountRow" runat="server" align="center" Font-Size="15px" ForeColor="Gray" Font-Bold="True"></asp:Label>
                                        </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                            <asp:Button ID="Createablog" runat="server" Text="Create A Blog" style="padding: 20px ; width:100%"   BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="Gray" Font-Names="Roboto" OnClick="Createablog_Click"  />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                            <asp:Button ID="SettingsButton" runat="server"  style="padding: 20px ; width:100%"   Text="Settings" BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Size="15px" Font-Names="Roboto" ForeColor="Gray" OnClick="SettingsButton_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px">
                                            <asp:Button ID="LogoutButton" runat="server" Text="Logout" style="padding: 20px ; width:100%"   OnClick="Button2_Click" BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" />
                                                
                                           
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width:70%; height: auto; vertical-align: top">
                    <table style="width:100%; height: auto">
                        <tr>
                            <td style="width:100%; height: auto">
                    <table align="center" style="width: 100%;border-radius:20px;background-color: rgba(0, 0, 0, 0.10); height: auto; padding: 20px; border-collapse:collapse">
                        <tr>
                            <td align="center" style="width: 100%; height: auto;">
                                <h2 style="color: Gray"> 
                                 Setting Your Account
                                 </h2>
                                 </td>
                            </tr>
                        <tr>
                            <td style="width: 100%; height: auto;padding:0px 20px;vertical-align:text-top ">
                                <table style="width: 100%; height: auto; ">
                                    <tr>
                            <td align="center" style="width: 20%; background-color: #efefef;padding: 5px ">
                                <asp:Label ID="Label4" runat="server" Text="Profile Picture"></asp:Label>
                            </td>
                            <td align="left" style="width: auto;padding: 5px ; background-color: white" >
                                <table style="width: 100%; height: auto">
                                    <tr>
                                        <td style="width: 10%; height: auto">
                                            <asp:FileUpload style="margin:10px"  Height="40px" id="PersonImages" runat="server" BackColor="white" BorderStyle="None"></asp:FileUpload>
                                            
                                        </td>
                                        <td style="width: auto; height: auto">

                                           <asp:Button ID="ImageAddButton" runat="server" Text="Update Image" BackColor="#D00040" BorderStyle="None" Width="100px" Height="50px" Font-Bold="True" Font-Size="Small" ForeColor="White" OnClick="ImageAddButton_Click" /> 
                                        </td>
                                    </tr>
                                </table>

                             </td>
                        </tr>
                                    
                                    <tr>
                            <td align="center" style="width: 20%; background-color: #efefef;padding: 5px ">
                                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                            </td>
                            <td align="left" style="width: auto;padding: 5px ; background-color: white" >
                                <asp:TextBox ID="FirstNameTextBox" placeholder="Enter First Name" runat="server" BorderStyle="None" Height="33px" Width="90%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%; background-color: #efefef;padding: 5px ">
                                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                            </td>
                            <td align="left" style="width: auto; padding: 5px;background-color: white" >
                                <asp:TextBox ID="LastNameTextBox" placeholder="Enter Last Name" runat="server" BorderStyle="None" Height="33px" Width="90%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%; background-color: #efefef;padding: 5px ">
                                <asp:Label ID="Label3" runat="server" Text="Email ID"></asp:Label>
                            </td>
                            <td align="left" style="width: auto;padding: 5px;background-color: white " >
                                <asp:TextBox ID="EmailIDTextBox" placeholder="Enter Your Email ID" runat="server" BorderStyle="None" Height="33px" Width="90%" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%; background-color: #efefef;padding: 5px ">
                                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td align="left" style="width: auto; padding: 5px;background-color: white" >
                                <asp:TextBox ID="PasswordTextBox" placeholder="Enter Password" runat="server" BorderStyle="None" Height="33px" Width="90%" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%; background-color: #efefef;padding: 5px ">
                                <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                            </td>
                            <td align="left" style="width: auto; padding: 5px;background-color: white" >
                                <asp:TextBox ID="ConfirmPassword" placeholder="Re-Enter your Password" runat="server" BorderStyle="None" Height="33px" Width="70%"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPassword" ErrorMessage="Password can not match"></asp:CompareValidator>
                            </td>
                        </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td align="center" style="width:100%;padding:20px">
                               
                                <asp:Label ID="WarningLabel" runat="server" Text="" Visible="false"></asp:Label>
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="Update" Height="50px" Width="200px" OnClick="Button1_Click" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                            
                               
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
</asp:Content>
