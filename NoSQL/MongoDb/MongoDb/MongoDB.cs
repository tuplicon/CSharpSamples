using System;
using MongoDB.Driver;

namespace MongoDb
{
    public class SampleDb
    {
        private static IMongoClient _client;
        public static IMongoDatabase MyDb;
        private static string MongoDbName = "tuplitest";

        static SampleDb()
        {
            _client = new MongoClient(String.Format("mongodb://parth:test1@ds025469.mlab.com:25469/{0}", MongoDbName));
            MyDb = _client.GetDatabase(MongoDbName);
        }
    }
}