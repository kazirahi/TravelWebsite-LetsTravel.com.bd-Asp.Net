<%@ Page Title="Admin check blog" Language="C#" MasterPageFile="~/AdminPanelMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminBlog.aspx.cs" Inherits="ExploreBangla.Pages.AdminBlog" %>
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
            margin: 0px; padding-left: 5px; font-size:2em ; font-weight:bold; color: black
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
        .check{
            color: gray;
        }
        .cross{
             color: gray;
        }
        .check:hover{
            color: green;
        }
        .cross:hover{
            color: red;
        }
    </style>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

   
    <div style="width: 100%; height: auto">
        <h1 style="width: 100%; height: auto; padding-left: 20px; color:gray">Blog</h1>
        <asp:Label align="center" ID="NoBlog" runat="server" Text="No Blogs Found.Go to Create a blog section" BorderColor="#CC0000" BorderStyle="Solid" Font-Names="Roboto" Font-Size="Large" ForeColor="Black" Visible="False"></asp:Label>
        <table style="width: 100%; height: auto">
            <tr>
                
                <td style="width: 100%; height: auto; background-color: white">
                    <table style="width: 100%; height: auto; ">
                        <tr>
                            <td style="width: 100%; height: auto; padding:0 10px">
                                <div>
                                    
                        
            <asp:DataList  ID="DataList1"  runat="server" RepeatColumns="1" CellPadding="0"   Width="100%" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">

                <ItemTemplate >
                    <div style="padding:5px ">

                   
                    <table  style="width: 100%; padding: 0 5px 0 5px; height: auto; background-color: #eeeeee; border: 1px solid black;  ">
                        <tr>
                            <td style="width: 100%; height: auto;">
                                <table style="width: 100%; height: auto;">
                                    <tr>
                                        <td align="left" style="width: 20%; height: auto ; vertical-align:top;padding:5px">
                                <asp:Image style="width: 300px" ID="Image2" runat="server" Height="200px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("BlogPic")) %>' ImageAlign="Middle" Width="350px" />
                            </td>
                            <td style="width: 80%; padding: 5px; height: auto;vertical-align: top ">
                                <table style="width: 100%; height: auto; vertical-align: top">
                                    <tr>
                                        <td align="right" style="width: auto; height: auto; vertical-align: top; " > 
                                             <asp:Label ID="Label1" style="padding: 5px; background-color: #ff244e"  runat="server" Text='<%#Eval("Status") %>'  Font-Bold="True"></asp:Label>

                                        </td>
                                        <td align="right" style="width: auto; height: auto; vertical-align: top">
                                            <asp:LinkButton CssClass="check" ID="Edit" runat="server" Height="25" Width="25"  BorderStyle="None" Font-Size="20px" OnClick="LinkButton1_Click" ToolTip="Accept"><i class="fa fa-check"></i></asp:LinkButton>
                                        </td>
                                        <td align="right" style="width: auto; height: auto; vertical-align: top">
                                            <asp:LinkButton CssClass="cross" ID="Delete" runat="server" Width="25" Height="25"  Font-Size="20px" OnClick="LinkButton2_Click"  ToolTip="Declined"><i class="fa fa-remove"></i></asp:LinkButton>
                                        </td>
                                        <td align="right" style="width: auto; height: auto; vertical-align: top">
                                        <asp:LinkButton ID="DeleteButton" CssClass="cross" runat="server" Font-Size="20px" OnClick="DeleteButton_Click" OnClientClick="return confirm('Are you sure you want to delete this blog ?')" Width="25" Height="25" ToolTip="Delete Blog"><i class="fa fa-trash"></i></asp:LinkButton>
                                        </td>
                                     </tr>
                                    <tr>
                                        <td style=" width:100%; height:auto">
                                            
                                                <asp:Label class="h2" ID="BlogName" runat="server" Text='<%#Eval("BlogName") %>'></asp:Label><br />
                                                <asp:TextBox ID="BlognameEdit" runat="server" Width="100%" Height="100%" Font-Bold="True" Font-Size="25px" Visible="false" Text='<%#Eval("BlogName") %>'></asp:TextBox><br />
                                            
                                            <div>
                                            <asp:Label style="padding-left: 5px"  ID="GetID" runat="server" Text= '' ForeColor="#CC0000">ClientID: <%#Eval("ClientID") %></asp:Label><br />
                                            <asp:Label style="padding-left: 5px" ID="BlogID" runat="server" Text= '<%#Eval("ID") %>' ForeColor="#CC0000">BlogID: <%#Eval("ID") %></asp:Label><br />
                                            </div>
                                             <h5 style="margin: 0px; padding-left: 5px; font-family:Arial; font-size: 14px; font-style: italic; color: gray">
                                              <i class="fa fa-calendar" style="padding-right: 20px">  <%#Eval("BlogDate") %> </i> <i class="fa fa-clock-o" style="padding-right: 20px"><%#Eval("BlogTime") %> </i>
                                            </h5>
                                        </td>
                                    </tr>
                                   <tr>
                                        <td id="tb" style="padding-left: 0;vertical-align:top ">
                                            <div style="margin: 0px; padding-left: 5px; font-family:Arial; font-size: 22px; font-weight:bolder; color: gray">
                                               <i class="fa fa-user " style="">  <%#Eval("BlogerName") %> </i>
                                            </div>
                                               <div style="margin: 0px; padding-left: 5px; font-family:Arial; font-size: 14px; font-style: italic; color: gray">

                                               <i class="fa fa-map-marker"  > <%#Eval("BlogLocation") %></i>
                                            </div>
                                        </td>
                                    </tr>
                                    
                                     
                                     
                                   
                                </table>

                            </td>
                                    </tr>
                                </table>
                            </td>
                            
                        </tr>
                        <tr>
                            <td style="width: 100%; height: auto">
                                <table style="width: 100%; height: auto">
                                    <tr>
                                        <td style="width: 100%; height: auto">
                                   <p style="font-size: 14px; font-family: Arial; font-weight: bolder" ID="AnswerLabel" runat="server" Visible="true"><%#Eval("BlogDescription") %></p>
                                             <asp:TextBox ID="EditableCheackBox" runat="server" Height="100%" Width="100%" TextMode="MultiLine" Font-Size="18px" Font-Names="Roboto" Font-Bold="True" Visible="False" Text='<%#Eval("BlogDescription") %>'></asp:TextBox>
                                 </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                    </table>
                   </div>
                </ItemTemplate>
            </asp:DataList>
        
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
