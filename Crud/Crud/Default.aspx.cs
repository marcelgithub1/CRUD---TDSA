using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Crud
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                CarregarTabela();
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
        
        }
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\LocalDB;Initial Catalog=programmingDB;User ID=sa;Password=*********");
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into Tab_Info_Estudante values ('"+int.Parse(TextBox2.Text)+"'," +
                "'"+TextBox3.Text+"'," +
                "'"+DropDownList1.SelectedValue+"'," +
                "'"+double.Parse(TextBox4.Text)+"'," +
                "'"+TextBox5.Text+"')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(),"script", "alert('Estudante adicionado com sucesso.');", true);
            CarregarTabela();
        }
        
        void CarregarTabela()
        {
            SqlCommand comm = new SqlCommand("select * from Tab_Info_Estudante", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("update Tab_Info_Estudante set NM_Estudante = '" + TextBox3.Text + "'," +
                " Endereço = '" + DropDownList1.SelectedValue + "'," +
                " Idade = '" + double.Parse(TextBox4.Text) + "'," +
                " Contato = '" + TextBox5.Text + "'" +
                " where IDEstudante = '" + int.Parse(TextBox2.Text) + "' ", con);
           
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Dados do estudante atualizado com sucesso.');", true);
            CarregarTabela();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("delete Tab_Info_Estudante where IDEstudante = '"+ int.Parse(TextBox2.Text) + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Estudante excluido com sucesso.');", true);
            CarregarTabela();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Tab_Info_Estudante where  IDEstudante = '" + int.Parse(TextBox2.Text) + "'", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from Tab_Info_Estudante where  IDEstudante = '" + int.Parse(TextBox2.Text) + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while(r.Read())
            {
                TextBox3.Text = r.GetValue(1).ToString();
                DropDownList1.SelectedValue = r.GetValue(2).ToString();
                TextBox4.Text = r.GetValue(3).ToString();
                TextBox5.Text = r.GetValue(4).ToString();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from Tab_Info_Estudante where  Nm_Estudante = '" + TextBox3.Text + "'", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                TextBox2.Text = r.GetValue(0).ToString();
                DropDownList1.SelectedValue = r.GetValue(2).ToString();
                TextBox4.Text = r.GetValue(3).ToString();
                TextBox5.Text = r.GetValue(4).ToString();
            }
        }
    }
}