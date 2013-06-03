using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;

public partial class Item_a : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

                NameValueCollection coll = Request.QueryString;
                string ItemName = coll["Name"];

                List<string> listItem = new List<string>();
                DBservices dbs = new DBservices();

                listItem = dbs.getItemBYsn(ItemName);

                Label lbName = new Label();
                lbName.Text = listItem[0].ToString();
                PHIteamName.Controls.Add(lbName);


                Label lbSN = new Label();
                lbSN.ID = "lbSN";
                lbSN.Text = listItem[1].ToString();
                PHIteamNS.Controls.Add(lbSN);

                Label lbCatgory = new Label();
                lbCatgory.Text = listItem[2].ToString();
                PHIteamCatgory.Controls.Add(lbCatgory);



                Label lbNumInBox = new Label();
                lbNumInBox.ForeColor = System.Drawing.Color.Red;
                lbNumInBox.Text =  "הכמות הנוכחית לאריזה  : "+ listItem[3].ToString();
                PHNumInBox.Controls.Add(lbNumInBox);

                Label lbPrice = new Label();
                lbPrice.ForeColor = System.Drawing.Color.Red;
                lbPrice.Text = "המחיר הנוכחי : "+listItem[4].ToString();
                PHTBPrice.Controls.Add(lbPrice);
 
                Label lbvandor = new Label();
                lbvandor.Text = listItem[5].ToString();
                PHIteamVandor.Controls.Add(lbvandor);

            
        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message);
            Response.Write("ארעה שגיאה");
        }
    }

    protected void UpDateButton_Click(object sender, EventArgs e)
    { 
                
        try
        {

                DBservices dbs = new DBservices();

                Label lSN = (Label)PHIteamNS.FindControl("lbSN");
                string SN = lSN.Text;
                string numinbox = TBNumInBox.Text;
                string price = TBPrice.Text;

                dbs.UpDateItem(SN, numinbox, price);
                Response.Redirect("itamList.aspx");

           
        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message);

            Response.Write("קיימת בעיה אנא נסה שנית מאוחר יותר");
        }
    }

    


    protected void DeletButton_Click(object sender, EventArgs e)
    {
         try
        {
            DBservices dbs = new DBservices();

            Label lSN = (Label)PHIteamNS.FindControl("lbSN");
            string SN = lSN.Text;
            string numinbox = TBNumInBox.Text;
            string price = TBPrice.Text;

            dbs.DeletItem(SN);
            Response.Redirect("itamList.aspx");

            
        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message);
            Response.Write("קיימת בעיה אנא נסה שנית מאוחר יותר");
        }

    }

}