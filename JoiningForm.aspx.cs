using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRMS
{
	public partial class JoiningForm : System.Web.UI.Page
	{
		SqlConnection conn;

		protected void Page_Load(object sender, EventArgs e)
		{
			string cf = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
			conn = new SqlConnection(cf);
			conn.Open();

		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			string name = TextBox1.Text, contact = TextBox2.Text, email = TextBox3.Text, salary=TextBox6.Text ,dob = TextBox4.Text, doj = TextBox5.Text, user=TextBox7.Text, pass=TextBox8.Text, role="user";
			string q = $"exec AddEmployee '{name}','{contact}','{email}','{salary}','{dob}','{doj}','{user}','{pass}','{role}'";
			SqlCommand cmd = new SqlCommand(q, conn);
			cmd.ExecuteNonQuery();
			Response.Write("<script>alert('Employee Added Successfully')</script>");
		}
	}
}