using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class G2007_Valuuttamuunnin : System.Web.UI.Page
{
    private const float BitCoinRate = 94.71F;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void muunna_Click(object sender, EventArgs e)
    {
        try
        {
            // muunnetaan
            this.lblCurrency.Text = "Tulos: " + Convert.ToString(float.Parse(this.muunnettava.Text) * BitCoinRate);
            //näytetään
            this.lstOne.Items.Add(muunnettava.Text + "-->" + lblCurrency.Text);
            this.lstTwo.Items.Add(muunnettava.Text + "-->" + lblCurrency.Text);
        } catch(Exception ex) {
        }
    }
}