<%@ Page Title="" Language="C#" MasterPageFile="~/Masterlogin.master" AutoEventWireup="true" CodeFile="forgotPASS.aspx.cs" Inherits="ManagementSystem_forgotPASS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 200px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><h1>שחזור סיסמא</h1></center>
<br /><br />
<table dir="rtl" id="savePASS" style="width:100% ; margin-left:-10px">
    <tr>
        <td class="style1"><p>הכנס מספר תעודת זהות</p></td>
        <td><asp:TextBox ID="TBIDworker" runat="server" class="textcls"></asp:TextBox></td>
    </tr>

     <tr>
        <td class="style1"></td>
        <td><asp:Button ID="BforgotPASS" runat="server" Text="שחזר סיסמא" 
                onclick="BforgotPASS_Click"/></td>
    </tr>
    <tr>
    <td><asp:Label ID="LBans" runat="server" Text="" ForeColor=#9b8d84></asp:Label></td>
    <td><asp:Label ID="LBbeack" runat="server" Text="" ForeColor=#9b8d84></asp:Label></td>
    </tr>
</table>

</asp:Content>

