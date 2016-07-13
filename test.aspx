<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="mainbody">
    
        <table class="style1">
            <tr>
                <td colspan="2" >
                    <h3 id="h3old"><b><u>Registration Form</u></b></h3>
                    </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    <strong>UserName</strong></td>
                <td style="width: 1026px" class="modal-lg">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="style14">
                                <asp:TextBox ID="TextBox1" runat="server" Width="195px" AutoPostBack="True" 
                                    ondatabinding="TextBox1_TextChanged" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                                <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="UserName can not be Blank" 
                                    Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    <strong>Password</strong></td>
                <td class="style14" style="width: 1026px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="195px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="password should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style7">
                    <strong>ReType Password</strong></td>
                <td class="style15" style="width: 1026px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="195px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="Enter correct password" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
       
            <tr>
                <td class="style8">
                    <strong>Email Id</strong></td>
                <td class="style4" style="width: 1026px">
                    <asp:TextBox ID="TextBox5" runat="server" Width="195px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter valid Email Id" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Email Field can not be Blank" 
                        Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style10">
                </td>
                  <td >
                    <asp:UpdatePanel ID="UP1" runat="server">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td style="height: 50px; width:100px;">
                                        <asp:Image ID="imgCaptcha" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <strong>Enter Captcha Image</strong></td>
                <td class="style14" style="width: 1026px">
                    <asp:TextBox ID="TextBox6" runat="server" Width="195px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="*"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter valid captcha" 
                        Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td style="width: 1026px; padding-top:10px;" class="modal-lg">
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" Font-Bold="True" Font-Size="Large" Text="Submit" Width="121px" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>