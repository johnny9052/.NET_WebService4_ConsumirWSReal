using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void LlamarWebService(object sender, EventArgs e)
        {
            ServiceReferenceWeather.WeatherSoapClient cliente = new
                ServiceReferenceWeather.WeatherSoapClient("WeatherSoap");//Nombre del WS en el config

            ServiceReferenceWeather.WeatherReturn resultado = cliente.GetCityWeatherByZIP(txtCodigo.Text);

            lblRespuesta.Text = resultado.City + " - " + resultado.Description + " - " +
                                resultado.RelativeHumidity;
        }
    }
}