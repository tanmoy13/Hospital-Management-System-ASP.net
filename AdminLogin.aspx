<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #farouter {
            height: 162px;
        }
        .auto-style1 {
            width: 176px;
        }
    </style>
</head>
<body style="background-color:skyblue">

    <form id="form1" runat="server">
    <div>
    
        <br />
            <div style="width: 466px; margin-left: 334px; background-color:white; margin-top: 70px;">
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0" style="height:246px;width:463px;">
                                <tr>
                                    <td align="center" colspan="2" style="color:White;background-color:#6B696B;font-weight:bold;">Admin Login</td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style1">
                                        <asp:Label ID="UserNameLabel" runat="server">User Name:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="176px"></asp:TextBox>
                                     
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style1">
                                        <asp:Label ID="PasswordLabel" runat="server">Password:</asp:Label>
                                    </td>
                                    <td>
                   
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="176px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Height="26px" style="margin-left: 264px; margin-top: 0px" Text="Log In" Width="97px" OnClick="LoginButton_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Label ID="Label1" runat="server" ></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                </div>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
