using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogCV
{
    public partial class KonferansListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLKONFERANSLARTableAdapter dt = new DataSet1TableAdapters.TBLKONFERANSLARTableAdapter();
            Repeater1.DataSource = dt.KonferansListesi();
            Repeater1.DataBind();
        }
    }
}