<%@ Page Title="Blog" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Bloger.aspx.cs" Inherits="ExploreBangla.Pages.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <style>
        .h2{
            margin: 0px; 
            padding-left: 20px;
            font-size: 32px ; 
            font-family: Lato, LipiJuthiNormal;
            font-weight:bold;
            color: black
        }
        .h2:hover{
            color: #ff6a00;
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
       
       .table1:hover {
           background-color:white;
           box-shadow: 5px 5px 5px gray;
          
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
        .auto-style2 {
            width: auto;
        }
        .cardImageTable{
           
            width: 100%; 
            height: 120px; 
            clip-path: polygon(0 0, 100% 0, 100% 100%, 0 85%);
            background-size: 100% 100%; 
            background-repeat: no-repeat ;
            vertical-align:bottom;
            padding:20px;
           
        }
        .table1 {
            position: relative;
            background-color: white;
            margin: 0px;
            padding:0;
            width: 250px; 
            height: auto;
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
            margin:00px;
            border: 2px solid white;
            padding:0;
            width: 250px; 
            height: 192px;
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
           margin-top: 80px;
           margin-left: 5%;
           background-color: #d00040;
           height: 50px;
           width: 50px;
           border-radius: 50%;
           vertical-align:central;
           z-index: 98;
           border: 2px solid white;
           
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
   <div style="background-color: white; vertical-align: top">

    
    <div style="width: 100%; padding:0px 0px 0px 0px">
        <table style="width:100%; height: auto; vertical-align: top">
            <tr>
                <td style="width: 80%;padding-top:0px;padding-right:10px; padding-left:15px; height: auto;vertical-align: top">
                    <div style="border-left: 15px solid #d00040; height: auto;width:100%; background-color:white; " >
        <table style="width:100%; height: 60px; vertical-align: top">
            <tr>
                <td style="padding-left: 10px;padding-bottom:0px ;padding-top: 0px; width: 40%" >
                    <h1 style="padding-bottom: 0">Blog</h1>
                    <asp:Label ID="BlogLink" Visible="false" runat="server" Text="Label"> <h5>In our <a style="color: #d00040" href="Signin.aspx">Blogpage</a> see comment and more blog of specific place and person. Enjoy with our blogging section.</h5></asp:Label>
                </td>
               <td style="padding-left: 10px ; " align="right">
                    <table align="right" style="padding-right:20px ">
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server"   style="padding:2px; font-size:12px; font-weight: bold; font-family: Arial; ">Newsletter, Just throuh your mail.....</asp:Label>

                            </td>
                        </tr>
                        <tr>
                            
                            
                      
                            <td>
                                
                                <asp:TextBox ID="TextBox1" placeholder="Enter your mail address..." runat="server" Height="37px" Width="299px" BorderStyle="None"></asp:TextBox>
                            </td>
                                    
                            <td style=" border: 1px dashed grey; width:40px" align="center">
                                <asp:ImageButton ID="ImageButton1"  runat="server" ImageUrl="~/Images/send.png" Height="25" Width="25" ImageAlign="Middle" OnClick="ImageButton1_Click" />
                                
                            </td>
                          
                            
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
                    <div>
                        <center >
            <asp:DataList  ID="DataList1"  runat="server" RepeatColumns="1" CellPadding="0"   Width="100%" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">

                <ItemTemplate >
                    <div style="padding:10px ">

                   
                    <table align="center" style="width: 100%; height: auto; background-color: #eeeeee; border: 1px solid black;  box-shadow:5px 5px 5px gray ;">
                        <tr>
                            <td align="center" style="width: 50%; height: auto ; vertical-align:top">
                                <asp:Image style="width: 100%" ID="Image1" runat="server" Height="320px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("BlogPic")) %>' ImageAlign="Middle" Width="350px" />
                            </td>
                            <td style="width: 50%; padding: 15px; height: 320px;vertical-align: top ">
                                <table style="width: 100%; height: 100%; vertical-align: top">
                                    <tr>
                                        <td style="border-left: 5px solid #d00040; width:100%; height:auto">
                                            <div class="h2" style="">
                                                <%#Eval("BlogName") %>
                                            </div>
                                             <h5 style="margin: 0px; padding-left: 20px; font-family:Arial; font-size: 14px; font-style: italic; color: gray">
                                              <i class="fa fa-calendar" style="padding-right: 20px">  <%#Eval("BlogDate") %> </i> <i class="fa fa-clock-o" style="padding-right: 20px"><%#Eval("BlogTime") %> </i>
                                            </h5>
                                        </td>
                                    </tr>
                                   <tr>
                                        <td id="tb" style="padding-left: 0;border-left: 5px solid #d00040;vertical-align:top ">
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
                                             
                                        </td>
                                    </tr>
                                     
                                     <tr>
                                        <td style="vertical-align: baseline; ">
                                            
                                            <asp:LinkButton align="bottom"  CssClass="btn3" ID="Button3"  runat="server"  onclick="Button3_Click" CausesValidation="True" UseSubmitBehavior="False" Height="50" Width="200" Font-Size="Medium" Font-Bold="True"><i class="fa fa-caret-down" style="margin-top: 16px" aria-hidden="true"></i> Expand the Article </asp:LinkButton>
                                            <asp:LinkButton CssClass="btn4" ID="Button1"  runat="server" Visible="false"  onclick="Button4_Click" CausesValidation="True" UseSubmitBehavior="False" Height="50" Width="200" Font-Bold="True" Font-Size="Medium"><i class="fa fa-caret-up" aria-hidden="true" style="margin-top: 16px"></i> Collapse the Article </asp:LinkButton>
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
                <!-- Sidebar-->
                <td style="background-color:#eeeeee;padding-left:10px; border: 3px solid #6fcaff; padding-top:0px; vertical-align: top;height: auto; width: 20%">

                    <table style="width: 100%; height: auto">
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
           <td style="width: 100%; height: auto; "><a class="button" href="https://www.bangladesh.com/blog/" target="_blank">Bangladesh</a> <a class="button" href="https://www.skyscanner.net/" target="_blank">Skyscanner</a> <a class="button" href="https://www.kayak.com/" target="_blank">Kayak</a> <a class="button" href="https://glampinghub.com/" target="_blank">Glamping Hub</a> <a class="button" href="https://www.google.com/flights?hl=en" target="_blank">Google Flights</a> <a class="button" href="https://www.airbnb.com/" target="_blank">Airbnb</a> <a class="button" href="https://roadtrippers.com/" target="_blank">Roadtrippers</a> <a class="button" href="https://airwander.com/" target="_blank">Airwander</a> </td>
       </tr>
                    <tr>
           <td>
               <table style="100%; width: auto">
                   <tr>
                       <td style="width: 100%; height: auto;">
                           <h3 style="text-align: left;border-left:5px solid #d00040; padding-left: 20px">Popular Place</h3>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 100%; height: auto">
                           <center>
                               <asp:DataList ID="DataList7" runat="server" CellPadding="1" CellSpacing="0" RepeatDirection="vertical" OnItemCommand="DataList7_ItemCommand">
                                   <ItemTemplate>
                                       <!-- Edit -->
                                       <div class="div" style="width: 100%; height: auto;">
                        <table class="alltable">
                            <tr>
                                <td>
                                    <table class="table2" align="center" >
                                        <tr>
                                             <td align="center" style="width: 100%; height: 100%">
                                                 <asp:LinkButton align="center" CssClass="click" ID="clickmore" style="" runat="server"  CommandName="clickmore1" CommandArgument='<%#Eval("PlaceName") %>' Width="100" Height="30" ToolTip="For More Information"  ><i class="fa fa-globe" style=" font-size:15px; padding:0px">   More Info</i></asp:LinkButton>
                        
                                             </td>
                                        </tr>
                 
                                     </table>
                        <table class="table1"  >
                            <tr>
                    <td aliign="center" class="rank">
                        <i align="center" class="fa fa-star" style="text-align: center; font-size: 40px; color: yellow; padding: 6px; text-shadow: 0 0 5px black"></i>
                    </td>
                </tr>
               
                <tr>

                    <td class="cardImageTable" style="background-image:url('<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("PlaceCImage")) %>'); ">
                        
                        
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
                       <td align="right" style="width: 100%;">
                           <asp:Button ID="Button2" runat="server" CssClass="paggingbtn" OnClick="Button31_Click" Text="&lt;&lt;" />
                           <asp:Button ID="Button41" runat="server" CssClass="paggingbtn" OnClick="Button41_Click" Text="&lt;" />
                           <asp:Button ID="Button5" runat="server" CssClass="paggingbtn" OnClick="Button5_Click" Text="&gt;" />
                           <asp:Button ID="Button6" runat="server" CssClass="paggingbtn" OnClick="Button6_Click" Text="&gt;&gt;" />
                       </td>
                   </tr>
               </table>
           </td>
       </tr>  
                    <tr>
           <td>
               <h3>Popular Article</h3>
           </td>
       </tr>
                       <tr style="margin-top: 5px">
                           <td>
                               <!--Table -->
                               <table class="table1" style="width: 100%; height: 100px ; border: 1px solid black">
                                   <tr>
                                       <td style="width: 40%; height: 100px ; ">
                                           <asp:Image ID="Image2" runat="server" Height="100px" ImageAlign="Middle" ImageUrl="~/Images/cover1.jpg" style="width: 100px;" />
                                       </td>
                                       <td style="width: 60%; vertical-align: top">
                                           <table style="width: 100%;height:100px">
                                               <tr>
                                                   <td style="height: auto; overflow: hidden"><a href="https://bit.ly/2NwvbSE" style="   font-size:10px ; font-weight: bold; text-decoration:none; color: black;" target="_blank">EXPLORING ST MARTIN’S ISLAND OFF THE BANGLADESH COAST</a><br /> </td>
                                               </tr>
                                               <tr>
                                                   <td>
                                                       <p style="font-size: 8px; font-weight: bold; color: darkslategray">
                                                           Bangladesh.com</p>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <td><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i></td>
                                               </tr>
                                           </table>
                                       </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                       <tr style="margin-top: 5px">
                           <td>
                               <!--Table -->
                               <table class="table1" style="width: 100%; height: 100px ;vertical-align:top; border: 1px solid black">
                                   <tr>
                                       <td style="width: 40%; height: 100px ; ">
                                           <asp:Image ID="Image3" runat="server" Height="100px" ImageAlign="Middle" ImageUrl="~/Images/back.png" style="width: 100px;" />
                                       </td>
                                       <td style="width: 60%; vertical-align: top">
                                           <table style="width: 100%;height:100px">
                                               <tr>
                                                   <td style="height: auto; overflow: hidden"><a href="https://bit.ly/37ZjX2u" style="   font-size:10px ; font-weight: bold; text-decoration:none; color: black;" target="_blank">NEW MARINE PROTECTED AREA FOR BANGLADESH</a><br /> </td>
                                               </tr>
                                               <tr>
                                                   <td>
                                                       <p style="font-size: 8px; font-weight: bold; color: darkslategray">
                                                           Bangladesh.com</p>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <td style="vertical-align: top"><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i></td>
                                               </tr>
                                           </table>
                                       </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                       <tr style="margin-top: 5px">
                           <td>
                               <!--Table -->
                               <table class="table1" style="width: 100%; height: 100px ; border: 1px solid black">
                                   <tr>
                                       <td style="width: 40%; height: 100px ; ">
                                           <asp:Image ID="Image4" runat="server" Height="100px" ImageAlign="Middle" ImageUrl="~/Images/cover1.jpg" style="width: 100px;" />
                                       </td>
                                       <td style="width: 60%; vertical-align: top">
                                           <table style="width: 100%;height:100px">
                                               <tr>
                                                   <td style="height: auto; overflow: hidden"><a href="https://bit.ly/2NwvbSE" style="   font-size:10px ; font-weight: bold; text-decoration:none; color: black;" target="_blank">EXPLORING ST MARTIN’S ISLAND OFF THE BANGLADESH COAST</a><br /> </td>
                                               </tr>
                                               <tr>
                                                   <td>
                                                       <p style="font-size: 8px; font-weight: bold; color: darkslategray">
                                                           Bangladesh.com</p>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <td><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i><i class="fa fa-star" style="color: #d00040"></i></td>
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
 