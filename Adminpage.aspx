<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminpage.aspx.cs" Inherits="Adminpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 378px">
            <h2 style="color:green; width: 172px; margin-left: 396px;"><b><u>Welcome Admin</u></b></h2>
        <div style="width: 298px; margin-left: 322px">
            <asp:Button ID="Button1" runat="server" Text="Appointment Record" Font-Size="Larger" Height="48px" OnClick="Button1_Click" Width="314px" />
        </div>
        <div style="width: 340px; height: 48px; margin-left: 314px; margin-top: 26px">
            <asp:Button ID="Button2" runat="server" Text="Add Doctor" Font-Size="Larger" Height="46px" OnClick="Button2_Click" style="margin-left: 8px" Width="318px" />
            <asp:Button ID="Button3" runat="server" Font-Size="Larger" Height="42px" OnClick="Button3_Click" style="margin-left: 8px; margin-top: 32px" Text="Logout" Width="316px" />
        </div>
    </div>
    </form>
</body>
</html>
