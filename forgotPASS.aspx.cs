using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManagementSystem_forgotPASS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BforgotPASS_Click(object sender, EventArgs e)
    {
        DBservices dbs = new DBservices();

        try
        {
            bool iswork = dbs.chekID(TBIDworker.Text);

            if (iswork == true)
            {

                List<string> WorkerDetails = new List<string>();
                WorkerDetails = DBservices.GetWorkerDetails(TBIDworker.Text);

                Mailmsg.Send("Your password is: " + WorkerDetails[1].ToString(), " password", WorkerDetails[2].ToString());

                LBans.ForeColor = System.Drawing.ColorTranslator.FromHtml("#9b8d84");
                LBans.Text = " סיסמא נשלחה ל: " + WorkerDetails[0].ToString();
                HyperLink link = new HyperLink();
                link.NavigateUrl = "Default.aspx";
                link.Text = "חזרה לדף הכניסה";
                LBbeack.Controls.Add(link);
            }
            else
            {
                LBans.ForeColor = System.Drawing.Color.Red;
                LBans.Text = "תעודת הזהות שהוקשה אינה קיימת במערכת - הכנס תעודת זהות שוב או פנה למנהל מערכת";
            }

        }
        catch (Exception ex)
        {
            ErrHandler.WriteError(ex.Message);
            Response.Write("קיימת בעיה אנא נסה שנית מאוחר יותר");
        }
    }
}