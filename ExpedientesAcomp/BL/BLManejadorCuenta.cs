using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using TO;

namespace BL
{
    public class BLManejadorCuenta
    {
        public BLCuenta buscarCuenta(string idCuenta, string contra)
        {
            //try
            //{
                DAOCuenta daoCuent = new DAOCuenta();
                TOCuenta cuentaTO = daoCuent.buscarCuenta(idCuenta, contra);
                if (cuentaTO == null)
                {
                    return null;
                }
            return convert(cuentaTO);
            }
            //catch (Exception)
            //{
            //    throw;
            //}
        //}

        public BLCuenta obtenerCuenta(string idCuenta)
        {
            //try
            //{
                DAOCuenta daoCuenta = new DAOCuenta();
                TOCuenta empleadoTO = daoCuenta.obtenerCuenta(idCuenta);
                //if (empleadoTO == null)
                //{
                //    return null;
                //}


                return convert(empleadoTO);
            //}
            //catch (Exception)
            //{
            //    throw;
            //}
        }

        public void crearActualizarCuenta(BLCuenta cuenta)
        {
            DAOCuenta dao = new DAOCuenta();
            //try
            //{
                dao.insertarActualizarCuenta(convert(cuenta));
            //}
            //catch (Exception)
            //{
            //    throw;
            //}

        }

        public List<BLCuenta> listaCuentas()
        {
            //try
            //{
                DAOCuenta dao = new DAOCuenta();
                List<TOCuenta> listaTO = dao.listaCuentas();
                List<BLCuenta> listaBL = new List<BLCuenta>();
                foreach (TOCuenta consulta in listaTO)
                {
                    listaBL.Add(convert(consulta));
                }
                return listaBL;
            //}
            //catch (Exception)
            //{
            //    throw;
            //}

        }



        private TOCuenta convert(BLCuenta cuenta)
        {
            return new TOCuenta(cuenta.id, cuenta.contrasenna, cuenta.rol, cuenta.nombreEmpleado, cuenta.estado);
        }

        private BLCuenta convert(TOCuenta cuenta)
        {
            return new BLCuenta(cuenta.id, cuenta.contrasenna, cuenta.rol, cuenta.nombreEmpleado, cuenta.estado);
        }

    }
}
