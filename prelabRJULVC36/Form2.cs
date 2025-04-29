using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace prelabRJULVC36
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }
        int codigo1 = 1;

        void limpiar()
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";
            textBox5.Text = "";
            textBox6.Text = "";
            textBox7.Text = "";
            textBox8.Text = "";
            textBox9.Text = "";
            textBox10.Text = "";
            textBox11.Text = codigo1.ToString();


        }
        
          

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            foreach (DataGridViewCell cell in dataGridView1.SelectedCells)
            {
                cell.Value = null; 
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            object[] agregar =
            {
               
                textBox1 .Text,
                textBox2 .Text,
                textBox3 .Text,
                textBox4 .Text,
                textBox5 .Text,
                textBox6 .Text,
                textBox7 .Text,
                textBox8 .Text,
                textBox9 .Text,
                textBox10 .Text,
                textBox11 .Text,


            };
            dataGridView1.Rows.Add(agregar);
            MessageBox.Show("Dato Registrado", "Mensaje");
            codigo1++;
            textBox11.Text = codigo1.ToString();
            limpiar();
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (dataGridView1.Rows.Count != 0)
            {
                int indice = dataGridView1.CurrentRow.Index;
                dataGridView1.Rows[indice].Cells[0].Value = textBox1.Text;
                dataGridView1.Rows[indice].Cells[1].Value = textBox2.Text;
                dataGridView1.Rows[indice].Cells[2].Value = textBox3.Text;
                dataGridView1.Rows[indice].Cells[3].Value = textBox4.Text;
                dataGridView1.Rows[indice].Cells[4].Value = textBox5.Text;
                dataGridView1.Rows[indice].Cells[5].Value = textBox6.Text;
                dataGridView1.Rows[indice].Cells[6].Value = textBox7.Text;
                dataGridView1.Rows[indice].Cells[7].Value = textBox8.Text;
                dataGridView1.Rows[indice].Cells[8].Value = textBox9.Text;
                dataGridView1.Rows[indice].Cells[9].Value = textBox10.Text;
                dataGridView1.Rows[indice].Cells[10].Value = textBox11.Text;
                MessageBox.Show("Dato Modificado");

            }



        }

        private void dataGridView1_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView1.RowCount != 0)
            {
                int fila = dataGridView1.CurrentCell.RowIndex;
                textBox1.Text = dataGridView1[0, fila ].Value.ToString();
                textBox2.Text = dataGridView1[1, fila].Value.ToString();
                textBox3.Text = dataGridView1[2, fila].Value.ToString();
                textBox4.Text = dataGridView1[3, fila].Value.ToString();
                textBox5.Text = dataGridView1[4, fila].Value.ToString();
                textBox6.Text = dataGridView1[5, fila].Value.ToString();
                textBox7.Text = dataGridView1[6, fila].Value.ToString();
                textBox8.Text = dataGridView1[7, fila].Value.ToString();
                textBox9.Text = dataGridView1[8, fila].Value.ToString();
                textBox10.Text = dataGridView1[9, fila].Value.ToString();
                textBox11.Text = dataGridView1[10, fila].Value.ToString();
            }
        }

        private void textBox11_TextChanged(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            Form3 form3 = new Form3();
            form3.Show();

        }
    }
}
