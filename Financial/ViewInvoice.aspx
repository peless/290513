<%@ Page Title="" Language="C#" MasterPageFile="~/neframor.master" AutoEventWireup="true" CodeFile="ViewInvoice.aspx.cs" Inherits="Financial_ViewInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><h1>צירוף חשבונית</h1></center>
<br/>
<div id="PH_forGV" style="width:90%; margin-left:6%; overflow:scroll; height:400px;" >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" CssClass="CSSTableGenerator" Width="180px">
        <Columns>
            <asp:BoundField DataField="Delivery_ID" HeaderText="Delivery_ID" 
                SortExpression="Delivery_ID" />
            <asp:BoundField DataField="SN" HeaderText="SN" SortExpression="SN" />
            <asp:BoundField DataField="Quant" HeaderText="Quant" SortExpression="Quant" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Item_Sum" HeaderText="Item_Sum" 
                SortExpression="Item_Sum" />
            <asp:BoundField DataField="Del_Date" HeaderText="Del_Date" 
                SortExpression="Del_Date" />
            <asp:BoundField DataField="INV_ID" HeaderText="INV_ID" 
                SortExpression="INV_ID" />
            <asp:BoundField DataField="B_ID" HeaderText="B_ID" SortExpression="B_ID" />
        </Columns>
    </asp:GridView>
   </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:igroup31_test1ConnectionString %>" 
        SelectCommand="SELECT * FROM [Item_Invoice] WHERE ([INV_ID] = @INV_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="INV_ID" QueryStringField="Invoice" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:igroup31_test1ConnectionString %>" 
        SelectCommand="SELECT * FROM [Item_Invoice] WHERE ([INV_ID] = @INV_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="INV_ID" QueryStringField="INV_ID" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

