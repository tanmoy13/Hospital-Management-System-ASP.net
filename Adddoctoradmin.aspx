<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adddoctoradmin.aspx.cs" Inherits="Adddoctoradmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 325px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3 style="color:red; width: 230px; margin-left: 414px;"><b>Add Doctors Information</b></h3>
        <div style="width: 554px; margin-left: 274px; height: 440px;">

               <table style="height: 418px; width: 475px">
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label1" runat="server" Text="Doctor's Name :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td class="auto-style1">
                           <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right">  
                           <asp:Label ID="Label2" runat="server" Text="Qualification :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td class="auto-style1">
                           <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label3" runat="server" Text="Department :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td class="auto-style1">
                           <asp:TextBox ID="TextBox3" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label4" runat="server" Text="Specialization :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td class="auto-style1">
                           <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label5" runat="server" Text="Contact :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td class="auto-style1">
                           <asp:TextBox ID="TextBox5" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td> 
                           
                       </td>
                       <td class="auto-style1">
                           <asp:FileUpload ID="imageupload" runat="server" Width="325px" />
                       </td>
                       
                    </tr>
                   <tr>
                       <td> 
                          
                       </td>
                       <td class="auto-style1">
                            <asp:Button ID="Button1" runat="server" Text="Button" Width="146px" OnClick="Button1_Click1" />
                       </td>
                       
                   </tr>
                   <tr>
                       <td colspan="2"> <asp:Label ID="Label6" runat="server" Text="" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label></td>
                   </tr>
               </table>

        </div>
    </div>
    </form>
</body>
</html>
