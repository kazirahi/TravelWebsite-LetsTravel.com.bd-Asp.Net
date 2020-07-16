<%@ Page Title="Create Blog" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateBlog.aspx.cs" Inherits="ExploreBangla.Pages.CreateBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%; height: auto">
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
                                <asp:Label ID="ProfileName" runat="server" Font-Size="Medium" Font-Bold="True"></asp:Label><br />
                                <asp:Label ID="ProfileEmailID" runat="server" Text="Label" Font-Size="Medium" ForeColor="Gray"></asp:Label>
                                <asp:Label ID="id" runat="server" Font-Overline="False" Font-Size="Medium" ForeColor="#333333" Visible="False"></asp:Label>
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
                                            <asp:Button ID="MyBlogs" runat="server" Text="My Blogs"  style="padding: 20px ; width:100%"   BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="Gray" Font-Names="Roboto" OnClick="MyBlogs_Click" />
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
                                            <asp:Button ID="SettingsButton" runat="server" style="padding: 20px ; width:100%"   Text="Settings" BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Size="15px" Font-Names="Roboto" ForeColor="Gray" OnClick="SettingsButton_Click" />
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
                                <h2 id="HeaderName" style="color: Gray"> 
                                    Create Your Blog
                                 </h2>
                                 </td>
                            </tr>
                        <tr>
                            <td style="width: 100%; height: auto; padding:0px 20px; vertical-align: top">
                                <table style="width: 100%; height: auto; ">
                                    <tr>
                            <td align="center" style="width: 20%; background-color: #efefef;padding: 5px " >
                                <asp:Label ID="Label4" runat="server" Text="Blog Picture"></asp:Label>
                            </td>
                            <td align="left" style="width: auto;padding: 5px ; background-color: white" >
                                <asp:FileUpload style="margin:10px"  Height="34px" id="PersonImages" runat="server" BackColor="Gray" BorderStyle="Ridge" Width="46%"></asp:FileUpload>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PersonImages" ErrorMessage="&lt;i class=&quot;fa fa-asterisk&quot;&gt;&lt;/i&gt;"></asp:RequiredFieldValidator>
                             </td>
                        </tr>
                                    
                                    <tr>
                            <td align="center" style="width: 20%; background-color: #efefef;padding: 5px ">
                                <asp:Label ID="Label1" runat="server" Text="Blog Name"></asp:Label>
                            </td>
                            <td align="left" style="width: auto;padding: 5px ; background-color: white" >
                                <asp:TextBox ID="BlogName" placeholder="Enter Blog Name" runat="server" BorderStyle="None" Height="33px" Width="90%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="BlogName" ErrorMessage="&lt;i class=&quot;fa fa-asterisk&quot;&gt;&lt;/i&gt;"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%; background-color: #efefef;padding: 5px ">
                                <asp:Label ID="Label2" runat="server" Text="Blog Location"></asp:Label>
                            </td>
                            <td align="left" style="width: auto; padding: 5px;background-color: white" >
                                <asp:TextBox ID="BlogLocation" placeholder="Enter Blog Location" runat="server" BorderStyle="None" Height="33px" Width="90%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="BlogLocation" ErrorMessage="&lt;i class=&quot;fa fa-asterisk&quot;&gt;&lt;/i&gt;"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 20%; background-color: #efefef;padding: 5px ">
                                <asp:Label ID="Label5" runat="server" Text="Blog"></asp:Label>
                            </td>
                            <td align="left" style="width: auto; padding: 5px;background-color: white" >
                                <asp:TextBox ID="BlogDescription" placeholder="Enter Your Blog Here" runat="server" BorderStyle="None" Height="200px" Width="90%" TextMode="MultiLine" MaxLength="650"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="BlogDescription" ErrorMessage="&lt;i class=&quot;fa fa-asterisk&quot;&gt;&lt;/i&gt;"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td align="center" style="width:100%;padding:10px">
                              
                                <asp:Label ID="WarningLabel" runat="server" Text="" Visible="false"></asp:Label>
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="Create" Height="50px" Width="200px" OnClick="Button1_Click" BackColor="#3399FF" Font-Bold="True" Font-Size="18pt" ForeColor="White" BorderStyle="None" />
                            
                                
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
