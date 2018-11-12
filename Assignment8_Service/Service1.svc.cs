using System;

using System.Xml;
using System.Xml.Schema;

using System.Xml.Linq;
using System.Net;
using System.Xml.Xsl;
using System.IO;
using System.Text;
using System.Collections;

namespace Assignment8_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {


        private static Boolean Error = false;
        private static string Message;
        public string verification(string xmlUrl, string xsdUrl)
        {
            string output = "No Errors!!";
            Message = "";
            XmlSchemaSet set = new XmlSchemaSet();
            set.Add(null, xsdUrl);
            XmlReaderSettings reader_set = new XmlReaderSettings();
            reader_set.ValidationType = ValidationType.Schema;
            reader_set.Schemas = set;
            reader_set.ValidationEventHandler += new ValidationEventHandler(reader_setEventHandler);
            XmlReader rd = XmlReader.Create(xmlUrl, reader_set);
            Error = false;
            while (rd.Read()) ;
           
            if (Error == false)
                return output;
            else
                return Message;



        }
        private static void reader_setEventHandler(object sender, ValidationEventArgs e)
        {
            Message += "Error: " + e.Message + "\n";
            Error = true;

        }

            public string transform(string xmlUrl, string xslUrl)
        {
            
            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(xslUrl);

            StringWriter string_writer = new StringWriter();
            xslt.Transform(xmlUrl, null, string_writer);
            return string_writer.ToString();





        }
        }
    }
