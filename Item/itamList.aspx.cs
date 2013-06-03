using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
public partial class Item_itemList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            DBservices dbs = new DBservices();
            List<string> itemVendor = new List<string>();
            itemVendor = dbs.getVendorName();

            foreach (string name in itemVendor)
            {
                DDvandor.Items.Add(name);
            }


        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message);
            Response.Write("ארעה שגיאה");
        }
    }

    protected void IteamList(object sender, EventArgs e)
    {
        try
        {
            DBservices dbs = new DBservices();
            List<Item> listOfItem = new List<Item>();

            string Vendor = (DDvandor.SelectedItem).ToString();
            string VandorSN = dbs.getVendorSN(Vendor);
            listOfItem = dbs.ReadItem(VandorSN);

            Table ItemTbl = new Table();
            ItemTbl.Attributes.Add("class", "CSSTableGenerator");
            ItemTbl.Attributes.Add("dir", "rtl");

            TableRow HRow = new TableRow();

            TableCell Cell3 = new TableCell();
            Cell3.Text = "שם";
            HRow.Cells.Add(Cell3);

            TableCell Cell2 = new TableCell();
            Cell2.Text = "מקט";
            HRow.Cells.Add(Cell2);


            TableCell Cell4 = new TableCell();
            Cell4.Text = "קטגוריה";
            HRow.Cells.Add(Cell4);

            TableCell Cell5 = new TableCell();
            Cell5.Text = "כמות בקופסא";
            HRow.Cells.Add(Cell5);

            ItemTbl.Rows.Add(HRow);
            


            foreach (Item x in listOfItem)
            {
                TableRow tRow = new TableRow();

                HyperLink link = new HyperLink();
                link.NavigateUrl = "UpDateItem.aspx?Name=" + x.Name;
                link.Text = x.Name;
                TableCell NCell = new TableCell();
                NCell.Controls.Add(link);
                tRow.Cells.Add(NCell);
        


                TableCell SNCell = new TableCell();
                SNCell.Text = x.Serialnumber;
                tRow.Cells.Add(SNCell);


                TableCell CCell = new TableCell();
                CCell.Text = x.Category;
                tRow.Cells.Add(CCell);


                TableCell NIBCell = new TableCell();
                NIBCell.Text = (x.Numinbox).ToString();
                tRow.Cells.Add(NIBCell);

                ItemTbl.Rows.Add(tRow);
               

            }
            
            divtb.Controls.Add(ItemTbl);
        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message);
            Response.Write("ארעה שגיאה");
        }
    }

    protected void Bsearch_Click(object sender, EventArgs e)
    {

        try
        {
            DBservices dbs = new DBservices();
            string Name = TBNameItem.Text;
            string sn = TBsn.Text;

            List<Item> itemlist = new List<Item>();
            itemlist = dbs.ReadItemByNameOrSN(Name, sn);

            Table ItemTbl = new Table();
            ItemTbl.Attributes.Add("class", "CSSTableGenerator");
            ItemTbl.Attributes.Add("dir", "rtl");

            TableRow HRow = new TableRow();

            TableCell Cell3 = new TableCell();
            Cell3.Text = "שם";
            HRow.Cells.Add(Cell3);

            TableCell Cell2 = new TableCell();
            Cell2.Text = "מקט";
            HRow.Cells.Add(Cell2);


            TableCell Cell4 = new TableCell();
            Cell4.Text = "קטגוריה";
            HRow.Cells.Add(Cell4);

            TableCell Cell5 = new TableCell();
            Cell5.Text = "כמות בקופסא";
            HRow.Cells.Add(Cell5);

            ItemTbl.Rows.Add(HRow);



            foreach (Item x in itemlist)
            {
                TableRow tRow = new TableRow();

                HyperLink link = new HyperLink();
                link.NavigateUrl= "UpDateItem.aspx?Name=" + x.Name;
                link.Text = x.Name;
                TableCell NCell = new TableCell();
                NCell.Controls.Add(link);
                tRow.Cells.Add(NCell);



                TableCell SNCell = new TableCell();
                SNCell.Text = x.Serialnumber;
                tRow.Cells.Add(SNCell);


                TableCell CCell = new TableCell();
                CCell.Text = x.Category;
                tRow.Cells.Add(CCell);


                TableCell NIBCell = new TableCell();
                NIBCell.Text = (x.Numinbox).ToString();
                tRow.Cells.Add(NIBCell);

                ItemTbl.Rows.Add(tRow);
            }

            divtb.Controls.Add(ItemTbl);
        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message);
            Response.Write("ארעה שגיאה");
        }
    }
}