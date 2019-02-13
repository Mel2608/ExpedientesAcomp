using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class BLNutricion
    {
        public string cedula { get; set; }
        public int idNutricion { get; set; }
        public double pesoResultado { get; set; }
        public string pesoEvaluacion { get; set; }
        public double tallaResultado { get; set; }
        public string tallaevaluacion { get; set; }
        public double IMCResultado { get; set; }
        public string IMCevaluacion { get; set; }
        public double pesoIdealResultado { get; set; }
        public string pesoIdealevaluacion { get; set; }
        public string APP { get; set; }
        public string AHF { get; set; }
        public string medicamentos { get; set; }
        public string cirugias { get; set; }
        //28 más atributos de la tabla de consumo usual que hay que ver como poner en una tabla o como acomodarlo
        public bool alimentoNoGuste { get; set; }
        public string alimentoNoGusteCual { get; set; }
        public string alimentoNoGustePorque { get; set; }
        public string alimentPreferidos { get; set; }
        public bool tomaAgua { get; set; }
        public double vasosAlDia { get; set; }
        //otra tabla, creo que podría ser con checks en una tabla pero no sé si se puede 
        public bool productLight { get; set; }
        public string productLightCual { get; set; }
        public string productLightPorque { get; set; }
        public string alimentCaenMal { get; set; }
        public string alimentCaenMalPorque { get; set; }
        public bool tomaLicor { get; set; }
        public string tomaLicorCuantasSemana { get; set; }
        public string tomaLicorTipoCantidad { get; set; }
        public bool fuma { get; set; }
        public string fumaCuantasSemana { get; set; }
        public bool actividadFisica { get; set; }
        public string activFisicaFrecuencia { get; set; }
        public string activFisicaTipoActividad { get; set; }
        public string DX_Nutricional { get; set; }
        public int REE { get; set; }
        public string recomendacionesNutricionales { get; set; }




    }
}
