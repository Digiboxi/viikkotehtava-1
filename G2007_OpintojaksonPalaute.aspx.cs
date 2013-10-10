using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class G2007_OpintojaksonPalaute : System.Web.UI.Page
{
    protected void NapinPainallus(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(MapPath("~/App_Data/Palautteet.xml"));

        XmlElement newElem = doc.CreateElement("palaute");

        string dateNow = Convert.ToString(DateTime.Today.ToShortDateString());
        newElem.InnerXml = "<pvm>" + dateNow +"</pvm>" +
            "<tekija>" + this.txtNimi.Text + "</tekija>" +
            "<opittu>" + this.txtOppinut.Text + "</opittu>" +
            "<haluanoppia>" + this.txtHaluanoppia.Text + "</haluanoppia>" +
            "<hyvaa>" + this.txtHyvaa.Text + "</hyvaa>" +
            "<parannettavaa>" + this.txtParannettavaa.Text + "</parannettavaa>" +
            "<muuta>" + this.txtMuuta.Text + "</muuta>";

        doc.DocumentElement.SelectNodes("/palautteet")[0].AppendChild(newElem);

        XmlTextWriter wrtr = new XmlTextWriter(MapPath("~/App_Data/Palautteet.xml"), System.Text.Encoding.UTF8);
        doc.WriteTo(wrtr);
        wrtr.Close();

        this.txtHaluanoppia.Text = "";
        this.txtHyvaa.Text = "";
        this.txtMuuta.Text = "";
        this.txtNimi.Text = "";
        this.txtOppinut.Text = "";
        this.txtParannettavaa.Text = "";
    }

    protected void nayta_Click(object sender, EventArgs e)
    {
        XmlReader reader = XmlReader.Create(MapPath("~/App_Data/Palautteet.xml"));
        reader.MoveToContent();

        this.teksti.InnerHtml = "<table border=1>";
        this.teksti.InnerHtml += "<tr><td>Pvm</td>";
        while(reader.Read())
        {
            if(reader.NodeType == XmlNodeType.Element)
            {
                switch(reader.Name) {
                    case "palaute": this.teksti.InnerHtml += "</tr><tr>"; break;
                    default: this.teksti.InnerHtml += "<td>" + reader.ReadInnerXml() + "</td>"; break;
                }
            }
        }
        this.teksti.InnerHtml += "</table>";
    }
}