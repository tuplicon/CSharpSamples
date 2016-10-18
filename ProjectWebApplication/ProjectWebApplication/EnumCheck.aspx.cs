using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWebApplication
{
    public partial class EnumCheck : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
         }

        [WebMethod]
        public static ArrayList GetData()
        {
            String[] colors = Enum.GetNames(typeof(Color));
            String[] days = Enum.GetNames(typeof(Day));
            ArrayList al=new ArrayList();
            al.Add(colors);
            al.Add(days);
            return al;
        }
        [WebMethod]
        public static string GetColor(Color color)
        {
            
            return color.ToString();
        }
        
    }
}