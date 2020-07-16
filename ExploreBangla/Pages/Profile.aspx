<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ExploreBangla.Pages.Profile" %>
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
            height:auto;  
            border-radius:0;
            width: auto;
            text-align: center;
            padding:10px;
            text-decoration: none; 
            background-color: #0094ff; 
            color: white; border: none;
            font-family: Arial; 
            font-weight: 
                bold; 
            font-size:12px;
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
            height:auto;  
            border-radius:0;
            width: auto;
            text-align: center;
            padding:10px;
            text-decoration: none; 
            background-color: #d00040; 
            color: white; border: none;
            font-family: Arial; 
            font-weight: 
                bold; 
            font-size:12px;
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
                                                                                  <asp:Image ID="Image1" style="border-radius: 50%" runat="server" Width="150px" Height="150px" ImageAlign="Middle" 
                                                                                      ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("PersonImages")) %>'/>

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
                                                <asp:Button style="padding: 20px ;" ID="HomeButton" runat="server" Text="Home"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="HomeButton_Click" Width="100%" />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                             <asp:Button ID="MyBlogButton" runat="server" Text="My Blogs" style="padding: 20px ;"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="MyBlogButton_Click" Width="100%" />

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
                                             <asp:Button ID="CreateBlog" runat="server" Text="Create Blog"  BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" style="padding: 20px ;" Font-Size="15px" ForeColor="Gray" OnClick="CreateBlog_Click" Width="100%"  />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px;border-bottom: 2px dotted gray">
                                            <asp:Button ID="SettingButton" runat="server" Text="Settings" BackColor="Transparent" BorderStyle="None" Font-Bold="True" style="padding: 20px ;" Font-Names="Roboto" Font-Size="15px" ForeColor="Gray" OnClick="SettingButton_Click" Width="100%" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center"style="width: 100%; height: auto;padding:0px">
                                            <asp:Button ID="LogoutButton" runat="server" Text="Logout" OnClick="Button2_Click" BackColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Names="Roboto" style="padding: 20px ;" Font-Size="15px" ForeColor="Gray" Width="100%" />
                                                
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                
                <td style="width: 70%; height: auto; background-color: white">
                    <table style="width: 100%; height: auto; ">
                        <tr>
                            <td style="width: 100%; height: auto; padding-left:0px">
                                <div>
                        <center >
                <asp:DataList  ID="DataList1"  runat="server" RepeatColumns="1" CellPadding="0"   Width="100%" RepeatDirection="Horizontal" >

                    <ItemTemplate >
                    <div style="padding:10px ">

                   
                    <table align="center" style="width: auto; padding:10px ; height: auto; background-color: #eeeeee; border: 1px solid black;  ">
                        <tr>
                            <td align="center" style="width: 20%; height: auto ; vertical-align:top;padding: 0 15px 0 15px">
                                <table style="width:100%; height: auto">
                                    <tr>
                                        <td style="width:100%; height: auto">
                                             <asp:Image style="width: 100%" ID="Image2" runat="server" Height="200px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("BlogPic")) %>' ImageAlign="Middle" Width="350px" />

                                        </td>
                                    </tr>
                                     <tr >
                                        <td align="center" style="height: auto;width:100%;vertical-align: bottom; ">
                                            <table align="center" style="height: auto;width:100% ;background-color: #522d0a">  
                                                <tr>
                                                    <td align="center" style="height: auto;width:100%; ">
                                                        <asp:LinkButton  align="bottom"  CssClass="btn3" ID="Button3"  runat="server"  onclick="Button3_Click" CausesValidation="True" UseSubmitBehavior="False"  Visible="True">Show Comments</asp:LinkButton>
                                                        

                                                        <asp:LinkButton CssClass="btn4"  ID="Button1"  runat="server" Visible="True"  onclick="Button4_Click" CausesValidation="True" UseSubmitBehavior="False" >Write Comment</asp:LinkButton>
                                                        <asp:LinkButton CssClass="btn4"  ID="Button41"  runat="server" Visible="false"  onclick="Button41_Click" CausesValidation="True" UseSubmitBehavior="False" >Hide</asp:LinkButton>
                                        
                                                    </td>
                                                </tr>
                                            </table>
                                            </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 50%; padding: 0; height: 300px;vertical-align: top ">
                                <table style="width: 100%; height: 100%; vertical-align: top;  ">
                                    <tr>
                                        <td style=" width:100%; height:auto">
                                            <div  >
                                                <asp:Label ID="BlogName" class="h2" runat="server" Text='<%#Eval("BlogName") %>'></asp:Label>
                                                <asp:Label ID="ClientID" runat="server" Text='<%#Eval("ClientID") %>' Visible="False"></asp:Label>
                                                <asp:Label ID="BlogID" runat="server" Text='<%#Eval("ID") %>' Visible="False"></asp:Label><br />
                                                
                                                <p style="padding-left: 20px; color: darkslategray; font-weight: normal"><i class="fa fa-clock-o" style="padding-right: 3px"></i> <%#Eval("BlogTime") %> <span style="padding:5px"></span>  <i class="fa fa-calendar" style="padding-right: 3px"></i>  <%#Eval("BlogDate") %> <span style="padding:5px"></span>
                                                    <i class="fa fa-map-marker" style="padding-right: 3px"></i>  <%#Eval("BlogLocation") %> <br />
                                                    <span style="font-weight: bold"><i class="fa fa-user " style="padding-right: 3px"></i>  <%#Eval("BlogerName") %> </span>
                                                </p>
                                            </div>
                                             
                                        </td>
                                    </tr>
                                
                                    <tr>
                                        <td style="width:100%; height: auto; padding-top: 20px">
                                             <p id="Paragraph" style="padding-left:20px;font-size: 17px; font-family: Arial; font-weight: normal; height:60px; overflow: hidden"  runat="server" ><%#Eval("BlogDescription") %> <span>....</span></p>
                                             <p id="Paragraph1" style="padding-left:20px;font-size: 17px; font-family: Arial; font-weight: normal; height:auto" Visible="false" runat="server" ><%#Eval("BlogDescription") %></p>
                                             <asp:LinkButton style="color: #0094ff; text-decoration: none; padding-left: 20px; font-family: Arial,sans-serif" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-caret-down"> See More</i></asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton3" runat="server" style="color: gray; text-decoration: none; padding-left: 20px; font-family: Arial,sans-serif" Visible="False" OnClick="LinkButton3_Click"><i class="fa fa-caret-up"> See Less</i></asp:LinkButton> 
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                    </tr>
                                      
                                    



                                    <!-- Comment Section -->
                                    <div id="comment" ">

                                    <tr>
                                        <td style="width:100%; height: auto;">
                                            <table style="width:auto; height: auto;padding-left:20px;  border-collapse: collapse " >
                                                <tr>
                                                    <td  style="width: 300px; height: auto;border-collapse: collapse;">
                                                                <asp:Label ID="Update" runat="server" Text="" Visible="False" ForeColor="#006600" Font-Size="Medium"></asp:Label>
                                                                <asp:TextBox  ID="ComentTextBox" Visible="False" placeholder="Write your Comment here" runat="server" Width="90%" Height="35px" TextMode="MultiLine" BorderStyle="None" MaxLength="300"></asp:TextBox>
                                                     </td>
                                                     <td style="width: auto; height: auto;border-collapse: collapse;">
                                                                <asp:Button ID="AddCommentButton" Visible="false" runat="server" Text="Add" OnClick="AddCommentButton_Click" Width="150" Height="35px" BorderStyle="None" BackColor="#0066FF" ForeColor="White" Font-Bold="True" Font-Size="Medium"></asp:Button>
                                                      </td>
                                                </tr>
                                                <tr>
                                                    <td style="width:100%; height: auto">
                                                        <center>
                                                            <asp:DataList runat="server" ID="CommentDataList"  runat="server" RepeatColumns="1" CellPadding="0"   Width="100%" RepeatDirection="Horizontal">
                                                                <ItemTemplate >
                                                                    <div style="padding: 2px">
                                                                    <table style="width:100%; width: auto; border-radius: 10px; background-color: white; padding: 5px">
                                                                        <tr>
                                                                            <td style="width:100%; height: auto">
                                                                                <asp:Label ID="CommentatorName" Visible="True" runat="server"  Font-Bold="True" Font-Size="14px" ForeColor="Black"><%#Eval("ProfileName") %>, <span style="padding-left: 3px; font-size: 10px; color: dimgray"> <%#Eval("Time") %>, <%#Eval("Date") %> </span></asp:Label>
                                                                                <asp:Label ID="CommentatorName1" Visible="false" runat="server"  Font-Bold="True" Font-Size="14px" ForeColor="Black"><%#Eval("ProfileName") %>, <span style="padding-left: 3px; font-size: 10px; color: dimgray"> <%#Eval("Time") %>, <%#Eval("Date") %> </span></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="width:100%; height: auto">
                                                                                <asp:Label ID="Comment" Visible="True" runat="server"  Font-Size="14px" Font-Names="Roboto" ForeColor="Black"><%#Eval("CommentDescription") %></asp:Label>
                                                                                <asp:Label ID="Comment1" Visible="false" runat="server"  Font-Size="14px" Font-Names="Roboto" ForeColor="Black"><%#Eval("CommentDescription") %></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table></div>
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                            
                                                        </center>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    </div>





                                   
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
                       
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
        </ContentTemplate></asp:UpdatePanel>
</asp:Content>
