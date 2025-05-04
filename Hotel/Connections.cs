using System.Configuration;
using System.Data.SqlClient;

namespace Library_Management_System
{
    public class Connection
    {
        private readonly string _connectionString;

        public Connection()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["HotelDb"].ConnectionString;
        }

       
        public SqlConnection CreateConnection()
        {
            return new SqlConnection(_connectionString);
        }

        public string GetConnectionString()
        {
            return _connectionString;
        }
    }
}

