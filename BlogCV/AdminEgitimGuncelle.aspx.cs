using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogCV
{
    public partial class AdminEgitimGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt16(Request.QueryString["ID"]);
            TxtID.Enabled = false;
            TxtID.Text = x.ToString();


            if (Page.IsPostBack == false)
            {
                DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
                TxtBaslik.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].BASLIK;
                TxtAltBaslik.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].ALTBASLIK;
                TxtAciklama.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].ACIKLAMA;
                TxtTarih.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].TARIH;
                TxtGenelNot.Text = dt.EgitimGetir(Convert.ToInt16(x))[0].GNOT;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBLEGITIMTableAdapter dt = new DataSet1TableAdapters.TBLEGITIMTableAdapter();
            dt.EgitimGuncelle(TxtBaslik.Text, TxtAltBaslik.Text, TxtAciklama.Text, TxtGenelNot.Text, TxtTarih.Text, Convert.ToInt16(TxtID.Text));
            Response.Redirect("AdminEgitim.aspx");
        }
    }
}