<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adddoctor.aspx.cs" Inherits="adddoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main">
        <h3><b>Add Doctors Information</b></h3>
        <div style="width: 672px; margin-left: 274px">

               <table>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label1" runat="server" Text="Doctor's Name :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right">  
                           <asp:Label ID="Label2" runat="server" Text="Qualification :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label3" runat="server" Text="Department :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox3" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label4" runat="server" Text="Specialization :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right"> 
                           <asp:Label ID="Label5" runat="server" Text="Contact :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox5" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td> 
                           
                       </td>
                       <td>
                           <asp:FileUpload ID="imageupload" runat="server" Width="325px" />
                       </td>
                       
                    </tr>
                   <tr>
                       <td> 
                          
                       </td>
                       <td>
                            <asp:Button ID="Button1" runat="server" Text="Button" Width="146px" OnClick="Button1_Click1" />
                       </td>
                       
                   </tr>
                   <tr>
                       <td colspan="2"> <asp:Label ID="Label6" runat="server" Text="" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label></td>
                   </tr>
               </table>

        </div>
    </div>
</asp:Content>

