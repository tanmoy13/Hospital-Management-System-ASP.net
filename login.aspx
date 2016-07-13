<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!-- Modal contnt-->
    <div id="mainbody">
        <div style="padding: 35px 50px; height:50px; background-color:#0099dd; width: 492px; margin-left: 48px; margin-top: 50px;">
            <h3 class="hh3"><span class="glyphicon glyphicon-lock"></span>Login</h3>
        </div>
        <div class="modal-body" style="padding: 40px 50px;">
                <div class="form-group">
                    <label for="usrname"><span class="glyphicon glyphicon-user"></span>Username</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                    <input type="text" class="form-control" id="usrname" placeholder="Enter email" />
                </div>
                <div class="form-group">
                    <label for="psw"><span class="glyphicon glyphicon-eye-open"></span>Password</label>
                    <input type="password" class="form-control" id="psw" placeholder="Enter password" />
                </div>
                <div class="checkbox">
                    <asp:Literal ID="Literal1" runat="server">
                                                <label>
                                             <input type="checkbox" id="chkbox" value="on"/>Remember me</label>
                    </asp:Literal>

                </div>
            

                <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block" Text="Login" OnClick="Button1_Click1" />

        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>Cancel</button>
            <p>Not a member? <a href="#">Sign Up</a></p>
            <p>Forgot <a href="#">Password?</a></p>
        </div>
    </div>


</asp:Content>

