
<%@ Page Title="Information" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="ExploreBangla.Pages.info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .h2 {
            margin: 0px;
            padding-left: 20px;
            font-size: 58px;
            font-family: 'Calligraffitti', cursive;
            font-weight: bold;
            color: black
        }

            .h2:hover {
                color: #ff6a00;
            }

        .btn3 {
            height: 50px;
            border-radius: 10px;
            width: 200px;
            text-decoration: none;
            background-color: #d00040;
            color: white;
            border: none;
            font-family: Arial;
            font-weight: bold;
            font-size: 15px;
        }

            .btn3:hover {
                background-color: #0094ff;
            }

        .btn4 {
            height: 50px;
            border-radius: 10px;
            width: 200px;
            text-decoration: none;
            background-color: #0094ff;
            color: white;
            border: none;
            font-family: Arial;
            font-weight: bold;
            font-size: 15px;
        }

            .btn4:hover {
                background-color: #d00040;
            }

        .button {
            width: auto;
            height: auto;
            border: 1px solid #808080;
            border-radius: 7px;
            background-color: #bfbfbf;
            padding: 10px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bolder;
            color: #393939;
            text-decoration: none;
            justify-content: normal;
            margin: 3px;
            display: inline-block;
        }

            .button:hover {
                background-color: #d00040;
                color: white;
            }

        .table1:hover {
            background-color: #95d4f7;
            box-shadow: 5px 5px 5px gray;
        }

        #searchbox {
            position: absolute;
            left: 0;
            transform: translate(-50%,-50%);
            background-color: black;
            height: 30px;
            border-radius: 10px;
        }

        .gallarybtn {
            width: 80%;
            height: 150px;
        }

            .gallarybtn:hover {
                box-shadow: 5px 5px 5px gray;
            }

        .trans:hover {
            box-shadow: 5px 5px 5px gray;
            background-color: #eeeeee;
        }

        .hoteltbl {
            
            box-shadow: 0px 0px 10px gray;
        }

            .hoteltbl:hover {
                background-color: #eeeeee;
                box-shadow: 0px 0px 10px gray;
            }

        
        .paggingbtn{
            border: 1px solid gray;
            background-color: #d00040;
            color:white;
            font-weight: bold;
            width:35px;
            height: 35px;
            
            
        }
        .paggingbtn:hover{
            background-color:aliceblue;
            color: #d00040;
        }

   
        .table{
            box-shadow: 0 0 10px gray;
            vertical-align: top;
            
        }
         
        .cardImageTable{
           
            width: 100%; 
            height: 300px; 
            clip-path: polygon(0 0, 100% 0, 100% 100%, 0 85%);
            background-size: 100% 100%; 
            background-repeat: no-repeat ;
            vertical-align:top;
            padding:00px;
            
           
        }
        .table12 {
            position: relative;
            background-color: white;
            margin: 10px;
            padding:0;
            width: 300px; 
            height: 450px;
            box-shadow: 0 0 10px gray;
            vertical-align: top;
         
        }
        .alltable{
            height:auto; width: auto;
            transition: all 0.5s ease-in-out;
            transform: translate(-50, -50);
            vertical-align: top;
        }
        .alltable:hover .table2{
           
            transition: all 0.5s ease-in-out;
            background-color: rgba(0, 0, 0, 0.75);
            visibility:visible;
        }
       

         .table2 {
             position:absolute;
             content: " ";
            color: white;
            
            z-index:99;
            vertical-align: central;
            margin:10px;
            border: 2px solid white;
            padding:0;
            width: 300px; 
            height: 450px;
            transform: translate(-50, -50);
            transition: all 0.6s ease-in-out;
            visibility: hidden;
           
         
        }
       
        

        .transform{
            width: 0px;
            height:0px;
            border: none;
            overflow: hidden;
            padding-left:20px;
            color:white;
            font-size: 15px;
            font-weight: normal;
            font-family: Roboto;
            transition: 0.4s all ease-in-out;
            visibility: hidden;
            width: 0;
            height: 0;
            
        }
        
       
        
       
    
       .circle{
            
            color: black;
            
            width:10%;
            height: 10%;
            border-radius: 50%;
            vertical-align: bottom;
            border: 2px solid white;
            align-content: center;
            background: #d00040;
           
            vertical-align: middle;
        }  
        
      .rank{
           position:absolute;
           margin-top: -70px;
           margin-left: 5%;
           background-color: #d00040;
           height: 50px;
           width: 50px;
           border-radius: 50%;
           z-index: 98;
           border: 2px solid white;
           justify-items: center;
       }
      .rank p{
          font-size: 25px;
          font-family: Roboto;
          font-weight: bold;
           text-align: center;
           color: white;
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
      .click{
          border: 3px solid white;
          text-align: center; 
          text-decoration: none; 
          font-weight: bold; 
          color: white;
          transition: all 0.5s ease-in-out;
          border-radius: 20px;
          padding-top: 20px;
          padding-left: 10px;
          vertical-align: middle;
          font-family: Lato;
      }
   .click:hover{
        
         background-color: white;
         color: black;
         transform: translate(-50,-50);
         transition: all 0.5s ease-in-out;
     } 
       
    </style>
    
    <div style="background-color: white; width:auto">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                            <asp:Label ID="Label1" Visible="false" runat="server" Text=""></asp:Label>
    <div style="width: 100%; padding:0px 0px 0px 0px">
        <table style="width:100%; height: auto">
            <tr >
                <!-- Main Content -->
                <td style="  width: 80%;padding-top:10px;padding-right:10px; padding-left: 10px; height: auto; vertical-align: top">
                    <table style="width: 100%; height: auto;border-radius:0px;background-color:white;">
                        <tr>
                            <td style="width: 100%; height: auto; padding-left:10px">
                                <asp:DataList ID="DataList2" runat="server" RepeatColumns="1" Width="100%" CellSpacing="1" >
                        <ItemTemplate>
                            <table style="width:100%; height: auto;">
                        <!-- Photo and Place Name -->
                                    <tr>
                             <td style="top:0;height: 600px;border-radius:10px; background-image:url('<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("PlaceCImage")) %>');background-size:100% 100%;background-repeat:no-repeat;vertical-align: bottom">
                                 <table style="width: 100%; height:auto;  vertical-align: bottom">
                                     <tr>
                                         
                                         <td style="width:100%; background-color: rgba(0, 0, 0, 0.50);">
                                              <h1 ID="placename" style=" padding-right:10px;font-size: 58px ;text-align:end; 
                            font-family: 'Calligraffitti', cursive; font-weight:bold; color: white;"><%#Eval("PlaceName") %></h1>
                                                                
                                        </td>
                                     </tr>
                                 </table>
                             </td>   
                        </tr>

                        <!-- Description  -->
                                    <tr class="trans">
                                        <td style="width:100%; height: auto">
                                            <p style="border-left: 4px dotted #d00040;padding: 50px;font-family: Lato, cursive; font-size: 18px; font-weight: bold">
                                                            <%#Eval("PlaceDescription") %></p>
                                        </td>
                                    </tr>
                                    <!-- Image -->
                                    

                                    <!-- Transportation -->
                                    <tr>
                                        <td class="trans" style="background-color: #eeeeee">
                                            <table  style="width:100%; height: auto; ">
                                                <h2 style="border-left: 10px solid #d00040;text-align: left;padding-left:20px">How To go to <%#Eval("PlaceName") %></h2>
                                                <tr>
                                                    <td align="center" style="width:30%; height:auto">
                                                        <asp:Image ID="Image9" runat="server"  Height="200" ImageAlign="Middle" ImageUrl="~/Images/bus.png" />
                                                    </td>
                                                    <td style="border-left: 2px dotted #d00040;">
                                            
                                                        <p style="padding: 20px 50px;font-family: Arial, cursive; font-size: 14px; line-height:23px; font-weight: bold">
                                                            <%#Eval("TransportDescription") %>
                                                        </p>
                                            
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <!-- Food -->
                                    <tr>
                                        <td class="trans">
                                            <table  style="width:100%; height: auto">
                                                <h2 style="border-right: 10px solid #d00040;text-align: right;padding-right:20px">Famous Food in <%#Eval("PlaceName") %></h2>
                                                <tr>
                                        
                                                    <td style="border-right: 2px dotted #d00040;">
                                                        <h3 style="padding-left:50px;"><%#Eval("FoodName") %></h3>
                                                        <p style="padding: 20px 50px;font-family: Arial, cursive; font-size: 14px; line-height:23px; font-weight: bold">
                                                            <%#Eval("FoodDescription") %>
                                                        </p>
                                            
                                                    </td>

                                                    <td align="center" style="width:30%; height:auto">
                                                        <asp:Image ID="Image10" runat="server"  Height="200" ImageAlign="Middle" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("FoodImage")) %>' />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                
                                    
                        </table>
                     </ItemTemplate>
                    </asp:DataList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%; height: auto;background-color: #eeeeee">
                                <table style="width: 100%; height: auto">
                                   <tr>
                                    <td style="border-left: 10px solid #d00040; ">
                                        <h2 style="text-align: left;padding-left:20px">
                                            <asp:Label ID="hotellabel"  style="font-size: 1em;text-align: right; font-weight:bold;width:100%; text-align: right;padding-right:20px" runat="server"></asp:Label></h2>
                                    </td>
                                </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto; background-color: #eeeeee">
                                <center>
                                <asp:DataList ID="DataList5" runat="server"  CellPadding="10"  CellSpacing="2"  RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                         <table class="hoteltbl" align="center" style="width: 220px;padding:0 ;background-color: white; height: auto; vertical-align: top ">
                                             <asp:Image  style="padding:0px; box-shadow:0px 0px 10px gray; width: 220px;border-top-left-radius:10px; border-top-right-radius: 10px" ID="Image3" runat="server"  Height="180" ImageAlign="Middle" ImageUrl='<%#Eval("HotelImageUrl") %>' CssClass="htlimage" />
                                             <tr>
                                                    <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                                        <div style="text-align: center;font-family:Arial, Helvetica, sans-serif; font-weight: bold; font-size:14px"><%#Eval("HotelName") %></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                                        <p style="text-align: center;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><%#Eval("HotelDescription") %></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                                        <div style="text-align: left; font-family:Arial, Helvetica, sans-serif; font-size: 13px; color: #808080"> <i class="fa fa-map-marker"></i> <%#Eval("Adrees") %></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                                        <div style="text-align: left;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><i class="fa fa-phone" ></i> <%#Eval("HotelContactNo") %></div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                                        <div style="text-align: left;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><i class=" fa fa-bed" ></i> <span style="color: #d00040; font-weight: bold"> <%#Eval("HoteleStatus") %> </span></div>
                                                    </td>
                                             
                                                 
                                   
                                    </table>
                                    </ItemTemplate>
                                    
                                </asp:DataList>
                              </center>
                                            </td>
                                         </tr>
                                                            <tr>
                            <td style="width:100%;" align="right">
                                <asp:Button ID="Button1" runat="server" Text="<<" OnClick="Button1_Click1" CssClass="paggingbtn"/>
                                <asp:Button ID="Button2" runat="server" Text="<" OnClick="Button2_Click" CssClass="paggingbtn"/>
                                <asp:Button ID="Button7" runat="server" Text=">" OnClick="Button7_Click" CssClass="paggingbtn"/>
                                <asp:Button ID="Button8" runat="server" Text=">>" OnClick="Button8_Click" CssClass="paggingbtn"/>
                            </td>
                        </tr>

                                </table>
                            
                                             
                                             
                                             
                                          
                                            
                                        
                               
                               </td>
                            
                                           
                            
                        </tr>

                        <!--ResTaurent -->
                        <tr >
                            <td style="width: 100%; height: auto; border-right: 10px solid #d00040;">
                                <h2 style="text-align: right"><asp:Label ID="title" align="right" style="font-size: 1em;text-align: right; font-weight:bold;width:100%; text-align: right;padding-right:20px" runat="server" ></asp:Label>
                            </h2>
                                    </td>
                        </tr>
                        <tr>
                            <td style="width: 100%; height: auto">
                                <center>
                                <asp:DataList ID="DataList6" runat="server" RepeatColumns="4"  CellPadding="10">
                        <ItemTemplate>
                                <table class="hoteltbl" align="center" style="width: 220px;padding:5px; height: auto; vertical-align: top ">
                                    <asp:Image style="padding:0px;border-top-left-radius:10px;border-top-right-radius:10px; width: 220px; box-shadow:0 0 10px gray" ID="Image1" runat="server"  Height="180" ImageAlign="Middle" ImageUrl='<%#Eval("RestaurentImageUrl") %>' CssClass="htlimage" />
                                  
                                  
                                    <tr>
                                        <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                            <div style="text-align: center;font-family:Arial, Helvetica, sans-serif; font-weight: bold; font-size:14px"><%#Eval("RestaurentName") %></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                            <div style="text-align: center;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><%#Eval("RestaurentDescription") %></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  style="width: 100%; height: auto;padding:15px 5px 5px 20px">
                                            <div style="text-align: left; font-family:Arial, Helvetica, sans-serif; font-size: 13px; color: #808080"><i class="fa fa-map-marker"></i> <%#Eval("Adrees") %></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                            <div style="text-align: left;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><i class="fa fa-phone"></i> <%#Eval("RestaurentContactNo") %></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  style="width: 100%; height: auto; padding: 5px 5px 5px 20px">
                                            <div style="text-align: left;font-family:Arial, Helvetica, sans-serif;font-size: 13px; color: #808080""><i class="fa fa-clock-o"></i> <span style="color: red;font-weight: bold"> <%#Eval("RestaurentStatus") %></span></div>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                    </asp:DataList>
                                    </center>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:100%;" align="right">
                                <asp:Button ID="Button9" runat="server" Text="<<" OnClick="Button9_Click" CssClass="paggingbtn"/>
                                <asp:Button ID="Button10" runat="server" Text="<" OnClick="Button10_Click" CssClass="paggingbtn"/>
                                <asp:Button ID="Button11" runat="server" Text=">" OnClick="Button11_Click" CssClass="paggingbtn"/>
                                <asp:Button ID="Button12" runat="server" Text=">>" OnClick="Button12_Click" CssClass="paggingbtn"/>
                            </td>
                        </tr>
                        <!--More Popular Place -->
                         <tr>
                             <td style="width: 100%; height: auto; background-color: #eeeeee">
                                 <table style="width: 100%; height: auto; ">
                                      <tr >
                            <td style="width: 100%; height: auto; border-left: 10px solid #d00040">
                               <h2> <asp:Label ID="Label3"  style="font-size: 1em;text-align: left; font-weight:bold;width:100%; padding-left:20px" runat="server"></asp:Label></h2>
                                    </td>
                        </tr>
                        
                            <tr>
                            <td style="width: 100%; height: auto">
                                <center>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID"  CellPadding="0"  RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList2_ItemCommand">
                <ItemTemplate>
                    
                    <div class="div" style="width: 100%; height: auto;">
                        <table class="alltable">
                            <tr>
                                <td style="width:100%; height: auto; vertical-align: top">
                                    <table class="table2" align="" >
                                        <tr>
                                             <td align="center" style="width: 100%; height: 100%">
                                                 <asp:LinkButton align="center" CssClass="click" ID="clickmore" style="" runat="server"  CommandName="clickmore1" CommandArgument='<%#Eval("PlaceName") %>' Width="150" Height="40" ToolTip="For More Information"  ><i class="fa fa-globe" style=" font-size:20px; padding:0px">   More Info</i></asp:LinkButton>
                        
                                             </td>
                                        </tr>
                 
                                     </table>
                        <table class="table12"  >
                
                <tr>

                    <td class="cardImageTable" style="background-image:url('<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("PlaceCImage")) %>'); ">
                        
                        
                    </td>  
                </tr>
                            <tr>
                    <td aliign="center" class="rank">
                        <i align="center" class="fa fa-star" style="text-align: center; font-size: 40px; color: yellow; padding: 6px; text-shadow: 0 0 5px black"></i>
                    </td>
                </tr>
                <tr>
                    <td  style="width: 100%;height: auto; background-color: white">
                        <table class="cardtable" style="width: 100%; height:  auto;padding: 10px">
                            
                            <tr>
                                <td style="width: 100%; height:  auto">
                                    <asp:Label ID="test234" runat="server" style="font-size: 30px; padding:8px; font-family: Lato; font-weight: bold; color: black">
                                    <%#Eval("PlaceName") %>
                                    </asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td  style="width: 100%; height:  auto">
                                    <p style="padding:0px;font-family:Arial, cursive;font-size: 13px;font-weight: bold; color: dimgray">
                                        <i class="fa fa-eye" style="padding-left:8px">   250</i>
                                        <i class="fa fa-bell" style="padding-left:20px">   350</i>
                                    </p>
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
         
      
                           
                                <br />
                               

                            </td>
                        </tr>
                        <tr> 
                            <td style="width: 100%;" align="right">
                                  <div style="width:100%; margin:10px 0;" align="center">
                                <asp:Button ID="Button13" runat="server" Text="<<" OnClick="Button13_Click" CssClass="paggingbtn"></asp:Button>
                                <asp:Button ID="Button14" runat="server" Text="<" OnClick="Button14_Click" CssClass="paggingbtn"></asp:Button>
                                <asp:Button ID="Button15" runat="server" Text=">" OnClick="Button15_Click" CssClass="paggingbtn"></asp:Button>
                                <asp:Button ID="Button16" runat="server" Text=">>" OnClick="Button16_Click" CssClass="paggingbtn"></asp:Button>
                            </div>
                            </td>
                        </tr>
                                 </table>
                             </td>
                         </tr>   
            
           
                      
                    </table>
                    
                </td>
                
                <!-- Sidebar --> 
                <td style="padding-left:00px;box-shadow:0 0 10px gray;vertical-align: top; background-color:#eeeeee; padding-top:0;height: 10px; width: 20%">
                   <table style="width: 100%;height:100% ">
                       <tr>
                           <td style="width:100%; height: 50%;padding-top:0;  vertical-align: top">
                               <table style="padding:10px;height:auto;vertical-align:top">
                        <tr >
                            <td style="">
                                <table style="border:1px solid BLACK;background-color: white; height: auto; width: 100%">
                                    <tr>
                                        <td >
                        
                    <asp:TextBox id="HomepageSearchBox"  style="width:100%;height:30px; border-radius: 1px; font-size: 14px" placeholder="Where are You Want to GO!!" runat="server" BackColor="White"    ForeColor="Black"  MaxLength="250"  ClientIDMode="Inherit" Wrap="False" EnableViewState="True" CausesValidation="False" ToolTip="Enter Place Name" BorderColor="White" BorderStyle="Solid" BorderWidth="1"></asp:TextBox>
                    
                </td >  
                <td style="padding-top:0; background-color:#eeeeee">
                    <asp:ImageButton ID="searchButton" style="" runat="server" Height="25" Width="25" ImageUrl="~/Images/search.png" OnClick="searchButton_Click" ></asp:ImageButton>
                </td>
                                    </tr>
                                </table>
                            </td>
                
                
            </tr>
                        <tr>
                            <td>
                                <div style="">
        <asp:DropDownList ID="DropDownList1" runat="server" style="width: 100%; height:25px" DataSourceID="SqlDataSource1" DataTextField="PlaceName" DataValueField="ID" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  AppendDataBoundItems="True" Font-Size="1.2em" Font-Bold="True" Font-Names="Roboto" CausesValidation="False"  align="center">
            <asp:ListItem Text=" -- Select Place -- " Value="0"> </asp:ListItem>
           

        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID],[PlaceName] FROM [PlaceInfo] order by PlaceName"></asp:SqlDataSource>
        
    </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h3>Popular Blog</h3>
                            </td>
                        </tr>
                        <tr style="margin-top: 5px;padding-bottom:10px">
                            <td style="">
      <center>
            <asp:DataList ID="DataList3"  runat="server" RepeatColumns="1" CellSpacing="0" CellPadding="0"   Width="100%"   valign="top">
                
                <ItemTemplate >
                    <div style="padding-bottom:10px">
                    <table class="table1" style="width: 100%; height: 100px ; border: 1px solid black">
                                    <tr>
                                        <td style="width: 40%; height: 100px ; ">
                                            <asp:Image ID="Image2" runat="server" style="width: 100px;" Height="100px" ImageAlign="Middle" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("BlogPic")) %>'  />
                                        </td>
                                        <td style="width: 60%; vertical-align: top">
                                            <table style="width: 100%;height:100px">
                                                <tr>
                                                    <td style="height: auto; overflow: hidden">
                                                        <a class="blogname" style="   font-size:16px ; font-weight: bold; text-decoration:none; color: black;" href="Bloger.aspx" target ='_blank'"><%#Eval("BlogName") %></a><br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <p style="font-size: 10px; font-weight: bold; color: darkslategray">  <%#Eval("BlogerName") %></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    
                                                    <td>
                                                        <i class="fa fa-star" style="color: #d00040"></i>
                                                        <i class="fa fa-star" style="color: #d00040"></i>
                                                        <i class="fa fa-star" style="color: #d00040"></i>
                                                        <i class="fa fa-star" style="color: #d00040"></i>
                                                        <i class="fa fa-star" style="color: #d00040"></i>
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
                               
                                
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <h3 style="padding:5px; border-bottom:2px solid #d00040">Referral Article</h3>
                    <a style="   border-bottom: 1px solid #d00040; font-size:12px ; text-decoration:none; color: black;" href="https://bit.ly/2NwvbSE" target ='_blank'">EXPLORING ST MARTIN EXPLORING ST MARTIN’S ISLAND OFF THE BANGLADESH COAST</a><br /><br />
                    <a style="  border-bottom: 1px solid #d00040; font-size:12px ;  text-decoration:none; color: black;" href="https://bit.ly/37ZjX2u" target ='_blank'">NEW MARINE PROTECTED AREA FOR BANGLADESH</a><br /><br />
                    <a style=" border-bottom: 1px solid #d00040; font-size:12px ;  text-decoration:none; color: black;" href="https://bit.ly/2Vkeyhw" target ='_blank'">BANGLADESH UPDATES CONSERVATION RED LIST</a><br /><br />    
                    <a style=" border-bottom: 1px solid #d00040; font-size:12px ;  text-decoration:none; color: black;" href="https://www.bangladesh.com/blog/cultural-diversity-at-ethnological-museum-in-chittagong/" target ='_blank'">CULTURAL DIVERSITY AT ETHNOLOGICAL MUSEUM IN CHITTAGONG</a><br /><br />   
                     
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table align="middle">
                        <tr>
                            <div align="left" style="padding:2px; font-size:12px; font-weight: bold; font-family: Arial; font-style: italic; color: #808080"></div>
                        </tr>
                                            
                                    <div style="font-size: 12px; font-weight: bold;font-family:Arial; color: dimgray">
                                        <caption>
                                            Something find in Google...</caption>
                                    </div>
                                     <tr>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" Height="25px" placeholder="Search on Google..." Width="200px"></asp:TextBox>
                                </td>
                                <td align="center" style=" border: 1px dashed grey; width:40px">
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="23" ImageAlign="Middle" ImageUrl="~/Images/search.png" OnClick="ImageButton2_Click" OnClientClick="aspnetForm.target ='_blank';" target="_blank" Width="25" />
                                </td>
                            </tr>
                            </table>
                            </td>
                            </tr>
                            <tr>
                                <td style="width: 100%; height: auto; "><a class="button" href="https://www.bangladesh.com/blog/" target="_blank">Bangladesh</a> <a class="button" href="https://www.skyscanner.net/" target="_blank">Skyscanner</a> <a class="button" href="https://www.kayak.com/" target="_blank">Kayak</a> <a class="button" href="https://glampinghub.com/" target="_blank">Glamping Hub</a> <a class="button" href="https://www.google.com/flights?hl=en" target="_blank">Google Flights</a> <a class="button" href="https://www.airbnb.com/" target="_blank">Airbnb</a> <a class="button" href="https://roadtrippers.com/" target="_blank">Roadtrippers</a> <a class="button" href="https://airwander.com/" target="_blank">Airwander</a> </td>
                            </tr>
                            </table>
                            </td>
                            </tr>
                            <tr>
                                <td style="width:100%;  vertical-align: bottom; ">
                                    <table style="width: 100%; height: auto; vertical-align: bottom; vertical-align:bottom; ">
                                        <tr>
                                            <td style="padding-left: 10px ; ">
                                                <table align="right">
                                                    <tr>
                                                        <div align="left" style="padding:2px; font-size:12px; font-weight: bold; font-family: Arial; color: #808080">
                                                        </div>
                                                    </tr>
                                                    <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server"   style="padding:2px; font-size:12px; font-weight: bold; font-family: Arial; ">Newsletter, Just throug the mail.....</asp:Label>

                            </td>
                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="TextBox1" runat="server" Height="37px" placeholder="Enter your mail address..." Width="200px" BorderStyle="None"></asp:TextBox>
                                                            </td>
                                                            <td align="center" style=" border: 1px dashed grey; width:40px">
                                                                <asp:ImageButton ID="ImageButton2" runat="server" Height="25" ImageAlign="Middle" ImageUrl="~/Images/send.png" OnClick="ImageButton1_Click" Width="25" />
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
                           </td>
                       </tr>
                   </table>
                    
                        
                    

                </td>
               
            </tr>
        </table>
         </table>  
</td>

   
    </div>
    
                           
                            </div>
    
        </ContentTemplate></asp:UpdatePanel>
    
    <!--Join Our Team -->
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
    
 </div>
</asp:Content>
