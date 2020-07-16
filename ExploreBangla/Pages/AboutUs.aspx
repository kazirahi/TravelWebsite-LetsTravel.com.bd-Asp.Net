<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="ExploreBangla.Pages.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <style>
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
            background-color: white;
            box-shadow: 0px 0px 10px gray;
        }

            .hoteltbl:hover {
                background-color: #eeeeee;
                box-shadow: 0px 0px 10px gray;
            }


        .paggingbtn {
            border: 1px solid gray;
            background-color: #d00040;
            color: white;
            font-weight: bold;
            width: 35px;
            height: 35px;
        }

            .paggingbtn:hover {
                background-color: aliceblue;
                color: #d00040;
            }
            .auto-style1{
                text-align: right;
            }
    </style>
    <div style="background-color: #eeeeee; width:auto">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <div style="width: 100%; padding:0px 0px 0px 0px">
        <table style="width:100%; height: auto; ">
            <tr >
                <!-- Main Content -->
                <td style="   width: 80%;padding-top:10px;padding-right:10px; padding-left: 10px; height: auto; vertical-align: top">
                    <table style="width: 100%;border-right:1px solid gray; height: auto">
                        <!-- our Mission -->
                        <tr>
                            <td style="width: 100%; height: auto">
                                <table style="width: 100%; height: auto">
                                    <tr>
                                        <td style="border-left: 10px solid #d00040; width: 100%">
                                            <h1  style="font-family: Arial; padding-left: 20px">Our Mission</h1>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%; height: auto; padding: 30px">
                                            <p>
                                                <asp:Label ID="paragraph" runat="server" Text="Label"></asp:Label>
                                            </p>
                                            <p style="color: #d00040; font-family:Roboto; font-weight:bold; font-size: 20px">~ Lets<span style="color: #4285f4">T</span>ravel<sppan style="font-size: 15px">.com.bd</sppan> Team</p>
                                        </td>
                                    </tr>
                                    
                                </table>
                            </td>
                        </tr>
                         <!-- Place Add -->
                        <tr>
                            <td style="width: 100%; height: auto; background-color: white">
                                <table style="width: 100%; height: auto; padding: 20px">
                                    <tr>
                                        <td  style="width: 33%; height: auto;border-right:2px solid #d00040 ">
                                            <table  style="width: 100%; height: auto">
                                                <tr>
                                                    <td align="center" style="width: 100%; height: auto">
                                                        <asp:Label align="center" ID="Label1" runat="server" Text="235" Font-Bold="True" Font-Names="Arial" Font-Size="60px" ForeColor="Gray"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 100%; height: auto; vertical-align: top">
                                                        <h2 style="color: gray">Places</h2>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 100%; height: auto; vertical-align: top; ">
                                                       <p style="text-align:justify;padding:10px"> <asp:Label ID="Label5" runat="server" Text="Label" Font-Size="Medium" ForeColor="Gray"></asp:Label></p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width: 33%; height: auto">
                                            <table  style="width: 100%; height: auto;border-right:2px solid #d00040">
                                                <tr>
                                                    <td align="center" style="width: 100%; height: auto">
                                                        <asp:Label ID="Label3" runat="server" Text="235" Font-Bold="True" Font-Names="Arial" Font-Size="60px" ForeColor="Gray"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 100%; height: auto; vertical-align: top">
                                                        <h2 style="color: gray">Blogs</h2>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 100%; height: auto; vertical-align: top;">
                                                        <p style="text-align:justify;padding:10px"><asp:Label  ID="Label6" runat="server"  Font-Size="Medium" ForeColor="Gray" CssClass="auto-style1"></asp:Label></p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width: 33%; height: auto;">
                                            <table  style="width: 100%; height: auto">
                                                <tr>
                                                    <td align="center" style="width: 100%; height: auto">
                                                        <asp:Label ID="Label4" runat="server" Text="235" Font-Bold="True" Font-Names="Arial" Font-Size="60px" ForeColor="Gray"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 100%; height: auto; vertical-align: top">
                                                        <h2 style="color: gray">Reviews</h2>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 100%; height: auto; vertical-align: top">
                                                        <p style="text-align:justify; padding:10px"><asp:Label ID="Label7" runat="server" Text="Label" Font-Size="Medium" ForeColor="Gray"></asp:Label></p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!--  Our Supervisor -->
                        <tr>
                                        <td  align="right" style="height: auto; width: 100%; border-right: 10px solid #d00040">
                                            <h2 style="padding-right:20px">Meet Our Team</h2>
                                        </td>
                        </tr>
                        <tr>
                            <td style="width: 100%; height: auto; padding: 20px; vertical-align: top">
                                <table style="width: 100%; height: auto; padding: 20px">
                                    
                                    <tr>
                                        <td align="center" style="width: 50%; height: auto; padding: 0">
                                            <h2 style="color: #d00040">Professor Dr. MD. Mahfuzur Rahman</h2>
                                            <h5 style="color: #212121">Dean,Faculty of Engineering and Technology &<br />Professor and Chairperson,<br />of Computer Science and Engineering<br />Eastern University, Bangladesh</h5>
                                            
                                            <p  style="border-top:3px solid #d00040;color: #141313;font-weight: bold; vertical-align: top; padding-top:5px; font-size: 15px">Project Supervisor</p>
                                            <p style="color: #d00040;vertical-align: top; font-family:Roboto; font-weight:bold; font-size: 15px">Lets<span style="color: #4285f4">T</span>ravel<span style="font-size: 8px">.com.bd</span></p>
                                        </td>
                                        <td align="center" style="width: 50%; height: auto; padding: 20px; border-left: 4px dotted #d00040">
                                            <asp:Image ID="Image1" runat="server" Width="300" Height="300" ImageAlign="Middle" ValidateRequestMode="Inherit" ImageUrl="~/Images/Chairperson.jpg" />
                                        </td>
                                        
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!--  Our Team -->
                        <tr>
                            <td  style="height: auto; width: 100%;background-color: #eeeeee; vertical-align: top">
                                <table  style="height: auto; width: 100%; vertical-align: top">
                                    
                                    <!--Datalist Team -->
                                    <tr>
                                        <td  style="width: 100%; height: auto;vertical-align: top">
                                            <asp:DataList  ID="DataList3" runat="server" RepeatDirection="Horizontal" Width="100%">
                                                <ItemTemplate >
                                                    <table  style="width: 100%; height: auto; vertical-align: top">
                                                <tr>
                                                    <td style="width: 100%; height: auto;vertical-align: top">
                                                        <!-- Data Table -->
                                                        <table style="width: 100%; height: auto;vertical-align: top">
                                                        <!-- Picture -->
                                                            <tr>
                                                            <td align="center" style="width: 100%; height: auto;vertical-align: top">
                                                                <asp:Image ID="Image2" runat="server" Height="150px" ImageAlign="Middle" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("image")) %>' Width="120px" />
                                                            </td>
                                                        </tr>
                                                            <!-- Own Name -->
                                                        <tr>
                                                            <td style="vertical-align: top; width: 100%; height: auto">
                                                                <p style="font-size: 14px; text-align: center; font-weight: bold"><%#Eval("name") %><br /><span style="font-size:12px; font-weight: bold; color: gray"><%#Eval("designation") %></span></p>
                                                            </td>
                                                        </tr>
                                                            <!-- Social Media -->
                                                         <tr>
                                                            <td style="vertical-align: top; ">
                                                                <table align="center">
                                                                    <td style="padding: 7px">
                                                                        <a style="color: black; text-decoration: none" href="<%#Eval("facebooklink") %>" target ='_blank'"><i class="fa fa-facebook-official"></i></a>
                                                                    </td>
                                                                    <td style="padding: 7px">
                                                                        <a style="color: black; text-decoration: none" href="<%#Eval("intagramlink") %>" target ='_blank'"><i class="fa fa-instagram"></i></a>
                                                                    </td>
                                                                    <td style="padding: 7px">
                                                                        <a style="color: black; text-decoration: none" href="<%#Eval("linkedinlink") %>" target ='_blank'"><i class="fa fa-twitter"></i></a>
                                                                    </td>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    </td>
                                                    
                                                </tr>
                                            </table>
                                                </ItemTemplate></asp:DataList>
                                            
                                                    

                                        </td>

                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    
                </td>
                
                <!-- Sidebar --> 
                <td style="padding-left:00px;vertical-align: top; background-color:#eeeeee; padding-top:0;height: 10px; width: 20%">
                   <table style="width: 100%;height:100% ">
                       <tr>
                           <td style="width:100%; height: 50%;padding-top:0px;  vertical-align: top">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PlaceInfo]"></asp:SqlDataSource>
        
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
            <asp:DataList ID="DataList1"  runat="server" RepeatColumns="1" CellSpacing="0" CellPadding="0"   Width="100%"   valign="top">
                
                <ItemTemplate >
                    <div style="padding-bottom:10px">
                    <table class="table1" style="width: 100%; height: 100px ; border: 1px solid black">
                                    <tr>
                                        <td style="width: 40%; height: 100px ; ">
                                            <asp:Image ID="Image4" runat="server" style="width: 100px;" Height="100px" ImageAlign="Middle" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("BlogPic")) %>'  />
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
                                <td style="width: 100%; height: auto; ">
                                    <a class="button" href="https://www.bangladesh.com/blog/" target="_blank">Bangladesh</a> 
                                    <a class="button" href="https://www.skyscanner.net/" target="_blank">Skyscanner</a> 
                                    <a class="button" href="https://www.kayak.com/" target="_blank">Kayak</a> 
                                    <a class="button" href="https://glampinghub.com/" target="_blank">Glamping Hub</a>
                                    <a class="button" href="https://www.google.com/flights?hl=en" target="_blank">Google Flights</a> 
                                    <a class="button" href="https://www.airbnb.com/" target="_blank">Airbnb</a> 
                                    <a class="button" href="https://roadtrippers.com/" target="_blank">Roadtrippers</a> 
                                    <a class="button" href="https://airwander.com/" target="_blank">Airwander</a> 

                                </td>
                            </tr>
                            </table>
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
                                                                <asp:TextBox ID="TextBox1" runat="server" Height="37px" placeholder="Enter your mail address..." Width="200px"></asp:TextBox>
                                                            </td>
                                                            <td align="center" style=" border: 1px dashed grey; width:40px">
                                                                <asp:ImageButton ID="ImageButton2" runat="server" Height="25" ImageAlign="Middle" ImageUrl="~/Images/send.png" OnClick="ImageButton2_Click" Width="25" />
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
