using Library_Management_System;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Hotel
{
    public partial class Form1 : Form
    {
        private readonly Connection _connection;
        private DataGridView dataGridView1 = new DataGridView();

        public Form1(Connection connection)
        {
            _connection = connection;
            InitializeComponent();

            dataGridView1.Dock = DockStyle.Fill;
            this.Controls.Add(dataGridView1);

            
            LoadAvailableRooms();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void LoadData()
        {
            using (SqlConnection conn = _connection.CreateConnection())
            {
                try
                {
                    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Customers", conn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    dataGridView1.DataSource = dt;
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"حدث خطأ في تحميل البيانات: {ex.Message}");
                }
            }
        }

        private void LoadAvailableRooms()
        {
            comboBox1.Items.Clear();

            using (SqlConnection conn = _connection.CreateConnection())
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SELECT Roomnumber FROM Room WHERE Isavailable = 1", conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        comboBox1.Items.Add(reader["Roomnumber"].ToString());
                    }

                    reader.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"حدث خطأ في تحميل الغرف: {ex.Message}");
                }
            }
        }

        private int GetRoomIdFromRoomNumber(string roomNumber)
        {
            using (SqlConnection conn = _connection.CreateConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT Room_id FROM Room WHERE Roomnumber = @RoomNumber", conn);
                cmd.Parameters.AddWithValue("@RoomNumber", roomNumber);
                object result = cmd.ExecuteScalar();

                if (result != null && result != DBNull.Value)
                {
                    return Convert.ToInt32(result);
                }
                return -1;
            }
        }

        private void AddUser()
        {
            
            if (string.IsNullOrEmpty(textBox1.Text) || string.IsNullOrEmpty(textBox2.Text) ||
                string.IsNullOrEmpty(textBox3.Text) || string.IsNullOrEmpty(textBox4.Text) ||
                string.IsNullOrEmpty(textBox5.Text) || comboBox1.SelectedItem == null)
            {
                MessageBox.Show("يرجى ملء جميع الحقول.");
                return;
            }

            int customerId;
            if (!int.TryParse(textBox5.Text, out customerId))
            {
                MessageBox.Show("رقم العميل يجب أن يكون قيمة عددية صحيحة.");
                return;
            }

            using (SqlConnection conn = _connection.CreateConnection())
            {
                conn.Open();
                SqlTransaction transaction = conn.BeginTransaction();

                try
                {
                   
                    string query1 = @"INSERT INTO Customers 
                                     (customerID, FullName, Email, phone_number, NationalID)
                                     VALUES 
                                     (@customerID, @FullName, @Email, @phone_number, @NationalID)";
                    SqlCommand cmd1 = new SqlCommand(query1, conn, transaction);
                    cmd1.Parameters.AddWithValue("@customerID", customerId);
                    cmd1.Parameters.AddWithValue("@FullName", textBox1.Text);
                    cmd1.Parameters.AddWithValue("@Email", textBox2.Text);
                    cmd1.Parameters.AddWithValue("@phone_number", textBox3.Text);
                    cmd1.Parameters.AddWithValue("@NationalID", textBox4.Text);
                    cmd1.ExecuteNonQuery();

                  
                    int roomId = GetRoomIdFromRoomNumber(comboBox1.SelectedItem.ToString());
                    if (roomId == -1)
                    {
                        throw new Exception("الغرفة المحددة غير موجودة في قاعدة البيانات.");
                    }

                    string query2 = @"INSERT INTO Reservation 
                                     (ReservationID, Room_id, Checkin_date, Checkout_date, Status)
                                     VALUES 
                                     (@ReservationID, @Room_id, @Checkin_date, @Checkout_date, 'Confirmed')";
                    SqlCommand cmd2 = new SqlCommand(query2, conn, transaction);
                    cmd2.Parameters.AddWithValue("@ReservationID", customerId); 
                    cmd2.Parameters.AddWithValue("@Room_id", roomId);
                    cmd2.Parameters.AddWithValue("@Checkin_date", dateTimePicker1.Value.Date);
                    cmd2.Parameters.AddWithValue("@Checkout_date", dateTimePicker2.Value.Date);
                    cmd2.ExecuteNonQuery();

                    string query4 = @"UPDATE Room SET IsAvailable = 0 WHERE Roomnumber = @RoomNumber";
                    SqlCommand cmd3 = new SqlCommand(query4, conn, transaction);
                    cmd3.Parameters.AddWithValue("@RoomNumber", comboBox1.SelectedItem.ToString());
                    cmd3.ExecuteNonQuery();

                    transaction.Commit();
                    MessageBox.Show("تمت إضافة العميل والحجز وتحديث الغرفة بنجاح.");

                    
                    ClearFormFields();
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    MessageBox.Show($"حدث خطأ: {ex.Message}");
                }
            }
        }

        private void ClearFormFields()
        {
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
            textBox4.Clear();
            textBox5.Clear();
            dateTimePicker1.Value = DateTime.Now;
            dateTimePicker2.Value = DateTime.Now.AddDays(1);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AddUser();
        }

        private void textBox1_TextChanged(object sender, EventArgs e) { }
        private void textBox2_TextChanged(object sender, EventArgs e) { }
        private void textBox3_TextChanged(object sender, EventArgs e) { }
        private void textBox4_TextChanged(object sender, EventArgs e) { }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e) { }

        private void button3_Click(object sender, EventArgs e)
        {
         
            using (SqlConnection conn = _connection.CreateConnection())
            {
                string query = @"SELECT * FROM Customers 
                         WHERE FullName LIKE @keyword OR NationalID LIKE @keyword";
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                da.SelectCommand.Parameters.AddWithValue("@keyword", "%" + textBox6.Text.Trim() + "%");
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridView1.DataSource = dt;
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
