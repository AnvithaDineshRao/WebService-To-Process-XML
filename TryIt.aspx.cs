using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationTryIt
{
    public partial class TryIt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference.Service1Client serv_client = new ServiceReference.Service1Client();
            string xmlurl = validation_input1.Text;
            string xsdurl = validation_input2.Text;
            if (xmlurl != null && xsdurl != null)
                validation_output.Text = serv_client.verification(validation_input1.Text, validation_input2.Text).ToString();
            else
                validation_output.Text = "Enter valid Arguments";



        }

        protected void transform_button_Click(object sender, EventArgs e)
        {
            ServiceReference.Service1Client serv_client = new ServiceReference.Service1Client();
            string xmlurl = transform_input1.Text;
            string xslurl = transform_input2.Text;
            transform_output.Text = serv_client.transform(xmlurl, xslurl);

       

            using (StreamWriter _testData = new StreamWriter(Server.MapPath("~/result.html"), false))
            {
                _testData.Write(transform_output.Text); 
            }
            System.Diagnostics.Process.Start(Server.MapPath("~/result.html"));
        }

    }
}
 