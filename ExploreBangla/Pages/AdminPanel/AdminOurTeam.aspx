<%@ Page Title="Admin Our Team" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminOurTeam.aspx.cs" Inherits="ExploreBangla.Pages.AdminPanel.AdminOurTeam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%; height: auto">
        <h1 style="color: gray">Our Team Information</h1>
        <table style="width: 100%; height: auto; border:1px solid black; box-shadow: 0 0 5px gray"">
            <tr>
                <td style="width:30%; height: auto">
                    <h3>
                        Informations
                    </h3>
                </td>
                <td style="width:30%; height: auto">
                    <h3>
                        Social Accounts
                    </h3>
                </td>
                <td style="width:20%; height: auto">
                    <h3>
                        Image
                    </h3>
                </td>
                <td style="width:10%; height: auto">
                    <h3>
                        Action
                    </h3>
                </td>
            </tr>
        </table>

        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" Width="100%" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table style="width:100%; height: auto; border:1px solid black; box-shadow: 0 0 5px gray">
            <tr>
                <td style="width:30%; height: auto">
                    <table style="width:100%; height: auto">
                        <tr>
                            <td style="width:100%; height: auto">
                                Name: <asp:TextBox ID="Name" runat="server"  Text='<%#Eval("name") %>' BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:100%; height: auto">
                                ID: 
                                <asp:Label ID="ID" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:100%; height: auto">
                                Designtaion: 
                                <asp:TextBox ID="Designation" runat="server" Text='<%#Eval("designation") %>'  BorderStyle="None"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width:30%; height: auto">
                    <table style="width:100%; height: auto">
                        <tr>
                            <td style="width:100%; height: auto">
                                <i class="fa fa-facebook"></i>
                                <asp:TextBox ID="FaceBook" Text='<%#Eval("facebooklink") %>' runat="server" BorderStyle="None" Width="90%"></asp:TextBox>
                            
                            </td>
                        </tr>
                        <tr>
                            <td style="width:100%; height: auto">
                                <i class="fa fa-instagram"></i> <asp:TextBox ID="Instagram" Text='<%#Eval("intagramlink") %>' runat="server" BorderStyle="None" Width="90%"></asp:TextBox>
                            
                            </td>
                        </tr>
                        <tr>
                            <td style="width:100%; height: auto">
                                <i class="fa fa-linkedin"></i> <asp:TextBox ID="LinkedIn" Text='<%#Eval("linkedinlink") %>' runat="server" BorderStyle="None" Width="90%"></asp:TextBox>
                            
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width:10%; height: auto">
                    <table style="width:100%; height: auto">
                        <tr>
                            <td  style="width:100%; height: auto">
                                <asp:Image ID="MembarImage" runat="server" Height="80px" ImageAlign="Middle" Width="60px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("image")) %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width:100%; height: auto">
                                <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="None" /><asp:Button ID="Button1" runat="server" Text="Upload" BackColor="#D00040" BorderStyle="None" ForeColor="White" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        
                    </table>
                </td>
                <td align="center" style="width:10%; height: auto">
                    <asp:Button ID="Update" runat="server" Text="Update" BackColor="#D00040" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" Width="70px" OnClick="Update_Click" />
                </td>
            </tr>
        </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [name], [designation], [image], [facebooklink], [intagramlink], [linkedinlink] FROM [ourteam]"></asp:SqlDataSource>
    </div>
</asp:Content>
