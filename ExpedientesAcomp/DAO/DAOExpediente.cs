using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using TO;
using MySql.Data.MySqlClient;

namespace DAO
{
    public class DAOExpediente
    {

        MySqlConnection conexion = new MySqlConnection(Properties.Settings.Default.conection);
        //MySqlConnection conexion = new MySqlConnection(Properties.Settings.Default.connectionStringJ);


        public void actualizarInsertarExpediente(TOExpediente exped)
        {

            //try
            //{
            string update = "begin tran if exists (select * from expediente with (updlock, serializable) where idExpediente = @id) begin update expediente set cedula = @cedula, primerNombre = @nombre1, segundoNombre = @nombre2, primerApellido = @apellido1, segundoApellido = @apellido2, fechaNacimiento = @fecha_nacimiento, numTelefono = @numero_telefono, celular = @cel, otroTelefono = @otroTel, estadoCivil = @estado_civil, ocupacion = @ocupacion, sexo = @sexo, domicilio = @domicilio, fechaIngreso = @fecIngreso, correo = @correo, nombreContacto = @contacto, parentezcoContacto = @parentezco, telefContacto1 = @telContact1, telefContacto2 = @telContact2, estado = @estado, Encamado = @encamado, serviciosRecibe = @servicios where idExpediente = @id; end else begin insert into expediente(cedula, primerNombre, segundoNombre, primerApellido, segundoApellido, fechaNacimiento, numTelefono, celular, otroTelefono, estadoCivil, ocupacion, sexo, domicilio, fechaIngreso, correo, nombreContacto, parentezcoContacto, telefContacto1, telefContacto2, estado, Encamado, serviciosRecibe) values(@cedula, @nombre1, @nombre2, @apellido1, @apellido2, @fecha_nacimiento, @numero_telefono, @cel, @otroTel, @estado_civil, @ocupacion, @sexo, @domicilio, @fecIngreso, @correo, @contacto, @parentezco, @telContact1, @telContact2, @estado, @encamado, @servicios); end commit tran;";

            MySqlCommand sentencia = new MySqlCommand(update, conexion);
            sentencia.Parameters.AddWithValue("@id", exped.numExpediente);
            sentencia.Parameters.AddWithValue("@cedula", exped.cedula);
            sentencia.Parameters.AddWithValue("@nombre1", exped.primer_nombre);
            sentencia.Parameters.AddWithValue("@nombre2", exped.segundo_nombre);
            sentencia.Parameters.AddWithValue("@apellido1", exped.primer_apellido);
            sentencia.Parameters.AddWithValue("@apellido2", exped.segundo_apellido);
            sentencia.Parameters.AddWithValue("@fecha_nacimiento", exped.fecha_nacimiento);
            sentencia.Parameters.AddWithValue("@numero_telefono", exped.num_telefono);
            sentencia.Parameters.AddWithValue("@cel", exped.celular);
            sentencia.Parameters.AddWithValue("@otroTel", exped.otro_telefono);
            sentencia.Parameters.AddWithValue("@estado_civil", exped.estado_civil);
            sentencia.Parameters.AddWithValue("@ocupacion", exped.ocupacion);
            sentencia.Parameters.AddWithValue("@sexo", exped.sexo);
            sentencia.Parameters.AddWithValue("@domicilio", exped.domicilio);
            sentencia.Parameters.AddWithValue("@fecIngreso", exped.FechaIngreso);
            sentencia.Parameters.AddWithValue("@correo", exped.correo);
            sentencia.Parameters.AddWithValue("@contacto", exped.nombreContacto);
            sentencia.Parameters.AddWithValue("@parentezco", exped.parentezcoContacto);
            sentencia.Parameters.AddWithValue("@telContact1", exped.telefContact1);
            sentencia.Parameters.AddWithValue("@telContact2", exped.telefContact2);
            sentencia.Parameters.AddWithValue("@estado", exped.estado);
            sentencia.Parameters.AddWithValue("@encamado", exped.encamado);
            sentencia.Parameters.AddWithValue("@servicios", exped.serviciosRecibe);

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
            //}
        }

        public TOExpediente consultarExpediente(int idExpediente)
        {
            //try
            //{
            TOExpediente to = new TOExpediente();

            string select = "select * from expediente where idExpediente = @id;";
            MySqlCommand sentencia = new MySqlCommand(select, conexion);
            sentencia.Parameters.AddWithValue("@id", idExpediente);

            if (conexion.State != ConnectionState.Open)
            {
                conexion.Open();
            }

            MySqlDataReader reader = sentencia.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    to.numExpediente = reader.GetInt32(0);
                    to.cedula = reader.GetString(1);
                    to.primer_nombre = reader.GetString(2);
                    to.segundo_nombre = reader.GetString(3);
                    to.primer_apellido = reader.GetString(4);
                    to.segundo_apellido = reader.GetString(5);
                    to.fecha_nacimiento = reader.GetDateTime(6);
                    to.num_telefono = reader.GetString(7);
                    to.celular = reader.GetString(8);
                    to.otro_telefono = reader.GetString(9);
                    to.estado_civil = reader.GetString(10);
                    to.ocupacion = reader.GetString(11);
                    to.sexo = reader.GetString(12);
                    to.domicilio = reader.GetString(13);
                    to.FechaIngreso = reader.GetDateTime(14);
                    to.correo = reader.GetString(15);
                    to.nombreContacto = reader.GetString(16);
                    to.parentezcoContacto = reader.GetString(17);
                    to.telefContact1 = reader.GetString(18);
                    to.telefContact2 = reader.GetString(19);
                    to.estado = reader.GetString(20);
                    to.encamado = reader.GetBoolean(21);
                    to.serviciosRecibe = reader.GetString(22);
                }
            }

            if (conexion.State != ConnectionState.Closed)
            {
                conexion.Close();
            }
            return to;
        }
        //    catch (Exception)
        //    {
        //        throw;
        //    }
        //    finally
        //    {
        //        conexion.Close();
        //    }
        //}


        //Retorna un código HTML completo con todos los expedientes en el sistema
        public StringBuilder cargarDatosPrincipalesExpedientes()
        {
            string query = "select idExpediente, cedula, primerNombre, segundoNombre, primerApellido, segundoApellido," +
                    "nombreContacto from expediente";
            MySqlCommand command = new MySqlCommand(query, conexion);

            if (conexion.State != ConnectionState.Open)
            {
                conexion.Open();
            }

            MySqlDataReader reader = command.ExecuteReader();
            StringBuilder table = new StringBuilder();
            table.Append("<div class='container'><div class='row'><div class='col-md-12'><table id='tablaIndex' class='table table-hover table-striped'>");
            table.Append("<thead><tr><th>Cédula</th><th>Nombre</th><th>Contacto Emergencia</th><th><center>Opciones</center></th></tr></thead>");
            table.Append("<tbody class='tb'>");
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    table.Append("<tr>");
                    //Cédula
                    table.Append("<td class='size'>" + reader.GetString(1) + "</td>");
                    //Nombre
                    table.Append("<td class='size'>" + reader.GetString(2) + " " + reader.GetString(3) + " " + reader.GetString(4) + " " + reader.GetString(5) + "</td>");
                    //Contacto emergencia
                    table.Append("<td class='size'>" + reader.GetString(6) + "</td>");
                    //Opciones
                    table.Append("<td><center><a class='btn btn-primary' href='ExpedientePrincipal.aspx?id=" + reader.GetInt32(0) + "'><i class='fa fa-eye'></i>&nbsp Ver</a>");
                    table.Append("&nbsp&nbsp<a class='btn btn-success' href=''><i class='fas fa-pencil-alt'></i>&nbsp Editar</a>");
                    table.Append("</center></td>");

                    table.Append("</tr>");
                }
            }
            table.Append("</tbody></table></div></div></div>");

            if (conexion.State != ConnectionState.Closed)
            {
                conexion.Close();
            }
            return table;
        }

    }
}
