using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ilmo_Ilmo : System.Web.UI.Page
{
    private string cs = "server=eight.labranet.jamk.fi;user=koodari;password=koodari13;database=DemoxOy";
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnHae_Click(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(cs))
        {
            con.Open();

            using (SqlCommand command = new SqlCommand("SELECT * FROM lasnaolot WHERE", con))
            using (SqlDataReader reader = command.ExecuteReader())
            {
                
            }
        }
    }
}