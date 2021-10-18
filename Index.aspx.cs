using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group_01_Census
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            news();
            lblContactMsg.Visible = false;
        }
        private void news()
        {
            string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand com = new SqlCommand("select * FROM LatestNews where ID='" + 1 + "'", con);
            SqlDataReader reader = com.ExecuteReader();
            reader.Read();
            lblnews1.Text = reader["News"].ToString();
            lblnews1.Font.Size = FontUnit.Small;
            lblnews1.ForeColor = Color.Black;
            DateTime Birth = Convert.ToDateTime(reader["Date"].ToString());
            lbltime1.Text = Birth.ToString("dd-MMM-yyyy" + "   ");
            lbltime1.Font.Size = FontUnit.Medium;
            lbltime1.ForeColor = Color.Blue;
            reader.Close();
            SqlCommand com2 = new SqlCommand("select * FROM LatestNews where ID='" + 2 + "'", con);
            SqlDataReader reader2 = com2.ExecuteReader();
            reader2.Read();
            lblnews2.Text = reader2["News"].ToString();
            lblnews2.Font.Size = FontUnit.Small;
            lblnews2.ForeColor = Color.Black;
            DateTime Birth2 = Convert.ToDateTime(reader2["Date"].ToString());
            lbltime2.Text = Birth2.ToString("dd-MMM-yyyy" + "   ");
            lbltime2.Font.Size = FontUnit.Medium;
            lbltime2.ForeColor = Color.Blue;
            reader2.Close();
            SqlCommand com3 = new SqlCommand("select * FROM LatestNews where ID='" + 3 + "'", con);
            SqlDataReader reader3 = com3.ExecuteReader();
            reader3.Read();
            lblnews3.Text = reader3["News"].ToString();
            lblnews3.Font.Size = FontUnit.Small;
            lblnews3.ForeColor = Color.Black;
            DateTime Birth3 = Convert.ToDateTime(reader3["Date"].ToString());
            lbltime3.Text = Birth3.ToString("dd-MMM-yyyy" + "   ");
            lbltime3.Font.Size = FontUnit.Medium;
            lbltime3.ForeColor = Color.Blue;
            reader3.Close();
            SqlCommand com4 = new SqlCommand("select * FROM LatestNews where ID='" + 4 + "'", con);
            SqlDataReader reader4 = com4.ExecuteReader();
            reader4.Read();
            lblnews4.Text = reader4["News"].ToString();
            lblnews4.Font.Size = FontUnit.Small;
            lblnews4.ForeColor = Color.Black;
            DateTime Birth4 = Convert.ToDateTime(reader4["Date"].ToString());
            lbltime4.Text = Birth4.ToString("dd-MMM-yyyy" + "   ");
            lbltime4.Font.Size = FontUnit.Medium;
            lbltime4.ForeColor = Color.Blue;
            reader4.Close();
            SqlCommand com5 = new SqlCommand("select * FROM LatestNews where ID='" + 5 + "'", con);
            SqlDataReader reader5 = com5.ExecuteReader();
            reader5.Read();
            lblnews5.Text = reader5["News"].ToString();
            lblnews5.Font.Size = FontUnit.Small;
            lblnews5.ForeColor = Color.Black;
            DateTime Birth5 = Convert.ToDateTime(reader5["Date"].ToString());
            lbltime5.Text = Birth5.ToString("dd-MMM-yyyy" + "   ");
            lbltime5.Font.Size = FontUnit.Medium;
            lbltime5.ForeColor = Color.Blue;
            reader5.Close();
            con.Close();
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(conString);
                SqlCommand sqlcmd = new SqlCommand();

                conn.Open();
                sqlcmd.Connection = conn;
                sqlcmd.CommandType = CommandType.Text;
                sqlcmd.CommandText = "INSERT INTO [dbo].[Contact]([Name],[Email],[Subject],[Division],[Message],[Time])VALUES(@Name, @Email,@Subject,@Division,@Message,@Time)";


                sqlcmd.Parameters.AddWithValue("@Name", txtFullName.Text);
                sqlcmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                sqlcmd.Parameters.AddWithValue("@Subject", txtSubject.Text);
                sqlcmd.Parameters.AddWithValue("@Division", ddlDivision.Text);
                sqlcmd.Parameters.AddWithValue("@Message", txtMessage.Text);
                DateTime localDate = DateTime.Now;
                sqlcmd.Parameters.AddWithValue("@Time", localDate);

                int flag = sqlcmd.ExecuteNonQuery();
                conn.Close();
                if (flag > 0)
                {
                    lblContactMsg.Visible = true;
                    lblContactMsg.Text = "Send Successfully";
                    Clear();
                }
                else
                {
                    lblContactMsg.Visible = true;
                    lblContactMsg.Text = "Sorry somthing worng.";
                }


            }
            catch (Exception)
            {
                lblContactMsg.Visible = true;
                lblContactMsg.Text = "Worng Input...!";
            }
        }
        private void Clear()
        {
            txtFullName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
            ddlDivision.Text = null;
        }
        
    }
}