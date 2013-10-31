using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ilmo_Ilmo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void btnHae_Click(object sender, EventArgs e)
    {
            asd.DataSourceID = "dsNimiHakuHelvetti";
            asd.DataBind();
    }


    protected void DropJakso_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}