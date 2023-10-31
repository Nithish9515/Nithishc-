<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: right;
            width: 120px;
            font-weight: bold;
            font-size:20px;
            color:Fuchsia;
           
        }
        .style3
        {
        }
        .style4
        {
            width: 147px;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            width: 258px;
        }
        .style7
        {font-size:25px;
         color:Black;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div class="style7">Patient Login</div>
    <div>
        <asp:Image ID="im2" runat="server" ImageAlign="Left" 
            ImageUrl="HOS/pss.png" Height="204px" Width="211px" /></div>
    <table style =" margin-left:25px; float:left; height: 140px; margin-top:50px;margin-top:10px" cellspacing="10" align="center">
        <tr>
            <td width="92" class="style2" >
                User Name</td>
            <td width="250" class="style4">
                <asp:TextBox ID="txtUserName" runat="server" Height="37px" Width="173px" 
                    ontextchanged="txtUserName_TextChanged"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUserName" ErrorMessage="Please Enter The User Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                Password</td>
            <td class="style4">
                <asp:TextBox ID="txtPassword" runat="server" Height="32px" Width="169px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Please Enter The Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">&nbsp;
                </td>
            <td align="center" class="style4">
            <asp:ImageButton ID="but"  runat="server" ImageUrl="control/log.jpg" 
                    Width="176px"  
                    OnClick="but_click"  Height="55px" />
               <%-- <asp:Button ID="txtLogin" runat="server" onclick="txtLogin_Click" Text="Login" 
                    Width="61px" Font-Bold="True" Font-Names="Times New Roman" 
                    Font-Size="Medium"  />
                    --%>
            </td>
            <td class="style6">&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style3">&nbsp;
                </td>
            <td class="style4">&nbsp;
                </td>
            <td class="style6">
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="UserRegistration.aspx" ForeColor="Blue">New User Registration</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="3">&nbsp;
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                </td>
        </tr>
    </table>
    
</asp:Content>


<%--<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
</asp:Content>
--%>


