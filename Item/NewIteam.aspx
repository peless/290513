<%@ Page Title="" Language="C#" MasterPageFile="~/neframor.master" AutoEventWireup="true" CodeFile="NewIteam.aspx.cs" Inherits="NewIteam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 108px;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<center><h1>הוספת פריט</h1></center>
<br />
<table dir="rtl"  style="width:100% ; margin-left:-50px">
    <tr>
        <td class="style1" ><p>שם המוצר</p></td>
        <td><asp:TextBox ID="TBNameItem" runat="server" class="textcls"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="style1" ><p>מספר מק"ט</p></td>
        <td><asp:TextBox ID="TBsn" runat="server" class="textcls"></asp:TextBox></td>
    </tr>
        <tr>
        <td class="style1"><p>קטגוריה</p></td>
        <td>
            <asp:DropDownList ID="DDCatgory" runat="server" >
                <asp:ListItem Text=" " />
                <asp:ListItem Text="סליל" />
                <asp:ListItem Text="תמיסה"/>
                <asp:ListItem Text="שקית עירוי" />
                <asp:ListItem Text="מחטים" />
                <asp:ListItem Text="כפפות" />
                <asp:ListItem Text="מתכלה" />
                <asp:ListItem Text="אחר" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style1"><p>כמות באריזה</p></td>
        <td><asp:TextBox ID="TBNumInBox" runat="server" class="textcls"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="style1"><p>מחיר</p></td>
        <td><asp:TextBox ID="TBPrice" runat="server" class="textcls"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="style1"><p>שם הספק</p></td>
        <td><asp:DropDownList ID="DDvandor" runat="server" ></asp:DropDownList></td>
    </tr>
    <tr>
        <td class="style1"></td>
        <td><asp:Button ID="AddButton" runat="server" Text="הוסף" onclick="addIteam_Click" /></td>
    </tr>
</table>



</asp:Content>

