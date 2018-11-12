<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TryIt.aspx.cs" Inherits="WebApplicationTryIt.TryIt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            width: 782px;
        }
        #validation_output {
            width: 831px;
        }
        #TextArea1 {
            width: 783px;
            height: 122px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
              <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="X-Large" Text="<b> Service 1 : Verification </b>"></asp:Label>
        <br />
            </div>
        <br />
        This web service takes 2 input strings one is an xml url and a schema url and is validated to result in either error or no error output.<br />
        <br />

        <b> Service Url:</b>  http://localhost:64008/Service1.svc
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Xml Url"></asp:Label>
        
        <asp:TextBox ID="validation_input1" runat="server" style="margin-left: 29px" Width="712px"></asp:TextBox>
        <br />
        <br />
        Xsd Url<asp:TextBox ID="validation_input2" runat="server" style="margin-left: 29px" Width="712px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Validation_button" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        Output :&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="validation_output" runat="server" Width="665px"></asp:TextBox>
        <br />
        <br />
        <b>Function Parameters:</b><br /><br />
        <b>string verification(string xmlUrl, string xsdUrl);</b><br />
        <b>Input Parameters:</b> XmlUrl (String) xsdUrl( String)<br />
        <b>Output Parameters: </b>Result(String)<br />
        <br />
        <br />
       <br />
         <div style="margin-left: auto; margin-right: auto; text-align: center;">
              <asp:Label ID="Label3" runat="server" Font-Bold="true" Font-Size="X-Large" Text="<b> Service 2: Transformation </b>"></asp:Label>
        <br />
            </div>
        <br />
        This webservice takes 2 strings as input one is an xml url and the other is an xsl url which transforms the xml using an xsl .Output is an .html file which is an xml ,transformed into xsl.<br />
        <br />
        <b>Service Url:</b> http://localhost:64008/Service1.svc
        <br />
        <br />
        <b>Xml Url: </b>
        <asp:TextBox ID="transform_input1" runat="server" Width="685px"></asp:TextBox>
        <br />
        <br />
       <b> XslUrl :</b>
        <asp:TextBox ID="transform_input2" runat="server" Width="685px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="transform_button" runat="server" Text="Submit" OnClick="transform_button_Click" />
        <br />
        <br />
        <b>Result :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="transform_output" runat="server" Width="685px"></asp:TextBox>
        <br />
        <br />
        <b>Function Parameters</b><br />
        <b>public string transform(string xmlUrl, string xslUrl)</b><br />
        <b>Input :</b> 2 strings xmlurl and xslurl<br />
       <b> Output:</b> xsd in xsl format
        <br />
        <br />
        <br />
        
    </form>
</body>
</html>
