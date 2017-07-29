using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication6.Models;

namespace WebApplication6
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Person> pList = new List<Person>();
                pList.Add(new Person() { Name = "zs" });
                pList.Add(new Person() { Name = "lisi" });
                pList.Add(new Person() { Name = "sw" });
                RptPerson.DataSource = pList;
                RptPerson.DataBind();
                RptPerson1.DataSource = pList;
                RptPerson1.DataBind();
            }

        }

        public List<Person> GetPerson()
        {
            List<Person> pList = new List<Person>();
            pList.Add(new Person() { Name = "zs" });
            pList.Add(new Person() { Name = "lisi" });
            pList.Add(new Person() { Name = "sw" });
            return pList;
        }

    }
}