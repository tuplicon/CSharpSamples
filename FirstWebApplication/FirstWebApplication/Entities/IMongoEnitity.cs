﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MongoDB.Bson;

namespace FirstWebApplication.Entities
{
    public interface IMongoEnitity
    {
        ObjectId Id { get; set; }
    }
}
