<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main">
        <h3 style="margin-left:370px"><b>Book An Appointment</b></h3>
        <div style="width: 672px; margin-left: 274px">
            <h4 style="color:green">This appointment is valid for tomorrow</h4>
               <table>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label1" runat="server" Text="First Name :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right">  
                           <asp:Label ID="Label2" runat="server" Text="Last Name :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label3" runat="server" Text="Email :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox3" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label4" runat="server" Text="Nationality :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label5" runat="server" Text="Gender :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:DropDownList ID="DropDownList1" runat="server">
                               <asp:ListItem>Male</asp:ListItem>
                               <asp:ListItem>Female</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                   </tr>
                    <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label7" runat="server" Text="Contact :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox6" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                    <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label8" runat="server" Text="Problem :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox7" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                    <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label9" runat="server" Text="Doctor :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:DropDownList ID="DropDownList2" runat="server">
                               <asp:ListItem>Dr. A. B. M. Yunus</asp:ListItem>
                               <asp:ListItem>Dr. A.A. Quoreshi</asp:ListItem>
                               <asp:ListItem>Dr. A.K.M. Anwarul Islam</asp:ListItem>
                               <asp:ListItem>Dr. Md. Saidur Rahman</asp:ListItem>
                           </asp:DropDownList>
                       </td>
                   </tr>
                   <tr>
                       <td> 
                          
                       </td>
                       <td>
                            <asp:Button ID="Button1" runat="server" Text="Submit" Width="146px" OnClick="Button1_Click1" />
                       </td>
                       
                   </tr>
                   <tr>
                       <td colspan="2"> <asp:Label ID="Label6" runat="server" Text="" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label></td>
                   </tr>
               </table>

        </div>
    </div>
</asp:Content>

