using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using MongoDB.Bson;

namespace ProjectWebApplication
{
    public partial class ProjectWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static ArrayList GetData()
        {
            var select = MyObj.GetData();
            //return select;
            String[] side = Enum.GetNames(typeof(SideEnum));
            String[] priceComarison = Enum.GetNames(typeof(PriceComparisonEnum));
            String[] rateprice = Enum.GetNames(typeof(RatePriceOrFeeEnum));
            String[] listnerType = Enum.GetNames(typeof(ListenerTypeEnum));
           
            ArrayList al = new ArrayList();
            al.Add(side);
            al.Add(priceComarison);
            al.Add(rateprice);
            al.Add(listnerType);
            al.Add(select);
            return al;


        }

        [WebMethod]
        public static bool SaveData(string symbol, SideEnum side, PriceComparisonEnum evaluator,
            RatePriceOrFeeEnum ratePriceFee, DateTime expiration, bool usePercentMoney, double bidStrike,
            double midStrike, double highStrike, string account, double limit, ListenerTypeEnum listenerType,
            string jobId, string comments)
        {
            var select = MyObj.InsertData(symbol, side, evaluator,ratePriceFee, expiration, usePercentMoney, bidStrike, midStrike, highStrike, account, limit, listenerType, jobId, comments);

            /*   return new JavaScriptSerializer().Serialize(
                   "Hello, " + item + ", " + qty + " " + date+ " "+ phone+"!");*/

            return select;
            //return "Hello i am parth";


        }

        [WebMethod]
        public static bool DeleteData(string id)
        {
            var select = MyObj.DeleteData(id);
            return select;

        }
        [WebMethod]
        public static bool UpdateData(string id,string symbol, SideEnum side, PriceComparisonEnum evaluator,
            RatePriceOrFeeEnum ratePriceFee, DateTime expiration, bool usePercentMoney, double bidStrike,
            double midStrike, double highStrike, string account, double limit, ListenerTypeEnum listenerType,
            string jobId, string comments)
        {
            var select = MyObj.UpdateData(id,symbol, side, evaluator, ratePriceFee, expiration, usePercentMoney, bidStrike, midStrike, highStrike, account, limit, listenerType, jobId, comments);

            /*   return new JavaScriptSerializer().Serialize(
                   "Hello, " + item + ", " + qty + " " + date+ " "+ phone+"!");*/

            return select;
            //return "Hello i am parth";


        }

    }
}