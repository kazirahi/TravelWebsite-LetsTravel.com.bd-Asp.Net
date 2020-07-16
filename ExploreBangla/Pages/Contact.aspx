<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ExploreBangla.Pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%;height: auto;background-color: #eeeeee">
        <table style="width: 100%;height: auto;background-image:url(../Images/contact1.jpg); background-size: 100% 100%;border-collapse: collapse">
            <tr>
                <td style="background-color: rgba(0, 0, 0, 0.5);border:none">
                    <table>
                        <tr >
               
                    <td class="divleft" style="width: 50%;height: auto; ">
            <table style="width: 100%; height: auto; padding:30px"  >
                <tr>
                    <td style="width: 100%; height: auto; padding-left:20px; border-left: 10px solid #d00040">
                        <h1 style="color: white">Blog</h1>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100%; height: auto; padding:20px;border-right: 5px dotted white"">
                        <table style="width: 100%; height: auto; ">
                            
                            <tr>
                                <td style="width: 100%; height: auto; ">
                                    <p style="font-size: 18px; font-family: Arial; color: white; ">You can work with us, like you can post your article in my webpage. You can also send any information related about in famous place based on only Bnagladesh. 
                           Because of our website only Bangladesh related. But in future, we will add more fetures. In this time, we continue blog system. If You interested you will submit your blog and also you can promote your website.
                          <br />If you interested then you will follow our some terms and condition. <br />Thank You!<br />
                            Stay With Us...

                        </p>
                                    <p  style="font-size: 18px; font-family: Arial; color: white; "><i class="fa fa-circle"></i>  Your Topic Name</p>
                                    <p  style="font-size: 18px; font-family: Arial; color: white; "><i class="fa fa-circle"></i>  Refaral Article Link</p>
                                    <p  style="font-size: 18px; font-family: Arial; color: white; "><i class="fa fa-circle"></i>  Proper Image(not copyright)</p>
                                    <p  style="font-size: 18px; font-family: Arial; color: white; "><i class="fa fa-circle"></i>  Article must be more than 350 words</p>
                                    <p style="font-size: 18px; font-family: Arial; color: white; "><i class="fa fa-square-o"></i> If you follow our terms and conditions then you send your e-mail, our team contanct to the given mail and disscuss about your guest post<br />Thank You</p>
                                </td>
                            </tr>
                            
                            <tr>
                                <td style="width: 100%; height: auto; ">
                                    <table style="width: auto; height: auto;padding: 10px;border-radius: 8px; background-color: white">
                                        <tr>
                                            <td style="width:auto; height: auto; border-right:2px solid #d00040">
                                                <asp:TextBox ID="TextBox1" placeholder="Enter your mail address..." runat="server" BorderStyle="None" Font-Bold="True" Font-Size="15px" Height="35px" Width="270px"></asp:TextBox>
                                            </td>
                                            <td style=" height: auto;">
                                                <asp:ImageButton ID="ImageButton1"  runat="server" Width="35" Height="35" ImageAlign="Middle" ImageUrl="~/Images/send.png" OnClick="ImageButton1_Click" />
                                    <asp:Label ID="WarningLabel" runat="server" Text="" Visible="false"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    
                                </td>
                            </tr>
                        </table>
                    </td>

                   
                </tr>
            </table>
        </td>
                    <td class="divright" style="width: 50%;height: auto; vertical-align: top;" >
                    <table style="width: 100%; height: auto; padding:30px"  >
                <tr>
                    <td style="width: 100%; height: auto; padding-left:20px; border-left: 10px solid #d00040">
                        <h1 style="color: white">Contact Us</h1>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100%; height: auto; padding:20px;">
                        <table style="width: 100%; height: auto; ">
                            <tr>
                                 <td style="width: 100%; height: 49px;  ">
                                     <asp:TextBox ID="NameContactbox" style="padding:10px" placeholder="Enter your Name..." runat="server" Height="40px" Width="70%" CausesValidation="True" BorderStyle="None"></asp:TextBox>
                                    <asp:Label ID="BaneContactWarning" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="Red" Visible="False" > <i class="fa fa-asterisk"></i></asp:Label>
                                 </td>
                            </tr>
                            <tr>
                                <td>
                                <asp:TextBox ID="EmailContactbox" style="padding:10px" placeholder="Enter your mail address..."  runat="server" Height="40px" Width="70%" TextMode="Email"></asp:TextBox>
                                    <asp:Label ID="LabEmainContactWarning" runat="server" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="Red" Visible="False" Width="16px" ></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100%; height: auto; ">
                                    <asp:TextBox ID="DetailsContactbox" style="padding:10px" placeholder="Write your message here..." runat="server" Height="120px" Width="70%" TextMode="MultiLine"></asp:TextBox>                                    
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100%; height: auto; ">
                                    <asp:Button ID="ara" runat="server"  Text="Submit" BackColor="#D00040" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="43px" Width="130px" OnClick="ara_Click" />
                                    <asp:Label ID="warning" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
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
<!--Join Our Team -->
    <div >
        <table style="width: 100%;padding: 60px; height: 450px; background-image: url(../Images/teamhands.png); background-size: 100% 100%; background-repeat: no-repeat ">
            <tr>
                <td>
                    <table style="width: 100%; height: auto; ">
                        <tr>
                            <td style="width: 50%; height: auto">
                    <table align="center" style="width: 100%; height: auto; padding: 30px; border-right: 2px dotted white">
                        <tr>
                            <td style="width: 100%; height: auto">
                                <h1 style="color: white; font-weight: bold; font-size: 45px; font-family: Arial">JOIN <br />OUR COMMUNITY</h1>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%; height: auto">
                                <p style="font-size: 16px; color: white; line-height: 20px">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%; height: auto">
                                <a href="">
                                 <i class="fa fa-facebook " style="font-size: 30px;padding:5px; color: white"></i> 
                             </a> 
                                <a href="">
                                                                  <i class="fa fa-instagram " style="font-size: 30px;padding:5px; color: white"></i> 

                                </a>
                                <a href="">
                              <i class="fa fa-twitter " style="font-size: 30px;padding:5px; color: white"></i> 
                                </a>
                                <a href="">
                              <i class="fa fa-linkedin " style="font-size: 30px;padding:5px; color: white"></i> 
                                </a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>

                </td>
                        </tr>
                    </table>
                </td>
                
            </tr>
        </table>
    </div>

</asp:Content>
