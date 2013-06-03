<%@ Page Title="" Language="C#" MasterPageFile="~/neframor.master" AutoEventWireup="true" CodeFile="itamList.aspx.cs" Inherits="Item_itemList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
        .style3
        {
            width: 156px;
        }
        .style4
        {
            width: 87px;
        }
        .style5
        {
            width: 98px;
        }
        .style6
        {
            width: 164px;
        }
    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<center><h1>עדכון פריט</h1></center> 

<table dir="rtl"  style="width:100% ; margin-left:-10px">
    <tr>
        <td class="style4"  ><p>שם הספק</p></td>
        <td class="style3" ><asp:DropDownList ID="DDvandor" runat="server" ></asp:DropDownList></td>
        <td ><asp:Button ID="BSearchItem" runat="server" Text="הצג פריטים" OnClick="IteamList"/></td>
    </tr>
</table>
<table dir="rtl"  style="width:100% ; margin-left:-10px">
    <tr>
        <td class="style4"  ><p>שם המוצר</p></td>
        <td class="style3" ><asp:TextBox ID="TBNameItem" runat="server" class="textcls"></asp:TextBox></td>
        <td class="style5" ><p>מספר מק"ט</p></td>
        <td class="style6" ><asp:TextBox ID="TBsn" runat="server" class="textcls"></asp:TextBox></td>
        <td><asp:ImageButton ID="ImageButton1" runat="server" OnClick="Bsearch_Click" ImageUrl="~/images/search-icon.png"/></td>
    </tr>
</table>
    <center><div id="divtb" runat="server" style="width:80%; overflow:scroll;height:300px;overflow:auto"></div></center>
    



</asp:Content>

