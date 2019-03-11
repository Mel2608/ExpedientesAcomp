using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using TO;
using MySql.Data.MySqlClient;

namespace DAO
{
    public class DAOHistorialClinico
    {

        MySqlConnection conexion = new MySqlConnection(Properties.Settings.Default.conection);

        public void actualizarInsertarHistorial(TOHistorialClinico hist)
        {

            //try
            //{
            string update = "begin tran if exists (select * from historialclinico with (updlock, serializable) where idExpediente = @id) begin update expediente set idHistorialClinico = @idHistorial, HTA = @HTA, h_TA = @h_TA, tabaco = @tabaco, cardiopatias = @cardio, alergias = @alergias, DM = @DM, alcohol = @alcohol, AIU = @AIU, cancer = @cancer, neuropatias = @neuro, drogas = @drogas, otrasPatologPerson = @otrsaPersonPatolog, HTA_Fam = @HTA_Fam, h_ta_Fam = @h_TA_Fam, cardiopatias_Fam = @cardioFam, neuropatias_Fam = @neuroFam, otrosHeredo_Fam = @otrosHeredoFam, edad = @edad, trabajo = @trabajo, heredoFam = @heredoFam, otrosPredisponent = @otrosPredisp, farmacosUtilizados = @farmacosUtilizados, grupoSanguineo = @sangre where idExpediente = @id; end else begin insert into historialclinico(idExpediente, HTA, h_TA, tabaco, cardiopatias, alergias, DM, alcohol, AIU, cancer, neuropatias, drogas, otrosPatologPerson, HTA_Fam, h_TA_Fam, cardiopatias_Fam, DM_Fam, cancer_Fam, neuropatias_Fam, otrosHeredo_Fam, edad, trabajo, heredoFam, otrosPredisponent, farmacosUtilizados, grupoSanguineo) values(@id, @HTA, @h_TA, @tabaco, @cardio, @alergias, @DM, @alcohol, @AIU, @cancer, @neuro, @drogas, @otrsaPersonPatolog, @HTA_Fam, @h_TA_Fam, @cardioFam, @neuroFam, @otrosHeredoFam, @edad, @trabajo, @heredoFam, @otrosPredisp,  @farmacosUtilizados, @sangre); end commit tran;";
            MySqlCommand sentencia = new MySqlCommand(update, conexion);
            sentencia.Parameters.AddWithValue("@id", hist.idExpediente);
            sentencia.Parameters.AddWithValue("@HTA", hist.HTA);
            sentencia.Parameters.AddWithValue("@h_TA", hist.hTA);
            sentencia.Parameters.AddWithValue("@tabaco", hist.tabaco);
            sentencia.Parameters.AddWithValue("@cardio", hist.cardiopatias);
            sentencia.Parameters.AddWithValue("@alergias", hist.alergias);
            sentencia.Parameters.AddWithValue("@DM", hist.DM);
            sentencia.Parameters.AddWithValue("@alcohol", hist.alcohol);
            sentencia.Parameters.AddWithValue("@AIU", hist.AIU);
            sentencia.Parameters.AddWithValue("@cancer", hist.cancer);
            sentencia.Parameters.AddWithValue("@neuro", hist.neuropatias);
            sentencia.Parameters.AddWithValue("@drogas", hist.drogas);
            sentencia.Parameters.AddWithValue("@otrsaPersonPatolog", hist.otrosPatologPerson);
            sentencia.Parameters.AddWithValue("@HTA_Fam", hist.HTA_Fam);
            sentencia.Parameters.AddWithValue("@h_TA_Fam", hist.hTA_Fam);
            sentencia.Parameters.AddWithValue("@cardioFam", hist.cardiopatias_Fam);
            sentencia.Parameters.AddWithValue("@neuroFam", hist.neuropatias_Fam);
            sentencia.Parameters.AddWithValue("@otrosHeredoFam", hist.otrosHeredoFam);
            sentencia.Parameters.AddWithValue("@edad", hist.edad);
            sentencia.Parameters.AddWithValue("@trabajo", hist.trabajo);
            sentencia.Parameters.AddWithValue("@heredoFam", hist.heredofamiliares);
            sentencia.Parameters.AddWithValue("@otrosPredisp", hist.otros_Predisponentes);
            sentencia.Parameters.AddWithValue("@farmacosUtilizados", hist.farmacos_utilizados);
            sentencia.Parameters.AddWithValue("@sangre", hist.grupoSanguineo);

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




        public TOHistorialClinico consultarHistorialClinico(int idExpediente)
        {
            TOHistorialClinico to = new TOHistorialClinico();

            string select = "select * from historialclinico where idExpediente = @id;";
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
                    to.id_Historial = reader.GetInt32(0);
                    to.idExpediente = reader.GetInt32(1);
                    to.HTA = reader.GetBoolean(2);
                    to.hTA = reader.GetBoolean(3);
                    to.tabaco = reader.GetBoolean(4);
                    to.cardiopatias = reader.GetBoolean(5);
                    to.alergias = reader.GetBoolean(6);
                    to.DM = reader.GetBoolean(7);
                    to.alcohol = reader.GetBoolean(8);
                    to.AIU = reader.GetBoolean(9);
                    to.cancer = reader.GetBoolean(10);
                    to.neuropatias = reader.GetBoolean(11);
                    to.drogas = reader.GetBoolean(12);
                    to.otrosPatologPerson = reader.GetString(13);
                    to.HTA_Fam = reader.GetBoolean(14);
                    to.hTA_Fam = reader.GetBoolean(15);
                    to.cardiopatias_Fam = reader.GetBoolean(16);
                    to.DM_Fam = reader.GetBoolean(17);
                    to.cancer_Fam = reader.GetBoolean(18);
                    to.neuropatias_Fam = reader.GetBoolean(19);
                    to.otrosHeredoFam = reader.GetString(20);
                    to.edad = reader.GetBoolean(21);
                    to.trabajo = reader.GetBoolean(22);
                    to.heredofamiliares = reader.GetBoolean(23);
                    to.otros_Predisponentes = reader.GetString(24);
                    to.farmacos_utilizados = reader.GetString(25);
                    to.grupoSanguineo = reader.GetString(26);
                }
            }

            if (conexion.State != ConnectionState.Closed)
            {
                conexion.Close();
            }
            return to;
        }
    }
}


