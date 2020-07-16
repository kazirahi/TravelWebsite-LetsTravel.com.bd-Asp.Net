<%@ Page Title="SignUp" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ExploreBangla.Pages.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%; height: auto ; background-image: url(../Images/sajek.jpg); background-size: 100% 100%; background-repeat: no-repeat">
        <table align="center" style="width: 100%; height: auto;">
            
            <tr>
                <td align="center" style="width: 50%;height: 100%; vertical-align: middle; padding: 0px; background-color: rgba(0, 0, 0, 0.44)">
                    <h1 style="color: white; font-size: 30px; font-family: Roboto; font-weight: bold">Welcome to our new <br /><span style="font-size: 70px; color: #d00040; text-shadow: 0 0 7px Black">Lets<span style="color: #4285f4">T</span>ravel<span style="font-size: 30px">.com.bd</span></span><br /> Blogpage</h1>
                </td>
                <td style="width: 50%; height: auto; padding: 50px; ">
                    <table align="center" style="width: 100%;border-radius:20px;background-color: rgba(0, 0, 0, 0.10); height: auto; padding: 30px; border-collapse:collapse">
                        <tr>
                            <td align="center" style="width: 100%; height: auto;">
                                <h1 style="color: white;font-family: Roboto"> 
                                 Sign Up
                                 </h1>
                                 </td>
                            </tr>
                        <tr>
                            <td style="width: 100%; height: auto;padding:0px 30px ">
                                <table style="width: 100%; height: auto;">
                                    <tr>
                            <td align="center" style="width: 20%; background-color: #d00040;padding: 5px " >
                                <asp:Label ID="Label7" runat="server" Text="Profile Picture" ForeColor="White" Font-Bold="True"></asp:Label>
                            </td>
                            <td align="left" style="width: auto;padding: 5px ; background-color: white" >
                                <asp:FileUpload style="margin:10px"  Height="34px" id="PersonImages" runat="server" BackColor="Gray" BorderStyle="Ridge" Width="34%"></asp:FileUpload>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PersonImages" ErrorMessage="***"></asp:RequiredFieldValidator>
                             </td>
                        </tr>
                                    <tr>
                            <td align="center" style="width: 20%; padding: 5px; background-color: #d00040;" >
                                <asp:Label ID="Label1" runat="server" Text="First Name" Font-Bold="True" ForeColor="White"></asp:Label>
                            </td>
                            <td align="left" style="width: 60%;padding: 5px ; background-color: white" >
                                <asp:TextBox ID="FirstNameTextBox" placeholder="Enter First Name" runat="server" BorderStyle="None" Height="33px" Width="80%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage=""><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%; padding: 5px; background-color: #d00040;">
                                <asp:Label ID="Label2" runat="server" Text="Last Name" Font-Bold="True" ForeColor="White"></asp:Label>
                            </td>
                            <td align="left" style="width: 100%; padding: 5px;background-color: white" >
                                <asp:TextBox ID="LastNameTextBox" placeholder="Enter Last Name" runat="server" BorderStyle="None" Height="33px" Width="80%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FirstNameTextBox" ErrorMessage=""><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%; padding: 5px; background-color: #d00040;">
                                <asp:Label ID="Label3" runat="server" Text="Email ID" Font-Bold="True" ForeColor="White"></asp:Label>
                            </td>
                            <td align="left" style="width: 100%;padding: 5px;background-color: white " >
                                <asp:TextBox ID="EmailIDTextBox" placeholder="Enter Your Email ID" runat="server" BorderStyle="None" Height="33px" Width="80%" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailIDTextBox" ErrorMessage=""><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 30%; padding: 5px; background-color: #d00040;">
                                <asp:Label ID="Label4" runat="server" Text="Confirm Email ID" Font-Bold="True" ForeColor="White"></asp:Label>
                            </td>
                            <td align="left" style="width: 100%; padding: 5px;background-color: white" >
                                <asp:TextBox ID="ConfirmEmailIDTextBox" placeholder="Enter Your Email ID" runat="server" BorderStyle="None" Height="33px" Width="80%" TextMode="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmEmailIDTextBox" ErrorMessage=""><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailIDTextBox" ControlToValidate="ConfirmEmailIDTextBox" ErrorMessage="Email can not match "></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%;padding: 5px; background-color: #d00040;">
                                <asp:Label ID="Label5" runat="server" Text="Password" Font-Bold="True" ForeColor="White"></asp:Label>
                            </td>
                            <td align="left" style="width: 100%; padding: 5px;background-color: white" >
                                <asp:TextBox ID="PasswordTextBox" placeholder="Enter your password" runat="server" BorderStyle="None" Height="33px" Width="80%" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage=""><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%;padding: 5px; background-color: #d00040;">
                                <asp:Label ID="Label6" runat="server" Text="Confirm Password" Font-Bold="True" ForeColor="White"></asp:Label>
                            </td>
                            <td align="left" style="width: 100%; padding: 5px;background-color: white" >
                                <asp:TextBox ID="ConfirmPassword" placeholder="Re-enter your password" runat="server" BorderStyle="None" Height="33px" Width="80%" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage=""><i class="fa fa-asterisk"></i></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPassword" ErrorMessage="Password can not match"></asp:CompareValidator>
                            </td>
                        </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td align="center" style="width:100%;padding:10px">
                               
                                <asp:Label ID="WarningLabel" runat="server" Text="" Visible="false" ForeColor="White"></asp:Label>
                                 <br />
                                <asp:Button ID="Button1" runat="server" Text="Submit" Height="50px" Width="200px" OnClick="Button1_Click" />
                            
                                
                                <br />
                                <p style="color:white">If you already member then go to <a style="text-decoration:none; font-weight:bold; font-style: italic;color: #d00040" href="Signin.aspx">SignIn</a></p>
                            </td>
                        </tr>
                    </table>
                </td>
                 
            </tr>
        </table>
    </div>
</asp:Content>
