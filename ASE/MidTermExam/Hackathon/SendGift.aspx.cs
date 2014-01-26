using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class SendGift : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        ItemRequest.ItemSearchRequest req = new ItemRequest.ItemSearchRequest();

        req.ResponseGroup = new string[] { "ItemAttributes" };

        req.SearchIndex = "All";

        req.Keywords = txtSearch.Text;

        ItemRequest.ItemSearch search= new ItemRequest.ItemSearch();

        search.AWSAccessKeyId = "[AKIAJ6PQOSKZQBS23FNA]";

        search.Request = new ItemRequest.ItemSearchRequest[] { req };


        ItemRequest.AWSECommerceServicePortTypeClient port = new ItemRequest.AWSECommerceServicePortTypeClient("AWSECommerceServicePort");

        
           ItemRequest.ItemSearchResponse response = port.ItemSearch(search);

            string strEAN = "";
            string strISBN = "";
            string strTitle = "";
            double dblPrice = 0;

            strEAN = response.Items[0].Item[0].ItemAttributes.EAN;
            strISBN = response.Items[0].Item[0].ItemAttributes.ISBN;
            dblPrice = Convert.ToDouble(response.Items[0].Item[0].ItemAttributes.ListPrice.Amount) / 100;
            strTitle = response.Items[0].Item[0].ItemAttributes.Title;

            txtTitle.Text = strTitle;
            txtEAN.Text = strEAN;
            txtISBN.Text = strISBN;
            txtPrice.Text = String.Format("{0:c}", dblPrice);
        
        
       


    }
}