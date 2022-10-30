using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("style", "position:absolute");
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox4.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label11.Text = TextBox1.Text;
            Label12.Text = TextBox2.Text;
            Label13.Text = TextBox3.Text;
            Label14.Text = RadioButtonList1.SelectedValue;


            string s = "";
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    s += li.Text + ",";

                }
            }
            Label15.Text = s;
            Label16.Text = TextBox4.Text;
            string k = "";
            foreach (ListItem li in DropDownList1.Items)
            {
                if (li.Selected)
                {
                    k += li.Text + ",";

                }
            }
            Label17.Text = k;
            Label18.Text = FileUpload1.FileName;
            Label19.Text = TextBox5.Text;
            Label20.Text = TextBox6.Text;
        }
    }
}