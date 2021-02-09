using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Remax_Project.Models;

namespace Remax_Project.Presentation
{
    public partial class ClientPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Resident resident = new Resident();

                string region = DropDownListRegions.Text;
                string city = DropDownListCities.Text;
                string room = DropDownListNumOfRooms.Text;
                string bathroom = DropDownListNumOfBathrooms.Text;
                string price = DropDownListPrice.Text;

                string pool = "No";
                if (!RadioButtonPNo.Checked)
                {
                    pool = "Yes";
                }

                string garage = "No";
                if (!RadioButtonGNo.Checked)
                {
                    garage = "Yes";
                }

                string fireplace = "No";
                if (!RadioButtonFPNo.Checked)
                {
                    fireplace = "Yes";
                }

                string temp = "";

                temp = resident.FindResident(region, city, price, room, bathroom, garage, pool, fireplace);
                LabelResults.Text = temp;
            }
        }

        protected void ButtonReset_Click(object sender, EventArgs e)
        {
            DropDownListRegions.SelectedIndex = 0;
            DropDownListCities.SelectedIndex = 0;
            DropDownListPrice.SelectedIndex = 0;
            DropDownListNumOfRooms.SelectedIndex = 0;
            DropDownListNumOfBathrooms.SelectedIndex = 0;
            RadioButtonFPNo.Checked = false;
            RadioButtonFPYes.Checked = false;
            RadioButtonGNo.Checked = false;
            RadioButtonGYes.Checked = false;
            RadioButtonPNo.Checked = false;
            RadioButtonPYes.Checked = false;
        }
    }
}