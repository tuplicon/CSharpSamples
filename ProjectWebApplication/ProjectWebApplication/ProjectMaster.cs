using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace ProjectWebApplication
{
    public enum SideEnum
    {
        None,
        Bid,
        SquidBid,
        Mid,
        SquidMid,
        Ask,
        BidAsk,
        Actual,
        Curve,
    }
    public enum PriceComparisonEnum
    {
       None = 0,
       GreaterThanOrEqualTo = 1,
       LessThanOrEqualTo = -1
    }
    public enum RatePriceOrFeeEnum
    {
        Rate = 0,
        Price = 1,
        Fee = 2,
        None = 3
    }
    public enum ListenerTypeEnum
    {
        Stock = 0,
        Call = 1,
        Put = 2,
        Conversion = 3,
        Reversal = 4,
        ConversionMonth = 5,
        ReversalMonth = 6
    }
    public class ProjectMaster
    {
        [BsonId]
        public  ObjectId _id { get; set; }

        public string Symbol { get; set; }
        public string Side { get; set; }
        public string Evaluator { get; set; }
        public string RatePriceFee { get; set; }
        public DateTime Expiration { get; set; }
        public bool UsePercentMoney { get; set; }
        public double BidStrike { get; set; }
        public double MidStrike { get; set; }
        public double HighStrike { get; set; }
        public string Account { get; set; }
        public double Limit { get; set; }
        public string ListenerType { get; set; }
        public string JobId { get; set; }
        public string Comments { get; set; }


        public override string ToString()
        {
            return "";


        }
      
    }
}