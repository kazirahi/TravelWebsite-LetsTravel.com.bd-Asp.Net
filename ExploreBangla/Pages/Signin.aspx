<%@ Page Title="SignIn" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="ExploreBangla.Pages.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%; height: auto ; background-image: url(../Images/sajek.jpg);background-size: 100% 100%; background-repeat: no-repeat">
        <table align="center" style="width: 100%; height: auto; background-color:rgba(0, 0, 0, 0.41);">
            
            <tr>
                 <td align="center" style="width: 50%;height: 100%; vertical-align: middle; padding: 30px; background-color: rgba(0, 0, 0, 0.44)">
                    <h1 style="color: white; font-size: 30px; font-family: Roboto; font-weight: bold">Welcome to our new <br /><span style="font-size: 70px; color: #d00040; text-shadow: 0 0 7px Black">Lets<span style="color: #4285f4">T</span>ravel<span style="font-size: 30px">.com.bd</span></span><br /> Blogpage</h1>
                </td>
                <td style="width: 50%; height: auto; padding: 50px; ">
                    <table align="center" style="width: 100%;border-radius:20px;background-color: rgba(0, 0, 0, 0.10); height: auto; padding: 20px; border-collapse:collapse">
                        <tr>
                            <td align="center" style="width: 100%; height: auto;">
                                <h1 style="color: white; font-family: Roboto"> 
                                    Sign In
                                 </h1>
                                 </td>
                            </tr>
                        <tr>
                            <td style="width: 100%; height: auto;padding:0px 100px ">
                                <table style="width: 100%; height: auto; ">
                                    <tr style="border: 1px solid black; border-radius: 5px">
                            <td align="center" style="width: 20%;padding: 5px; background-color: #d00040" class="auto-style1">
                                <asp:Label ID="Label3" runat="server"  Font-Bold="True" Font-Size="X-Large" ForeColor="White"><i class="fa fa-envelope "></i></asp:Label>
                            </td>
                            <td align="left" style="width: 100%;padding: 5px;background-color: white " >
                                <asp:TextBox ID="EmailIDTextBox" placeholder="Enter Your Email ID" runat="server" BorderStyle="None" Height="33px" Width="90%" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailIDTextBox" ErrorMessage=""><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%;padding: 5px; background-color: #d00040" class="auto-style1">
                                <asp:Label ID="Label5" runat="server"  Font-Bold="True" Font-Size="X-Large" ForeColor="White"><i class="fa fa-lock"></i></asp:Label>
                            </td>
                            <td align="left" style="width: 100%; padding: 5px;background-color: white" >
                                <asp:TextBox ID="PasswordTextBox" placeholder="Enter Your Password" runat="server" BorderStyle="None" Height="33px" Width="90%" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage=""><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td align="center" style="width:100%;padding:50px">
                                <asp:Button ID="Button1" runat="server" Text="Submit" Height="50px" Width="200px" OnClick="Button1_Click" />
                            
                                <br />
                                <br />
                                <asp:Label ID="WarningLabel" runat="server" Visible="False" ForeColor="White"></asp:Label>
                                <p style="color:white">If you are not a member then go to <a style="text-decoration:none; font-weight:bold; font-style: italic;color: #d00040" href="Signup.aspx">SignUp</a></p>
                            </td>
                        </tr>
                    </table>
                </td>
               
            </tr>
        </table>
    </div>
</asp:Content>
