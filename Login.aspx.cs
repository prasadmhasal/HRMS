using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace HRMS
{
	public partial class Login : System.Web.UI.Page
	{
		SqlConnection conn;
		protected void Page_Load(object sender, EventArgs e)
		{
			string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
			conn = new SqlConnection(cs);
			conn.Open();
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			string user, pass;
			user = TextBox1.Text;
			pass = TextBox2.Text;
			string query = $"exec Emp_Login '{user}','{pass}'";
			SqlCommand cmd = new SqlCommand(query, conn);
			SqlDataReader rdr = cmd.ExecuteReader();

			if(rdr.HasRows)
			{
				while(rdr.Read())
				{
					if (rdr["username"].Equals(user) && rdr["pass"].Equals(pass) && rdr["user_role"].Equals("HR"))
					{
						Session["myuser"] = user;
						Response.Redirect("JoiningForm.aspx");
					}
					if (rdr["username"].Equals(user) && rdr["pass"].Equals(pass) && rdr["user_role"].Equals("user"))
					{
						Session["myuser"] = user;
						Response.Redirect("UserLeave.aspx");
					}
					else
					{
						Response.Write("script> alert('Invalid Credntials') </script>");
					}
				}
			}
		}
	}
}