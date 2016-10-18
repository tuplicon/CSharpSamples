using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Driver;
using MongoDB.Driver.Builders;
using ProjectWebApplication;

namespace ProjectWebApplication
{
    public class MyObj
    {
        private static IMongoClient _client;
        private static IMongoDatabase _db;

        private static void Connection()
        {
            _client = new MongoClient("mongodb://parth:test1@ds025469.mlab.com:25469/tuplitest");
            _db = _client.GetDatabase("tuplitest");
        }

        public static ProjectMasterList GetData()
        {
            Connection();
            var collection = _db.GetCollection<ProjectMaster>("ProjectMaster");
            var select = collection.AsQueryable().ToList();
            ProjectMasterList il = new ProjectMasterList();
            il.Add(select);
            return il;
        }

        public static bool InsertData(string symbol, SideEnum side, PriceComparisonEnum evaluator,
            RatePriceOrFeeEnum ratePriceFee, DateTime expiration, bool usePercentMoney, double bidStrike,
            double midStrike, double highStrike, string account, double limit, ListenerTypeEnum listenerType,
            string jobId, string comments)
        {
            try
            {


                var collection = _db.GetCollection<ProjectMaster>("ProjectMaster");
                ProjectMaster t = new ProjectMaster()
                {
                    Symbol = symbol,
                    Side = Enum.GetName(typeof(SideEnum), side),
                    Evaluator = Enum.GetName(typeof(PriceComparisonEnum), evaluator),
                    RatePriceFee = Enum.GetName(typeof(RatePriceOrFeeEnum), ratePriceFee),
                    Expiration = expiration,
                    UsePercentMoney = usePercentMoney,
                    BidStrike = bidStrike,
                    MidStrike = midStrike,
                    HighStrike = highStrike,
                    Account = account,
                    Limit = limit,
                    ListenerType = Enum.GetName(typeof(ListenerTypeEnum), listenerType),
                    JobId = jobId,
                    Comments = comments,
                };
                collection.InsertOne(t);

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public static bool DeleteData(Object id)
        {
            try
            {
                var collection = _db.GetCollection<ProjectMaster>("ProjectMaster");
                
               
                var filter = Builders<ProjectMaster>.Filter.Eq("_id", id);
               // var query = Query.EQ("_id",id);
                collection.DeleteOne(filter);
                //collection.Remove(query);
               
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
