using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TO;
using System.Data.SqlClient;
using System.Data;
using MySql.Data.MySqlClient;

namespace DAO
{
    public class DAOCuenta
    {
        MySqlConnection conexion = new MySqlConnection(Properties.Settings.Default.conection);

        public TOCuenta buscarCuenta(string idEmpleado, string contra)
        {
            //try
            //{
            TOCuenta empleado = new TOCuenta();
            MySqlCommand buscar = new MySqlCommand("SELECT * FROM cuenta WHERE idcuenta = @id and contrasenna = @contra", conexion);
            buscar.Parameters.AddWithValue("@id", idEmpleado);
            buscar.Parameters.AddWithValue("@contra", contra);

            if (conexion.State != ConnectionState.Open)
            {
                conexion.Open();
            }

            MySqlDataReader reader = buscar.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    empleado.id = reader.GetString(0);
                    empleado.contrasenna = reader.GetString(1);
                    empleado.nombreEmpleado = reader.GetString(2);
                    empleado.rol = reader.GetString(3);

                    empleado.estado = reader.GetBoolean(4);
                }
            }

            if (conexion.State != ConnectionState.Closed)
            {
                conexion.Close();
            }
            return empleado;
        }
        //catch (Exception)
        //{
        //    throw;
        //}
        //}

        public TOCuenta obtenerCuenta(string id)
        {
            //try
            //{
            TOCuenta cuenta = new TOCuenta();
            MySqlCommand buscar = new MySqlCommand("SELECT * FROM cuenta WHERE idcuenta = @id", conexion);
            buscar.Parameters.AddWithValue("@id", id);

            if (conexion.State != ConnectionState.Open)
            {
                conexion.Open();
            }

            MySqlDataReader reader = buscar.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    cuenta.id = reader.GetString(0);
                    cuenta.contrasenna = reader.GetString(1);
                    cuenta.nombreEmpleado = reader.GetString(2);
                    cuenta.rol = reader.GetString(3);

                    cuenta.estado = reader.GetBoolean(4);
                }
            }

            if (conexion.State != ConnectionState.Closed)
            {
                conexion.Close();
            }
            return cuenta;
            //}
            //catch (Exception)
            //{
            //    throw;
            //}

        }

        public void insertarActualizarCuenta(TOCuenta empleado)
        {
            //try
            //{
            string update = "begin tran if exists(select * from cuenta with (updlock, serializable) where idcuenta = @idCuenta) begin update cuenta set contrasenna = @contra, rol = @rol, nombreEmpleado = @nombre, estado = @estado where idcuenta = @idCuenta; end else begin insert into cuenta(idcuenta, contrasenna, nombreEmpleado, rol, estado) values(@idCuenta, @contra, @rol, @nombre, @estado); end commit tran";
            MySqlCommand sentencia = new MySqlCommand(update, conexion);
            sentencia.Parameters.AddWithValue("@idCuenta", empleado.id);
            sentencia.Parameters.AddWithValue("@contra", empleado.contrasenna);
            sentencia.Parameters.AddWithValue("@rol", empleado.rol);
            sentencia.Parameters.AddWithValue("@nombre", empleado.nombreEmpleado);
            sentencia.Parameters.AddWithValue("@estado", empleado.estado);

            if (conexion.State != ConnectionState.Open)
            {
                conexion.Open();
            }

            sentencia.ExecuteNonQuery();

            if (conexion.State != ConnectionState.Closed)
            {
                conexion.Close();
            }
            //}
            //catch (SqlException)
            //{
            //    throw;
            //}
            //catch (Exception)
            //{
            //    throw;
            //}
            //finally
            //{
            //    conexion.Close();
            //}
        }

        public List<TOCuenta> listaCuentas()
        {

            //try
            //{
            string select = "select * from cuenta";
            MySqlCommand sentencia = new MySqlCommand(select, conexion);
            DataTable table = new DataTable();
            MySqlDataAdapter adapter = new MySqlDataAdapter();
            adapter.SelectCommand = sentencia;
            adapter.Fill(table);
            List<TOCuenta> lista = new List<TOCuenta>();

            for (int x = 0; x < table.Rows.Count; x++)
            {
                TOCuenta cuenta = new TOCuenta();
                cuenta.id = Convert.ToString(table.Rows[x]["idcuenta"]);
                cuenta.contrasenna = Convert.ToString(table.Rows[x]["contrasenna"]);
                cuenta.rol = Convert.ToString(table.Rows[x]["nombreEmpleado"]);
                cuenta.nombreEmpleado = Convert.ToString(table.Rows[x]["rol"]);
                cuenta.estado = Convert.ToBoolean(table.Rows[x]["estado"]);
                lista.Add(cuenta);
            }

            return lista;
            //    }
            //    catch (SqlException)
            //    {
            //        throw;
            //    }
            //    catch (Exception)
            //    {
            //        throw;
            //    }
            //    finally
            //    {
            //        conexion.Close();
            //    }

        }
    }
}
