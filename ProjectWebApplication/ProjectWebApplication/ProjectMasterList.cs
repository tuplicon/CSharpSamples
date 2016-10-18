using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectWebApplication
{
    public class ProjectMasterList
    {
        public void Add(List<ProjectMaster> list)
        {
            MyList = list;
        }

        public List<ProjectMaster> MyList { get; set; }
    }
}