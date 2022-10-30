using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if(CheckBox1.Checked==true)
            {
                Label1.Text = " Checked";
            }
            else
            {
                Label1.Text = " un Checked";
            }
        }
        string s = "";
        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if(li.Selected)
                {
                    s+=li.Text + ",";

                }
            }
            Label1.Text = s;
        }
    }
}