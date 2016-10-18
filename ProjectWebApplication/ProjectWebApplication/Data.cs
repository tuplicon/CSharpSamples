using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ProjectWebApplication
{
    public enum Color
    {
        Green,
        Black,
        Red,
        Silver,
        Yellow,
        White,
        Grey,
    }
    public enum Day
    {
        Sunday=1,
        Monday,
        TuesDay,
        WednesDay,
        ThursDay,
        FriDay,
        Saturday,
    }
    public class Data
    {
        
        public Color Color { get; set; }
        public Day day { get; set; }
        
       
    }

}