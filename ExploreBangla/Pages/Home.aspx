<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ExploreBangla.Pages.Home" CodeFile="Home.aspx.cs" %>
<asp:Content ID="HomeContent1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
    <style>
         .cardImageTable{
           
            width: 100%; 
            height: 300px; 
            clip-path: polygon(0 0, 100% 0, 100% 100%, 0 85%);
            background-size: 100% 100%; 
            background-repeat: no-repeat ;
            vertical-align:top;
            padding:20px;
           
        }
        .table1 {
            position: relative;
            background-color: white;
            margin: 0px;
            padding:0;
            width: 300px; 
            height: auto;
            box-shadow: 0 0 10px gray;
            vertical-align: top;
         
        }
        .alltable{
            height:450px; width: 300px;
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
            margin:0px;
            border: 2px solid white;
            padding:0;
            width: 300px; 
            height: 372px;
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
           margin-top: 230px;
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
        .auto-style4 {
            width: 100%;
        }
    </style>
    

        
    <div style="background-color: white; width: 100%">
        <asp:DataList ID="DataList4" Width="100%" runat="server" DataSourceID="SqlDataSource7" RepeatColumns="1">
            <ItemTemplate>
                <div style="width: 100%; height: 600px; margin-top: 0; background-image: url('<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("MainImage")) %>'); background-size: 100% 100%; background-repeat: no-repeat">
                    <table style="width: 100%; height: auto">
                        <tr>
                            <td style="width: 100%; height: auto">
                                <table style="width: 100%; height: auto; background-color: rgba(0, 0, 0, 0.30)">
                                    <tr>
                                        <td align="center" id="sh1" style="width: auto; height: 50px; text-align: center; margin: 0px; margin-bottom: 0px; margin-top: 40px"
                                            align="center">
                                            <h1 style="text-shadow: 2px 2px 5px black; color: white; margin-top: 80px; margin-bottom: 5px"
                                                class="auto-style4"><%# Eval("MainHeading") %></h1>
                                        </td>
                                    </tr>
                                    <!-- H2 Tagg -->
                                    <tr>
                                        <td style="width: 100%; text-align: center; margin-top: 0px;" align="center;">
                                            <p style="margin: 25px; color: white;">
                                                <%# Eval("SubHeading") %>
                                            </p>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td align="center" style="width: 100%; height: auto">
                                <!-- Search Icon -->
                                <table align="center" style="width: auto; height: auto; margin-top: 80px;">
                                    <tr>
                                        <td style="width: 100%;">
                                            <table style="width: 100%; height: 100%; border-radius: 5px; background-color: white; border-collapse: collapse"
                                                align="center">
                                                <tr>
                                                    <td align="right" style="width: 100%; height: 50px; border-radius: 5px; border-right: 3px solid #d00040">

                                                        <asp:TextBox ID="HomepageSearchBox" Style="margin-left: 0px; padding-left: 25px; font-size: 15px"
                                                            placeholder="Where are You Want to GO!!" runat="server" BackColor="White" ForeColor="Black" Height="50px" MaxLength="250" Width="500px" ClientIDMode="Inherit" Wrap="False" EnableViewState="True" CausesValidation="False" ToolTip="Enter Place Name" BorderStyle="None" TextMode="Search"></asp:TextBox>

                                                    </td>
                                                    <td style="width: auto; height: 50px;" align="left">
                                                        <asp:DropDownList ID="DropDownList1" runat="server" Style="margin: 0px; padding: 0px; font-size: 20px;" Height="50px" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="True" DataSourceID="SqlDataSource1" DataTextField="PlaceName" DataValueField="ID" Font-Bold="True" Font-Names="Roboto" BorderStyle="None">
                                                            <asp:ListItem Text=" -- Select Place -- " Value="0"> </asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                            SelectCommand="SELECT [ID],[PlaceName] FROM [PlaceInfo] order by PlaceName"></asp:SqlDataSource>

                                                    </td>
                                                    <td style="width: 100%; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-collapse: collapse; background-color: #d00040" align="left">
                                                        <asp:Button ID="Button1" runat="server" Style="background-color: #d00040; color: white" Text="Search" Height="50" Width="180" BorderStyle="None" 
                                                            OnClick="Button1_Click" Font-Bold="True" Font-Size="Large" />
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
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [LandingPage]"></asp:SqlDataSource>

        <!-- Most Popular Side-->
        <div style="width: 100%; height: auto">
            <table style="width: 100%; height: auto; vertical-align: top">
                <tr>
                    <td style="border-left: 10px solid #d00040; width: 100%">
                        <h1 style="padding-left: 20px">Most Popular Place</h1>
                    </td>
                </tr>
                <!--Wide Screen -->
                <tr>
                    <td style="width: 100%; height: auto">
                        <table style="width: 100%; padding: 60px; height: 300px; background-image: url('../Images/cover1.jpg'); background-size: 100% 100%; background-repeat: no-repeat;">
                            <tr>
                                <td style="width: 50%; height: 100%; border-top-left-radius: 25px; border-bottom-left-radius: 25px;"></td>
                                <td align="center" style="width: 50%; height: 100%; background-color: rgba(0, 0, 0, 0.24); border-radius: 10px">
                                    <table align="center" style="width: 100%; height: auto; padding: 20px;">
                                        <tr>
                                            <td style="width: 100%; height: auto;">
                                                <h2 style="font-family: 'Calligraffitti', cursive; text-align: center; font-size: 68px; font-weight: bold; color: white">Saint Martin</h2>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="center" style="width: 100%; height: auto; border-top: 1px dotted white;">
                                                <p style="color: white; padding: 10px; text-align: justify; font-size: 18px;">St. Martin's Island is a small island in the northeastern part of the Bay of Bengal, about 9 km south of the tip of the Cox's Bazar-Teknaf peninsula, and forming the southernmost part of Bangladesh. There is a small adjoining island that is separated at high tide, called Chera Dwip.</p>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <!--DataListofmostpopular place -->
                <tr>
                    <td style="width: 100%; height: 450px; padding: 5px; vertical-align: top;">
                        <table style="width: 100%; height: auto; vertical-align: top">
                            <tr>
                                <td style="width: 100%; height: auto;">
                                    <center>
                                <div align="center" style="width: 100%; vertical-align: top; padding: 50px 0 50px 0">
                                    
                                         <asp:DataList ID="DataList1"  runat="server"    CellPadding="5" RepeatColumns="4" RepeatDirection="Horizontal"   DataKeyField="ID" DataSourceID="SqlDataSource2" OnItemCommand="DataList1_ItemCommand" >
                        
                        <ItemTemplate>
                           <div class="div" style="width: 100%; height: 100%;">
                        <table class="alltable" style=" ">
                            <tr>
                                <td style="width:100%; height: 100%;vertical-align: top">
                                    <table class="table2" align="center" >
                                        <tr>
                                             <td align="center" style="width: 100%; height: 100%">
                                                 <asp:LinkButton align="center" CssClass="click" ID="clickmore" style="" runat="server"  
                                                     CommandName="clickmore1" CommandArgument='<%#Eval("PlaceName") %>' Width="150" Height="40" 
                                                     ToolTip="For More Information"  ><i class="fa fa-globe" style=" font-size:20px; padding:0px">   More Info</i></asp:LinkButton>
                        
                                             </td>
                                        </tr>
                 
                                     </table>
                                     <table class="table1" style="background-color: white; vertical-align: top; height:auto" >
                       
                                       <tr>
                                            <td aliign="center" class="rank" style="vertical-align: top">
                                                <i align="center" class="fa fa-star" style="text-align: center; font-size: 40px; color: yellow; padding: 6px; text-shadow: 0 0 5px black"></i>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td class="cardImageTable" style="background-image:url('<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("PlaceCImage")) %>'); 
                                            background-position: top; background-size: 100% 100%; vertical-align: top">
                        
                        
                                            </td>  
                                        </tr>
                                 
                                        <tr>
                                            <td  style="width: 100%;height: auto; background-color: white; vertical-align: top">
                                                <table class="cardtable" style="width: 100%; height:  auto;padding: 10px; vertical-align: top">
                            
                                                    <tr>
                                                        <td style="width: 100%; height:  100%; vertical-align:top">
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
                        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        </asp:DataList>
                                   
                                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PlaceName], [PlaceCImage], [position], [ID] FROM [PlaceInfo] WHERE ([position] &lt;= @position)" >
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DataList1" DefaultValue="4" Name="position" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        </asp:SqlDataSource>
                                        
                        </div>
                                </center>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <!--Wide Screen -->
                <tr>
                    <td style="width: 100%; height: auto">
                        <table style="width: 100%; padding: 60px; height: 300px; background-image: url('../Images/sajek1.jpg'); background-size: 100% 100%; background-repeat: no-repeat;">
                            <tr>

                                <td align="center" style="width: 50%; height: 100%;">
                                    <table align="center" style="width: 100%; height: auto; padding: 20px; background-color: rgba(0, 0, 0, 0.24); border-radius: 10px">
                                        <tr>
                                            <td style="width: 100%; height: auto;">
                                                <h2 style="color: white; font-family: 'Calligraffitti', cursive; text-align: center; font-weight: bold; font-size: 68px">Sajek Valley</h2>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td align="center" style="width: 100%; height: auto; border-top: 1px dotted white;">
                                                <p style="color: white; padding: 10px; text-align: justify; font-size: 18px;">Sajek Valley - সাজেক ভ্যালি / মেঘের উপত্যকায় জীবন is an emerging tourist spot in Bangladesh situated among the hills of the Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District. The valley is 1,476 feet above sea level. Sajek valley is known as the Queen of Hills & Roof of Rangamati.</p>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="width: 50%;"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <!--DataListofmostpopular place -->
                <tr>
                    <td style="width: 100%; height: auto; padding: 5px">
                        <table style="width: 100%; height: auto; vertical-align: top">
                            <tr>
                                <td style="width: 100%; height: auto;">
                                    <div style="width: 100%; vertical-align: top; padding: 50px 0 50px 0">
                                        <center>
                    <asp:DataList ID="DataList3" style="vertical-align: top" runat="server"    CellPadding="5" RepeatColumns="4" RepeatDirection="Horizontal"   DataKeyField="ID" DataSourceID="SqlDataSource3" OnItemCommand="DataList3_ItemCommand" >
                        
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
                        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        </asp:DataList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ID], [PlaceName], [PlaceCImage], [position] FROM [PlaceInfo] WHERE (([position] &gt;= @position) AND ([position] &lt;= @position2))">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DataList3" DefaultValue="51" Name="position" PropertyName="SelectedValue" Type="Int32" />
                                            <asp:ControlParameter ControlID="DataList3" DefaultValue="54" Name="position2" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                        </center>
                                    </div>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
            </table>





        </div>
        <!-- Services -->
        <div style="width: 100%; height: auto;">
            <table style="width: 100%; height: auto; background-color: #eeeeee;">
                <tr>
                    <td style="width: 100%; height: auto; border-left: 10px solid #d00040">
                        <h1 style="padding-left: 20px">Our Services</h1>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100%; height: auto;">
                        <table style="width: 100%; height: auto; padding: 0px 60px 60px 60px;">
                            <tr>
                                <td style="width: 100%; height: auto;">
                                    <table style="width: 100%; height: auto; box-shadow: 0 0 10px gray">
                                        <tr>
                                            <td align="center" style="width: 50%; padding-right: 0; height: 300px; border-right: 3px dotted black">
                                                <asp:Image ImageAlign="Right" ID="Image1" runat="server" ImageUrl="~/Images/house.jpg" Width="100%" Height="100%" BorderColor="White" BorderStyle="Solid" BorderWidth="1" />

                                            </td>
                                            <td align="center" style="width: 50%; height: 300px; background-color: rgba(0, 0, 0, 0.75);">
                                                <table align="center" style="padding: 20px">
                                                    <tr>
                                                        <td align="center" style="width: 100%; height: auto">
                                                            <a href="Hotelservices.aspx" style="text-decoration: none"><p style="font-weight: bold; color: white; font-family: 'Calligraffitti', cursive; font-size: 50px">Hotel</p></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="width: 100%; height: auto">
                                                            <p style="padding: 0; color: white"><i class="fa fa-hotel" style="padding: 10px; color: white">200</i><i class="fa fa-clock-o" style="padding: 10px; color: white"> 24/7</i></p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="width: 100%; height: auto; )">
                                                            <p style="font-weight: normal; font-family: Arial, cursive; font-size: 18px; line-height: 25px; color: white">Our website provides hotel services for individual places. User will find many hotels wherever they want to go. Also they will find many pictures, hotel’s location, room rent moreover all information about those hotels.</p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 50%; height: 300px; border-right: 3px dotted black">
                                                <table align="center" style="padding: 0;">
                                                    <tr>
                                                        <td align="center" style="width: 100%; height: auto">
                                                           <a href="TransportService.aspx" style="text-decoration: none"> <p style="font-weight: bold; color: gray; font-family: 'Calligraffitti', cursive; font-size: 50px" >Transport Service</p> </a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="width: 100%; height: auto">
                                                            <p style="padding: 0; color: gray"><i class="fa fa-bus" style="padding: 10px; color: gray">200</i><i class="fa fa-clock-o" style="padding: 10px; color: gray"> 24/7</i></p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="width: 100%; height: auto; padding: 10px">
                                                            <p style="font-weight: normal; font-family: Arial, cursive; font-size: 18px; line-height: 25px; color: gray">We provide transport service that is very important part of a journey. User easily can know about the available vehicle of a place that makes their tour more relax able</p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td align="center" style="width: 50%; padding-left: 0; height: 300px;">
                                                <asp:Image ImageAlign="left" ID="Image2" runat="server" ImageUrl="~/Images/rick.jpg" Width="100%" Height="100%" BorderColor="White" BorderStyle="Solid" BorderWidth="1" />

                                            </td>

                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 50%; padding-right: 0; height: 300px; border-right: 3px dotted black">
                                                <asp:Image ImageAlign="Right" ID="Image3" runat="server" ImageUrl="~/Images/food.jpg" Width="100%" Height="100%" BorderColor="White" BorderStyle="Solid" BorderWidth="1" />

                                            </td>
                                            <td align="center" style="width: 50%; height: 300px; background-color: rgba(0, 0, 0, 0.75);">
                                                <table align="center" style="padding: 20px">
                                                    <tr>
                                                        <td align="center" style="width: 100%; height: auto">
                                                             <a href="RestaurantServices.aspx" style="text-decoration: none"> <p style="font-weight: bold; color: white; font-family: 'Calligraffitti', cursive; font-size: 50px">Cuisine</p></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="width: 100%; height: auto">
                                                            <p style="padding: 0; color: white"><i class="fa fa-coffee" style="padding: 10px; color: white">200</i><i class="fa fa-clock-o" style="padding: 10px; color: white"> 24/7</i></p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" style="width: 100%; height: auto; )">
                                                           <p style="font-weight: normal; font-family: Arial, cursive; font-size: 18px; line-height: 25px; color: white">We provide food services to our client. They can know about the traditional food of different places.</p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>

                            </tr>
                        </table>
                    </td>
                </tr>

            </table>
        </div>
        <!-- Client -->
        <div style="width: 100%; height: auto;">
            <table style="width: 100%; height: auto; background-color: white;">
                <tr>
                    <td style="width: 100%; height: auto; border-left: 10px solid #d00040">
                        <h1 style="padding-left: 20px">Our Client</h1>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100%; height: auto;">
                        <table style="width: 100%; height: auto; padding: 0   60px  60px  60px;">
                            <tr>
                                <td style="width: 100%; height: auto;">
                                    <table style="width: 100%; height: auto; box-shadow: 0 0 10px gray">

                                        <tr>
                                            <td style="width: 100%; height: auto;">
                                                <asp:DataList ID="ClientFirstData" Width="100%" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource4" RepeatColumns="1">
                                                    <ItemTemplate>
                                                        <table style="width: 100%; height: auto">
                                                            <tr>
                                                                <td align="center" style="width: 100%; height: auto;">
                                                                    <table align="center" style="width: 100%; height: auto;">
                                                                        <tr style="">
                                                                            <td align="center" style="width: 50%; padding-right: 0; height: 300px;">
                                                                                <asp:Image Style="border-radius: 50%; border: 5px solid gray" ImageAlign="middle" ID="Image4" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("ClientImage")) %>' Width="250" Height="250" BorderColor="White" BorderStyle="Solid" BorderWidth="1" />

                                                                            </td>
                                                                            <td align="center" style="width: 50%; height: 300px;">
                                                                                <table align="center" style="padding: 20px">

                                                                                    <tr>
                                                                                        <td align="center" style="width: 100%; height: auto; )">
                                                                                            <p style="font-weight: normal; font-family: Arial, cursive; font-size: 18px; line-height: 25px; color: gray">'<%# Eval("ClientReview") %>'</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="center" style="width: 100%; height: auto">
                                                                                            <p style="font-weight: bold; color: gray; font-family: 'Calligraffitti', cursive; font-size: 20px">'<%# Eval("ClientName") %>'</p>
                                                                                        </td>
                                                                                    </tr>

                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Client] WHERE ([Display] = @Display)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ClientFirstData" DefaultValue="1" Name="Display" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>



                                        <tr>
                                            <td style="width: 100%; height: auto;">
                                                <asp:DataList ID="ClientMiddleData" Width="100%" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource5" RepeatColumns="1">
                                                    <ItemTemplate>
                                                        <table style="width: 100%; height: auto">
                                                            <tr>
                                                                <td align="center" style="width: 100%; height: auto;">
                                                                    <table style="width: 100%; height: auto; background-color: rgba(0, 0, 0, 0.75);">
                                                                        <tr>
                                                                            <td align="center" style="width: 50%; height: 300px;">
                                                                                <table align="center" style="padding: 20px">

                                                                                    <tr>
                                                                                        <td align="center" style="width: 100%; height: auto; )">
                                                                                            <p style="font-weight: normal; font-family: Arial, cursive; font-size: 20px; line-height: 25px; color: #d3d3d3">'<%# Eval("ClientReview") %>'</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="center" style="width: 100%; height: auto">
                                                                                            <p style="font-weight: bold; color: #d3d3d3; font-family: 'Calligraffitti', cursive; font-size: 20px">'<%# Eval("ClientName") %>'</p>
                                                                                        </td>
                                                                                    </tr>

                                                                                </table>
                                                                            </td>
                                                                            <td align="center" style="width: 50%; padding-right: 0; height: 300px;">
                                                                                <asp:Image Style="border-radius: 50%;border: 5px solid gray" ImageAlign="middle" ID="Image5" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("ClientImage")) %>' Width="250" Height="250" BorderColor="White" BorderStyle="Solid" BorderWidth="1" />

                                                                            </td>

                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Client] WHERE ([Display] = @Display)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ClientFirstData" DefaultValue="2" Name="Display" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>



                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%; height: auto;">
                                                <asp:DataList ID="DataList2" Width="100%" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource6" RepeatColumns="1">
                                                    <ItemTemplate>
                                                        <table style="width: 100%; height: auto">
                                                            <tr>
                                                                <td align="center" style="width: 100%; height: auto;">
                                                                    <table align="center" style="width: 100%; height: auto;">
                                                                        <tr style="">
                                                                            <td align="center" style="width: 50%; padding-right: 0; height: 300px;">
                                                                                <asp:Image Style="border-radius: 50%;border: 5px solid gray" ImageAlign="middle" ID="Image4" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("ClientImage")) %>' Width="250" Height="250" BorderColor="White" BorderStyle="Solid" BorderWidth="1" />

                                                                            </td>
                                                                            <td align="center" style="width: 50%; height: 300px;">
                                                                                <table align="center" style="padding: 20px">

                                                                                    <tr>
                                                                                        <td align="center" style="width: 100%; height: auto; )">
                                                                                            <p style="font-weight: normal; font-family: Arial, cursive; font-size: 18px; line-height: 25px; color: gray">'<%# Eval("ClientReview") %>'</p>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="center" style="width: 100%; height: auto">
                                                                                            <p style="font-weight: bold; color: gray; font-family: 'Calligraffitti', cursive; font-size: 20px">'<%# Eval("ClientName") %>'</p>
                                                                                        </td>
                                                                                    </tr>

                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </ItemTemplate>
                                                </asp:DataList>
                                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Client] WHERE ([Display] = @Display)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ClientFirstData" DefaultValue="3" Name="Display" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>



                                    </table>

                            </tr>
                        </table>
                    </td>
                </tr>

            </table>
        </div>



        <!--Join Our Team -->
        <div style="width: 100%; height: auto;">
            <table style="width: 100%; padding: 60px; height: 300px; background-image: url(../Images/teamhands.png); background-size: 100% 100%; background-repeat: no-repeat">
                <tr>
                    <td>
                        <table style="width: 100%;">
                            <tr>
                                <td style="width: 50%; height: auto">
                                    <table align="center" style="width: 100%; height: auto; padding: 0; border-right: 2px dotted white">
                                        <tr>
                                            <td style="width: 100%; height: auto">
                                                <h1 style="color: white; font-weight: bold; font-size: 45px; font-family: Arial">JOIN
                                                    <br />
                                                    OUR COMMUNITY</h1>
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
                                                    <i class="fa fa-facebook " style="font-size: 30px; padding: 5px; color: white"></i>
                                                </a>
                                                <a href="">
                                                    <i class="fa fa-instagram " style="font-size: 30px; padding: 5px; color: white"></i>

                                                </a>
                                                <a href="">
                                                    <i class="fa fa-twitter " style="font-size: 30px; padding: 5px; color: white"></i>
                                                </a>
                                                <a href="">
                                                    <i class="fa fa-linkedin " style="font-size: 30px; padding: 5px; color: white"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </td>

                </tr>
            </table>
        </div>






    </div>
    
</asp:Content>




