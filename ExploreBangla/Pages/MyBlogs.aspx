<%@ Page Title="My Blog" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MyBlogs.aspx.cs" Inherits="ExploreBangla.Pages.MyBlogs" %>
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
                                <asp:Label ID="ProfileName" runat="server" Font-Size="Medium" Font-Bold="True"></asp:Label><br />
                                <asp:Label ID="ProfileEmailID" runat="server" Text="Label" Font-Size="Medium" ForeColor="Gray"></asp:Label>
                                <asp:Label ID="GetID1" runat="server" Visible="False" ForeColor="Black"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 100%; height: auto;padding:20px">
                                <table align="center" style="width: 100%; height: auto;padding:20px">
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px; border-bottom: 2px dotted gray">
                                                <asp:Button ID="HomeButton" style="padding: 20px ;" runat="server" Text="Home"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="HomeButton_Click" Width="100%" />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                             <asp:Button ID="MyBlogButton" style="padding: 20px ; width: 100%" runat="server" Text="My Blogs"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="MyBlogButton_Click" Width="100%" />

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
                                             <asp:Button ID="Createablog" runat="server" style="padding: 20px ; width: 100%" Text="Create A Blog"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="Createablog_Click" />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                            <asp:Button ID="SettingButton" style="padding: 20px ; width: 100%" runat="server" Text="Settings" BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="SettingButton_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px">
                                            <asp:Button ID="LogoutButton" runat="server" style="padding: 20px ; width: 100%" Text="Logout" OnClick="Button2_Click" BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" />
                                                
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                
                <td style="width: 70%; height: auto; background-color: white; vertical-align: top">
                    <table style="width: 100%; height: auto; ">
                        <tr>
                            <td style="width: 100%; height: auto; padding:0 80px">
                                <div>
                                    <asp:Label ID="NoBlog" align="center" runat="server" Text="No Blogs Found.Go to Create a blog section" BorderColor="#CC0000" BorderStyle="Solid" Font-Names="Roboto" Font-Size="Large" ForeColor="Black" Visible="False"></asp:Label>
                                    
                        <center >
            <asp:DataList  ID="DataList1"  runat="server" RepeatColumns="1" CellPadding="0"   Width="100%" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">

                <ItemTemplate >
                    <div style="padding:10px ">

                   
                    <table align="center" style="width: auto; padding: 0 15px 0 15px; height: auto; background-color: #eeeeee; border: 1px solid black;  ">
                        <tr>
                            <td align="center" style="width: 50%; height: auto ; vertical-align:top;padding: 15px 15px 0 15px">
                                <asp:Image style="width: 90%" ID="Image2" runat="server" Height="250px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("BlogPic")) %>' ImageAlign="Middle" Width="350px" />
                            </td>
                            <td style="width: 50%; padding: 15px; height: 320px;vertical-align: top ">
                                <table style="width: 100%; height: 100%; vertical-align: top">
                                    <tr>
                                        <td align="right" style="width: auto; height: auto; vertical-align: top"> 
                                             <asp:Label ID="Label1" runat="server" Text='<%#Eval("Status") %>'></asp:Label>

                                        </td>
                                        <td align="right" style="width: auto; height: auto; vertical-align: top">
                                            <asp:LinkButton ID="Edit" runat="server" Height="25" Width="25" ForeColor="Gray" BorderStyle="None" Font-Size="20px" OnClick="LinkButton1_Click"><i class="fa fa-pencil"></i></asp:LinkButton>
                                        </td>
                                        <td align="right" style="width: auto; height: auto; vertical-align: top">
                                            <asp:LinkButton ID="Delete" runat="server" Width="25" Height="25" ForeColor="Gray" Font-Size="20px" OnClick="LinkButton2_Click" OnClientClick="return confirm('Are you sure you want to delete this blog ?')" ><i class="fa fa-remove"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style=" width:100%; height:auto">
                                            <div  >
                                                <asp:Label ID="BlogName" class="h2" runat="server" Text='<%#Eval("BlogName") %>'></asp:Label>
                                                
                                                <asp:TextBox ID="BlognameEdit" runat="server" Width="100%" Height="100%" Font-Bold="True" Font-Size="25px" Visible="False" Text='<%#Eval("BlogName") %>'></asp:TextBox>
                                                <asp:Label ID="BlogID" runat="server" Text='<%#Eval("ID") %>' Visible="false"></asp:Label>
                                            </div>
                                             <h5 style="margin: 0px; padding-left: 20px; font-family:Arial; font-size: 14px; font-style: italic; color: gray">
                                              <i class="fa fa-calendar" style="padding-right: 20px">  <%#Eval("BlogDate") %> </i> <i class="fa fa-clock-o" style="padding-right: 20px"> <%#Eval("BlogTime") %> </i>
                                            </h5>
                                        </td>
                                    </tr>
                                   <tr>
                                        <td id="tb" style="padding-left: 0;vertical-align:top ">
                                            <div style="margin: 0px; padding-left: 20px; font-family:Arial; font-size: 22px; font-weight:bolder; color: gray">
                                               <i class="fa fa-user " style="">  <%#Eval("BlogerName") %> </i>
                                            </div>
                                               <div style="margin: 0px; padding-left: 20px; font-family:Arial; font-size: 14px; font-style: italic; color: gray">

                                               <i class="fa fa-map-marker"  > <%#Eval("BlogLocation") %></i>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                             <p style="font-size: 14px; font-family: Arial; font-weight: bolder" ID="AnswerLabel" runat="server" Visible="false"><%#Eval("BlogDescription") %></p>
                                             <asp:TextBox ID="EditableCheackBox" runat="server" Height="100%" Width="100%" TextMode="MultiLine" Font-Size="18px" Font-Names="Roboto" Font-Bold="True" Visible="False" Text='<%#Eval("BlogDescription") %>'></asp:TextBox>
                                        </td>
                                    </tr>
                                     
                                     <tr>
                                        <td style="vertical-align: baseline; ">
                                            
                                            <asp:LinkButton align="bottom"  CssClass="btn3" ID="Button3"  runat="server"  onclick="Button3_Click" CausesValidation="True" UseSubmitBehavior="False" Height="50" Width="200" Font-Size="Medium" Font-Bold="True"><i class="fa fa-caret-down" style="margin-top: 16px" aria-hidden="true"></i> Expand the Article </asp:LinkButton>
                                            <asp:LinkButton CssClass="btn4" ID="Button1"  runat="server" Visible="false"  onclick="Button4_Click" CausesValidation="True" UseSubmitBehavior="False" Height="50" Width="200" Font-Bold="True" Font-Size="Medium"><i class="fa fa-caret-up" aria-hidden="true" style="margin-top: 16px"></i> Collapse the Article </asp:LinkButton>
                                            <asp:LinkButton CssClass="btn4" ID="Button56"  runat="server" Visible="false"  onclick="Button56_Click" CausesValidation="True" UseSubmitBehavior="False" Height="50" Width="200" Font-Bold="True" Font-Size="Medium"><i class="fa fa-check" aria-hidden="true" style="margin-top: 16px"></i> Update </asp:LinkButton>
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
       
</asp:Content>
