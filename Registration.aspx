<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div id="mainbody">
    <div style="width: 686px; margin-left: 204px">
        <h3 style="color:red; width: 250px; margin-left: 146px;"><b><u>Registration Form</u></b></h3>
        <table>
            <tr>
                <td colspan="2" style="align-content:center; text-align: center; height: 42px;">
                    
                    </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td  style="height: 42px; width: 158px;">
                    <h5><b>User Name :</b></h5>

                </td>
                <td  class="modal-lg" style="height: 42px; width: 382px">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" Width="300px" AutoPostBack="True" 
                                    ondatabinding="TextBox1_TextChanged" ontextchanged="TextBox1_TextChanged" ></asp:TextBox>
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
                <td style="height: 42px; width: 158px;">
                    <h5><b>Password :</b></h5></td>
                <td height: 42px; style="height: 42px; width: 382px">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" Width="300px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="password should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td   style="height: 42px;width: 158px;">
                    <h5><b>ReType Password :</b></h5>

                </td>
                <td  height: 42px style="width: 382px">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" Width="300px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="Enter correct password" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
       
            <tr>
                <td   style="width: 158px;" class="modal-sm">
                    <h5><b>Email Id :</b></h5>

                </td>
                <td height: 42px style="width: 382px">
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" Width="300px"></asp:TextBox>
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
                <td  style="height: 42px; width: 158px">
                    </td>
                <td style="padding-top:5px; align-content:center; height: 42px; width: 382px;" class="modal-lg">
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" Font-Bold="True" Font-Size="Large" Text="Submit" Width="121px" onclick="Button1_Click" Height="56px" />
                </td>
            </tr>
        </table>
    </div>
    </div>

</asp:Content>

