<%@ Page Title="" Language="C#" MasterPageFile="~/neframor.master" AutoEventWireup="true" CodeFile="NewPatient.aspx.cs" Inherits="NewPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 237px;
        }
        .style3
        {
            width: 6px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<center><h1>יצירת מטופל חדש</h1></center>

<table dir="rtl" id="savePASS" style="width:100% ; margin-left:-10px">
   <tr>
        <td class="style3"><h3>פרטי מטופל: </h3></td>
   </tr>
   <tr>
        <td class="style3"><p>שם המטופל</p></td>
        <td class="style2"><asp:TextBox ID="TBPatientName" runat="server" class="textcls"></asp:TextBox></td>
    </tr>
        <tr>
        <td class="style3"><p>שם קופת החולים</p></td>
        <td class="style2">
            <asp:DropDownList ID="DDPatientKupah" runat="server" >
                <asp:ListItem Text=" " />
                <asp:ListItem Text="מכבי" />
                <asp:ListItem Text="כללית" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3"><p>מספר מטופל</p></td>
        <td class="style2"><asp:TextBox ID="TBPatientNum" runat="server" class="textcls"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="style3"><p>מספר ת.ז</p></td>
        <td class="style2"><asp:TextBox ID="TBPatientId" runat="server" class="textcls"></asp:TextBox></td>
    </tr>
    <tr>
        <td class="style3"><p>שימוש בצנטר</p></td>
        <td class="style2">
            <asp:DropDownList ID="DDPatientZantar" runat="server" >
                <asp:ListItem Text=" " />
                <asp:ListItem Text="כן" />
                <asp:ListItem Text="לא" />
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style3"><h3> סט מטופל : </h3></td>
    </tr>
    <tr>
        <td class="style3"><p>מחט </p></td>
        <td class="style2"><asp:DropDownList ID="DDneedle" runat="server" ></asp:DropDownList></td>
    </tr>
    <tr>
        <td class="style3"><p>סליל </p></td>
        <td class="style2"><asp:DropDownList ID="DDcoil" runat="server" ></asp:DropDownList></td>
    </tr>
    <tr>
        <td class="style3"><p>שקיות עירוי </p></td>
        <td class="style2"><asp:DropDownList ID="DDinfusionBag" runat="server" ></asp:DropDownList></td>
    </tr>
    <tr>
        <td class="style3"><p>תמיסות </p></td>
        <td class="style2"><asp:DropDownList ID="DDsolutions" runat="server" ></asp:DropDownList></td>
    </tr>

    <tr>
        <td class="style3"></td>
        <td class="style2"><asp:Button ID="ButtonNewPatient" runat="server" Text="שמור" onclick="ButtonNewPatient_Click" 
            /></td>
    </tr>
</table>

</asp:Content>

