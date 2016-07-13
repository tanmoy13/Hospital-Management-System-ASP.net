<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main">
        
        <h3  style=" color:red; width: 436px; margin-left: 222px;" aria-autocomplete="none">Feedback :</h3>
        <div style="width: 710px; margin-left: 218px; height: 1237px;">
            <asp:ScriptManager ID="SM1" runat="server">
        </asp:ScriptManager>
               <table>
                   <tr>
                       <td style="text-align: right; height: 37px; width: 310px;"> 
                           <asp:Label ID="Label1" runat="server" Text="Name:" Font-Size="Medium"></asp:Label>
                       </td>
                       <td style="height: 37px; width: 354px;">
                           <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right; height: 14px; width: 310px;">  
                           <asp:Label ID="Label2" runat="server" Text="Mail :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td style="width: 354px; height: 14px">
                           <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="text-align: right; width: 310px;" class="modal-sm"> 
                           <asp:Label ID="Label3" runat="server" Text="Text :" Font-Size="Medium"></asp:Label>
                       </td>
                       <td style="width: 354px">
                           <asp:TextBox ID="TextBox3" runat="server" Height="240px" Width="354px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="width: 310px" class="modal-sm"></td>
                       <td valign="middle" style="width: 354px">
                    <asp:UpdatePanel ID="UP1" runat="server">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td style="height: 50px; width:144px;">
                                        <asp:Image ID="imgCaptcha" runat="server" Height="45px" Width="120px" />
                                    </td>
                                    <td valign="middle">
                                        <asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                   </tr>
                   <tr>
                       <td style="text-align: right; height: 31px; width: 310px;"> 
                           <asp:Label ID="Label4" runat="server" Text="code:" Font-Size="Medium"></asp:Label>
                       </td>
                       <td style="height: 31px; width: 354px;">
                           <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox>
                       </td>
                   </tr>
                  <tr>
                      <td style="width: 310px" class="modal-sm"></td>
                       <td style="width: 354px">
                            <asp:Button ID="Button1" runat="server" Text="Send" Width="146px" OnClick="Button1_Click1" />
                       </td>
                       
                   </tr>
                   <tr>
                       <td colspan="2"> <asp:Label ID="Label6" runat="server" Text="" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label></td>
                   </tr>
               </table>

        </div>
    </div>
</asp:Content>

