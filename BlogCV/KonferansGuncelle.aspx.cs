using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogCV
{
    public partial class KonferasGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int s = Convert.ToInt16(Request.QueryString["ID"]);
            TxtID.Text = s.ToString();
            TxtID.Enabled = false;
            if (Page.IsPostBack==false)
            {
                DataSet1TableAdapters.TBLKONFERANSLARTableAdapter dt = new DataSet1TableAdapters.TBLKONFERANSLARTableAdapter();
              TxtKonferans.Text= dt.KonferansGetir(Convert.ToInt16(s))[0].KONFERANS;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLKONFERANSLARTableAdapter dt = new DataSet1TableAdapters.TBLKONFERANSLARTableAdapter();
            dt.KonferansGuncelle(TxtKonferans.Text, Convert.ToInt16(TxtID.Text));
            Response.Redirect("KonferansListesi.aspx");
        }
    }
}