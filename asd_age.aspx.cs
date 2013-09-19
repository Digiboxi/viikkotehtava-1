using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class asd_age : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void paivamaara_Init(object sender, EventArgs e)
    {
        String currentDate = DateTime.Now.GetDateTimeFormats('d')[0];
        this.paivamaara.Text = "Tänään on: " + currentDate;
    }
    protected void valittuPaiva_Init(object sender, EventArgs e)
    {
        String valittuPaiva = Convert.ToString(this.kalenteri.SelectedDate.Day);
        String valittuKuukausi = Convert.ToString(this.kalenteri.SelectedDate.Month);
        String valittuVuosi = Convert.ToString(this.kalenteri.SelectedDate.Year);
        this.valittuPaiva.Text = "Valittu päivä: " + valittuPaiva + "." + valittuKuukausi + "." + valittuVuosi;
        paivienErotusF();
    }
    protected void paivienErotus_Init(object sender, EventArgs e)
    {
        this.paivienErotus.Text = "Päivien erotus: 0";
    }
    protected void paivienErotusF()
    {
        String erotus = Convert.ToString(Math.Abs((this.kalenteri.SelectedDate - DateTime.Today).Days));
        this.paivienErotus.Text = "Päivien erotus: " + erotus;
    }
    protected void kalenteri_Init(object sender, EventArgs e)
    {
        this.kalenteri.SelectedDate = DateTime.Now;
        this.kalenteri.VisibleDate = DateTime.Now;
        String valittuPaiva = DateTime.Now.GetDateTimeFormats('d')[0];
        this.valittuPaiva.Text = "Valittu päivä: " + valittuPaiva;
    }
    protected void vuosiTaakse_Click(object sender, EventArgs e)
    {
        this.kalenteri.VisibleDate = this.kalenteri.VisibleDate.AddYears(-1);
    }
    protected void vuosiEteen_Click(object sender, EventArgs e)
    {
        this.kalenteri.VisibleDate = this.kalenteri.VisibleDate.AddYears(1);
    }
}