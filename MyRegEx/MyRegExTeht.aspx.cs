using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyRegEx_MyRegEx : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        switch (Request.QueryString["theme"])
        {
            case "SusiRuma": Page.Theme = "SusiRuma"; break;
            case "Juuso": Page.Theme = "Juuso"; break;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TxtName_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void BtnSend_Click(object sender, EventArgs e)
    {
        Regex reg = new Regex(@"^[a-zA-Z'.\s]{1,40}$");
        Regex email = new Regex(@"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
        if (!reg.IsMatch(this.TxtName.Text) && !email.IsMatch(this.TxtEmail.Text))
        {
            this.LblError.Text = "error!";
        }
        else
        {
            this.LblError.Text = "asd";
        }
    }
}