﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginnew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void buttenIN_Click(object sender, EventArgs e)
    {

        Session["Name"] = TBusername.Text;
        Session["Password"] = TBpassword.Text;


        DBservices dbs = new DBservices();
        try
        {

            string iswork = dbs.chekIN(TBusername.Text, TBpassword.Text);

            if (iswork == "false")
                ans.Text = "שם סיסמא לא נכונים";
            else
                if (iswork == "worker")
                    Response.Redirect("OrderList.aspx",false);
                else
                    if (iswork == "manager")
                        Response.Redirect("ManagementSystem/Homepage.aspx", false);
                    else
                        Response.Redirect("Meconomist.aspx",false);
        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message);
            Response.Write("קיימת בעיה אנא נסה שנית מאוחר יותר");
        }
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgotPASS.aspx", false);
    }

}