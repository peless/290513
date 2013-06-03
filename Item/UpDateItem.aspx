<%@ Page Title="" Language="C#" MasterPageFile="~/neframor.master" AutoEventWireup="true" CodeFile="UpDateItem.aspx.cs" Inherits="Item_a" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 256px;
        }
        .style3
        {
            width: 104px;
        }
    .style4
    {
        width: 190px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<center><h1>עדכון פריט</h1></center>
<br />
<table dir="rtl"  style="width:100% ; margin-left:-50px">
    <tr>
        <td class="style3" ><p>שם המוצר</p></td>
        <td class="style4" ><asp:PlaceHolder ID="PHIteamName" runat="server"></asp:PlaceHolder></td>
    </tr>
    <tr>
        <td class="style3" ><p>מספר מק"ט</p></td>
        <td class="style4" ><asp:PlaceHolder ID="PHIteamNS" runat="server"></asp:PlaceHolder></td>
    </tr>
        <tr>
        <td class="style3" ><p>קטגוריה</p></td>
        <td class="style4" ><asp:PlaceHolder ID="PHIteamCatgory" runat="server"></asp:PlaceHolder></td>
    </tr>
    <tr>
        <td class="style3"><p>כמות באריזה</p></td>
        <td class="style4"><asp:TextBox ID="TBNumInBox" runat="server" class="textcls"></asp:TextBox></td>
        <td class="style2" ><asp:PlaceHolder ID="PHNumInBox" runat="server"></asp:PlaceHolder></td>
    </tr>
    <tr>
        <td class="style3" ><p>מחיר</p></td>
        <td class="style4"><asp:TextBox ID="TBPrice" runat="server" class="textcls"></asp:TextBox></td>
        <td class="style2" ><asp:PlaceHolder ID="PHTBPrice" runat="server"></asp:PlaceHolder></td>
    </tr>
    <tr>
        <td class="style3" ><p>שם הספק</p></td>
        <td class="style4" ><asp:PlaceHolder ID="PHIteamVandor" runat="server"></asp:PlaceHolder></td>
    </tr>
    <tr>
        <td class="style3"></td>
        <td class="style4"><asp:Button ID="UpDateButton" runat="server" Text="עדכן" onclick="UpDateButton_Click" />         
                           &nbsp;&nbsp;&nbsp;         
                           <asp:Button ID="DeletButton" runat="server" Text="מחק" onclick="DeletButton_Click" /></td>
    </tr>
</table>
</asp:Content>

