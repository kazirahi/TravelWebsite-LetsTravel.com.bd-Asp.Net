<%@ Page Title="Ranking Place" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RankedPlace.aspx.cs" Inherits="ExploreBangla.Pages.RankedPlace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .table{
            box-shadow: 0 0 10px gray;
            
        }
         .triangle{
             position:absolute;
               top:0;
               left:0;
                background-color: #d00040;
                clip-path: polygon(0 0, 0 100%, 65% 0);
                box-shadow: 5px 5px 5px black;
         }
        .table .moreText{
           
            color: yellow;
            top:10%;
            left:2%;
            text-shadow: 0 0 25px yellow;
            font-size: 80px;
            font-weight: bold;
            padding: 20px 0 0 20px;
        }
        .cardImageTable{
           
            width: 100%; 
            height: 300px; 
            clip-path: polygon(0 0, 100% 0, 100% 100%, 0 85%);
            background-size: 100% 100%; 
            background-repeat: no-repeat ;
            vertical-align:bottom;
            padding:20px;
           
        }
        .table1 {
            position: relative;
            background-color: white;
            margin: 10px;
            padding:0;
            width: 300px; 
            height: 450px;
            box-shadow: 0 0 10px gray;
         
        }
        .alltable{
            height:auto; width: auto;
            transition: all 0.5s ease-in-out;
            transform: translate(-50, -50);
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
           margin-top: 200px;
           margin-left: 1%;
           background-color: #d00040;
           height: 80px;
           width: 80px;
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
     } .table{
            box-shadow: 0 0 10px gray;
            
        }
         .triangle{
             position:absolute;
               top:0;
               left:0;
                background-color: #d00040;
                clip-path: polygon(0 0, 0 100%, 65% 0);
                box-shadow: 5px 5px 5px black;
         }
        .table .moreText{
           
            color: yellow;
            top:10%;
            left:2%;
            text-shadow: 0 0 25px yellow;
            font-size: 80px;
            font-weight: bold;
            padding: 20px 0 0 20px;
        }
        .cardImageTable{
           
            width: 100%; 
            height: 300px; 
            clip-path: polygon(0 0, 100% 0, 100% 100%, 0 85%);
            background-size: 100% 100%; 
            background-repeat: no-repeat ;
            vertical-align:bottom;
            padding:20px;
           
        }
        .table1 {
            position: relative;
            background-color: white;
            margin: 10px;
            padding:0;
            width: 300px; 
            height: 450px;
            box-shadow: 0 0 10px gray;
         
        }
        .alltable{
            height:auto; width: auto;
            transition: all 0.5s ease-in-out;
            transform: translate(-50, -50);
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
           margin-left: 1%;
           background-color: #d00040;
           height: 80px;
           width: 80px;
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



    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <div style=" background-color: #eeeeee">

      
       <!-- Ranked 1st Portion-->
          
        <div "  style="width: 100%; height: auto">
            
         
    
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <table ID="topRanked" class="table" style="width:100%; height: 450px; background-image: url('<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("PlaceCImage")) %>');
    background-size: 100% 100%;background-repeat: no-repeat">
                
                <tr>
                    <td class="triangle" align="left" style="width: 50%; height: auto; vertical-align: top; ">
                     
                        <p class="moreText"><i class="fa fa-trophy"></i></p>
                    </td>
                    <td style="width: 50%; height: auto; padding:50px">
                        <table style="width: 100%; height: auto; padding:30px;border-radius:30px; background-color:rgba(0, 0, 0, 0.25)" align="center">
                            <tr>
                                <td align="center" style="width: 100%; height: auto">
                                    <p style="font-family:'Calligraffitti', cursive;font-size: 50px;font-weight: bold; color: white"><%#Eval("PlaceName") %></p>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 50%; height: auto">
                                    <p style="padding:10px;font-family:Arial, cursive;font-size: 22px;font-weight: normal; color: white">
                                        <i class="fa fa-eye" style="padding-left:20px">   250</i>
                                        <i class="fa fa-bell" style="padding-left:20px">   350</i>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 50%; height: auto">
                                    <p style="padding:10px;font-family:Arial, cursive;font-size: 15px;font-weight: bold; color: white"><%#Eval("PlaceDescription") %></p>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
            </table>
                </ItemTemplate>
            </asp:DataList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PlaceInfo] WHERE ([position] = @position)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DataList1" DefaultValue="1" Name="position" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            

        </div>
       <!-- Ranked 2nd Portion-->
        <center>
            <asp:DataList ID="DataList2" runat="server" DataKeyField="ID"  CellPadding="0"  RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList2_ItemCommand">
                <ItemTemplate>
                    
                    <div class="div" style="width: 100%; height: auto;">
                        <table class="alltable">
                            <tr>
                                <td>
                                    <table class="table2" align="center" >
                                        <tr>
                                             <td align="center" style="width: 100%; height: 100%">
                                                 <asp:LinkButton align="center" CssClass="click" ID="clickmore" style="" runat="server"  CommandName="clickmore1" CommandArgument='<%#Eval("PlaceName") %>' Width="150" Height="40" ToolTip="For More Information"  ><i class="fa fa-globe" style=" font-size:20px; padding:0px">   More Info</i></asp:LinkButton>
                        
                                             </td>
                                        </tr>
                 
                                     </table>
                        <table class="table1"  >
                
                <tr>

                    <td class="cardImageTable" style="background-image:url('<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("PlaceCImage")) %>'); ">
                        
                        
                    </td>  
                </tr>
                            <tr>
                    <td class="rank">
                        <p><%#Eval("position") %></p>
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
         
      
                            <div style="width:100%; margin:10px 0;" align="center">
                                <asp:Button ID="Button1" runat="server" Text="<<" OnClick="Button1_Click" CssClass="paggingbtn"></asp:Button>
                                <asp:Button ID="Button2" runat="server" Text="<" OnClick="Button2_Click" CssClass="paggingbtn"></asp:Button>
                                <asp:Button ID="Button7" runat="server" Text=">" OnClick="Button7_Click" CssClass="paggingbtn"></asp:Button>
                                <asp:Button ID="Button8" runat="server" Text=">>" OnClick="Button8_Click" CssClass="paggingbtn"></asp:Button>
                            </div>
                      
        </div>

   </ContentTemplate></asp:UpdatePanel>
    
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
