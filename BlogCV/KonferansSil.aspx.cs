﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogCV
{
    public partial class KonferansSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);

            DataSet1TableAdapters.TBLKONFERANSLARTableAdapter dt = new DataSet1TableAdapters.TBLKONFERANSLARTableAdapter();
            dt.KonferansSil(Convert.ToInt16(x));
            Response.Redirect("KonferansListesi.aspx");
            
        }
    }
}