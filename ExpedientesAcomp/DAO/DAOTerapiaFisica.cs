using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using TO;
using MySql.Data.MySqlClient;

namespace DAO
{
    public class DAOTerapiaFisica
    {
        MySqlConnection conexion = new MySqlConnection(Properties.Settings.Default.conection);
        //MySqlConnection conexion = new MySqlConnection(Properties.Settings.Default.connectionStringJ);

    }
}
