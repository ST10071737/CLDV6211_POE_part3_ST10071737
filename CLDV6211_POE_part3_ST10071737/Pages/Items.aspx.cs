using System;

namespace CLDV6211_POE_part3_ST10071737
{
    public partial class Items : System.Web.UI.Page
    {
        protected void btnInspectors_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Inspectors.aspx");
        }
    }
}