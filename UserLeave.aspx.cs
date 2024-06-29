using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace HRMS
{
	public partial class UserLeave : System.Web.UI.Page
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

			DateTime enteredDate;

			if (!DateTime.TryParse(TextBox1.Text, out enteredDate))
			{
				// Handle invalid date format if needed
				Response.Write("<script>alert('Invalid date format. Please enter a valid date.')</script>");
				return;
			}

			DateTime today = DateTime.Today;

			// Check if the entered date is today or in the future
			if (enteredDate < today)
			{
				// Handle case where date is not current or future
				Response.Write("<script>alert('Please enter a current or future date.')</script>");
				return;
			}



			if (!DateTime.TryParse(TextBox2.Text, out enteredDate))
			{
				// Handle invalid date format if needed
				Response.Write("<script>alert('Invalid date format. Please enter a valid date.')</script>");
				return;
			}

			DateTime today1 = DateTime.Today;

			// Check if the entered date is today or in the future
			if (enteredDate < today1)
			{
				// Handle case where date is not current or future
				Response.Write("<script>alert('Please enter a current or future date.')</script>");
				return;
			}



			DateTime startDate, endDate;

			if (!DateTime.TryParse(TextBox1.Text, out startDate) ||
				!DateTime.TryParse(TextBox2.Text, out endDate))
			{
				// Handle invalid date format if needed
				Response.Write("<script>alert('Invalid date format. Please enter a valid date.");
				return;
			}

			// Compare dates
			if (startDate > endDate)
			{
				// Handle case where starting date is greater than ending date
				Response.Write("<script>alert('Starting date cannot be greater than ending date.')</script>");
				return;
			}

			int leave_days = (int)(endDate - startDate).TotalDays;
			

			





			string leave_type, from_date, to_date, reason;
			leave_type = DropDownList1.SelectedValue;
			from_date = TextBox1.Text;
			to_date = TextBox1.Text;
			to_date = TextBox2.Text;
			reason = TextArea1.Value;
			string query = $"exec User_Leave '{leave_type}','{from_date}','{to_date}','{reason}'";
			SqlCommand cmd = new SqlCommand(query, conn);
			cmd.ExecuteNonQuery();
			Response.Write("<script>alert('Application has been submitted successfully')</script>");
		}
	}
}
				














