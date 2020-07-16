<%@ Page Title="Notifications" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Notifications.aspx.cs" Inherits="ExploreBangla.Pages.Notifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
        .linkbutton{
            text-decoration: none;
            font-family: Roboto;
            font-size: 15px;
            font-weight: bold;
            color: gray;
        }
        .btn4{
            height:50px; 
            text-align: center;
            border-radius:10px; width: 200px; text-decoration: none; background-color: #0094ff; color: white; border: none; font-family: Arial; font-weight: bold; font-size:15px;
        }
        .btn4:hover{
            background-color: #d00040;
        }
        .button{
            width:auto;
            height: auto;
            border: 1px solid #808080;
            border-radius:7px;
            background-color: #bfbfbf;
            padding:10px;
            font-family:Arial, Helvetica, sans-serif;
            font-weight: bolder;
            color: #393939;
            text-decoration: none;
            justify-content:normal;
            margin: 3px;
            display:inline-block;
        }    
       .button:hover{
           background-color: #d00040;
           color: white;
       }
        .h2{
            margin: 0px; padding-left: 20px; font-size:2em ; font-weight:bold; color: black
        }
        .h2:hover{
            color: #ff6a00;
        }
        .paggingbtn{
            border: 1px solid gray;
            background-color: #d00040;
            color:white;
            font-weight: bold;
            width:35px;
            height: 35px;
            padding: 5px;
            margin: 5px;
        }
        .btn3{
            height:50px;  
            border-radius:10px;
            width: 200px;
            text-align: center;
            
            text-decoration: none; 
            background-color: #d00040; 
            color: white; border: none;
            font-family: Arial; 
            font-weight: 
                bold; 
            font-size:15px;
        }
        .btn3:hover{
            background-color: #0094ff;
        }
    </style>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <div style="width: 100%; height: auto">
        <table style="width: 100%; height: auto">
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
                                <asp:Label ID="ProfileName" runat="server" Font-Size="Medium" Font-Bold="True"></asp:Label>&nbsp;<asp:Label ID="GetID1" runat="server" Visible="False"></asp:Label>
                                <br />
                                <asp:Label ID="ProfileEmailID" runat="server" Text="Label" Font-Size="Medium" ForeColor="Gray"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: auto;padding:20px">
                                <table align="center" style="width: 100%; height: auto;padding:20px">
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px; border-bottom: 2px dotted gray">
                                                <asp:Button ID="HomeButton" runat="server" Text="Home" style="padding: 20px ; width:100%"   BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="HomeButton_Click" />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                             <asp:Button ID="MyBlogButton" style="padding: 20px ; width:100%"   runat="server" Text="My Blogs"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="MyBlogButton_Click" />

                                        </td>
                                    </tr>
                                    <tr>                               

                                       <td>
                                            <table style="width: 100%; height: auto">
                                                <tr>
                                                    <td align="left"style="width: auto; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                                         <asp:Button ID="Notifi" style="padding:20px 0 20px 20px" runat="server" Text="Notifications"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="Notifications_Click"   />
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
                                             <asp:Button ID="CreateBlog" runat="server" Text="Create Blog"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto"  style="padding: 20px ; width:100%"  Font-Size="15px" ForeColor="Gray" OnClick="CreateBlog_Click"  />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                            <asp:Button ID="SettingButton" runat="server"  style="padding: 20px ; width:100%"   Text="Settings" BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="SettingButton_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px">
                                            <asp:Button ID="LogoutButton" runat="server"  style="padding: 20px ; width:100%"   Text="Logout" OnClick="Button2_Click" BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" />
                                                
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>

                <td style="width: 70%; height: auto; background-color: white;vertical-align: top">
                    <asp:Label ID="NoBlog" runat="server" Text="No Notifications Found." BorderColor="#CC0000" BorderStyle="Solid" Font-Names="Roboto" Font-Size="X-Large" ForeColor="Black" Visible="False"></asp:Label>
                    <table style="width: 100%; height: auto; vertical-align: top">
                        <tr>
                            <td style="width: auto; height: auto">
                                 <asp:LinkButton ID="ClearNotification" runat="server" style="text-decoration: none; color: gray" OnClick="ClearNotification_Click"><i class=" fa fa-trash"></i> Clear All Notifications</asp:LinkButton>

                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%; height: auto; padding:0 80px;vertical-align: top">
                                <div>
                        <center >
            <asp:DataList  ID="DataList1"  runat="server" RepeatColumns="1" CellPadding="0"   Width="100%" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">

                <ItemTemplate >
                    <div style="padding:0px ">
                        <table style="width:100%; height: auto; vertical-align: top">
                            <tr>
                                <td style="width:100%; height: auto;vertical-align: top">
                                    <table align="left" style="width:100%;padding:20px; height: auto; border: 1px solid; vertical-align: top">
                                        <tr>
                                            <td align="left" style="width:5%; height: auto">
                                                <i class="fa fa-question-circle " style="color:yellow;text-align: center;font-size: 35px;text-shadow: 0 0 5px black"></i>
                                            </td>
                                            <td align="Left" style="width:70%; height: auto">
                                                <asp:Label ID="NotificationsLabel" runat="server" Text='<%#Eval("Notification") %>' Font-Size="15px" Font-Names="Roboto"></asp:Label>
                                            </td>
                                             <td align="right" style="width:25%; height: auto">
                                                <table style="width:auto; height: auto">
                                                    <tr>
                                                        <td style="width:auto; height: auto">
                                                            <asp:Label ID="Time" runat="server" Text='<%#Eval("Time") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width:auto; height: auto">
                                                            <asp:Label ID="Date" runat="server" Text='<%#Eval("Date") %>' Font-Size="15px" Font-Names="Roboto" Font-Italic="True"></asp:Label>
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
                </ItemTemplate>
            </asp:DataList>
        </center>
                        </div>
                    <div style="width:100%; margin:10px 0;" align="center">
                                <asp:Button ID="Button4" runat="server" Text="<<"  CssClass="paggingbtn" OnClick="Button4_Click1"></asp:Button>
                                <asp:Button ID="Button7" runat="server" Text="<"  CssClass="paggingbtn" OnClick="Button7_Click"></asp:Button>
                                <asp:Button ID="Button8" runat="server" Text=">"  CssClass="paggingbtn" OnClick="Button8_Click"></asp:Button>
                                <asp:Button ID="Button9" runat="server" Text=">>"  CssClass="paggingbtn" OnClick="Button9_Click"></asp:Button>
                            </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
        </ContentTemplate></asp:UpdatePanel>
</asp:Content>
