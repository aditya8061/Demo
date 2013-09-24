using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtOperand1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txtOperand1.Text);
        int b = Convert.ToInt32(txtOperand2.Text);
        ServiceReference.CalculatorWebServiceSoapClient c = new ServiceReference.CalculatorWebServiceSoapClient();
        int Result=c.Add(a, b);
        txtResult.Text = Result.ToString();

    }
    protected void btnSub_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txtOperand1.Text);
        int b = Convert.ToInt32(txtOperand2.Text);
        ServiceReference.CalculatorWebServiceSoapClient c = new ServiceReference.CalculatorWebServiceSoapClient();
        int Result = c.Subtract(a, b);
        txtResult.Text = Result.ToString();
    }
    protected void btnMultiply_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txtOperand1.Text);
        int b = Convert.ToInt32(txtOperand2.Text);
        ServiceReference.CalculatorWebServiceSoapClient c = new ServiceReference.CalculatorWebServiceSoapClient();
        int Result = c.Multiply(a, b);
        txtResult.Text = Result.ToString();
    }
    protected void btnDivide_Click(object sender, EventArgs e)
    {
        int a = Convert.ToInt32(txtOperand1.Text);
        int b = Convert.ToInt32(txtOperand2.Text);
        ServiceReference.CalculatorWebServiceSoapClient c = new ServiceReference.CalculatorWebServiceSoapClient();
        int Result = c.Division(a, b);
        txtResult.Text = Result.ToString();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtOperand1.Text = "";
        txtOperand2.Text = "";
        txtResult.Text = "";
    }
}