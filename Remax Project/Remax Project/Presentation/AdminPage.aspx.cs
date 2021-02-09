using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Remax_Project.Models;

namespace Remax_Project.Presentation
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem regi0 = new ListItem(String.Empty);
                ListItem regi1 = new ListItem("Near shopping center");
                ListItem regi2 = new ListItem("Commuter-Towns");
                ListItem regi3 = new ListItem("CBD");
                ListItem regi4 = new ListItem("Near downtown");
                ListItem regi5 = new ListItem("Metro station");
                ListItem regi6 = new ListItem("Suburban");

                DropDownListRegions.Items.Add(regi0);
                DropDownListRegions.Items.Add(regi1);
                DropDownListRegions.Items.Add(regi2);
                DropDownListRegions.Items.Add(regi3);
                DropDownListRegions.Items.Add(regi4);
                DropDownListRegions.Items.Add(regi5);
                DropDownListRegions.Items.Add(regi6);

                ListItem city0 = new ListItem(String.Empty);
                ListItem city1 = new ListItem("Toronto");
                ListItem city2 = new ListItem("Montreal");
                ListItem city3 = new ListItem("Vancouver");
                ListItem city4 = new ListItem("Quebec City");
                ListItem city5 = new ListItem("London");
                ListItem city6 = new ListItem("Kitchener");

                DropDownListCities.Items.Add(city0);
                DropDownListCities.Items.Add(city1);
                DropDownListCities.Items.Add(city2);
                DropDownListCities.Items.Add(city3);
                DropDownListCities.Items.Add(city4);
                DropDownListCities.Items.Add(city5);
                DropDownListCities.Items.Add(city6);
            }
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Resident resident = new Resident();

                resident.ResidentName = TextBoxResidentName.Text;
                resident.ResidentAddress = TextBoxResidentAddress.Text;
                resident.Region = DropDownListRegions.SelectedItem.Text;
                resident.City = DropDownListCities.SelectedItem.Text;
                resident.Price = (float)Convert.ToDouble(TextBoxPrice.Text);
                resident.Room = Convert.ToInt32(TextBoxNumOfRoom.Text);
                resident.Bathroom = Convert.ToInt32(TextBoxNumOfBathroom.Text);

                resident.Garage = "No";
                if (!RadioButtonGNo.Checked)
                {
                    resident.Garage = "Yes";
                }

                resident.Pool = "No";
                if (!RadioButtonPNo.Checked)
                {
                    resident.Pool = "Yes";
                }

                resident.Fireplace = "No";
                if (!RadioButtonFPNo.Checked)
                {
                    resident.Fireplace = "Yes";
                }

                resident.Image = FileUploadImage.FileBytes;

                if (resident.SaveResident(resident))
                {
                    string script = "alert(\"Data has saved successfully!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
                else
                {
                    string script = "alert(\"Data has not saved successfully!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }

            }
            else
            {
                string script = "alert(\"Validation was failed!\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Resident resident = new Resident();

                resident.ResidentName = TextBoxResidentName.Text;
                resident.ResidentAddress = TextBoxResidentAddress.Text;
                resident.Region = DropDownListRegions.SelectedItem.Text;
                resident.City = DropDownListCities.SelectedItem.Text;
                resident.Price = (float)Convert.ToDouble(TextBoxPrice.Text);
                resident.Room = Convert.ToInt32(TextBoxNumOfRoom.Text);
                resident.Bathroom = Convert.ToInt32(TextBoxNumOfBathroom.Text);

                resident.Garage = "No";
                if (!RadioButtonGNo.Checked)
                {
                    resident.Garage = "Yes";
                }

                resident.Pool = "No";
                if (!RadioButtonPNo.Checked)
                {
                    resident.Pool = "Yes";
                }

                resident.Fireplace = "No";
                if (!RadioButtonFPNo.Checked)
                {
                    resident.Fireplace = "Yes";
                }

                resident.Image = FileUploadImage.FileBytes;

                resident.ResidentId = Convert.ToInt32(TextBoxResidentId.Text);

                bool result = resident.UpdateResident(resident);
                if (result)
                {
                    string script = "alert(\"Update Successfully!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
                else
                {
                    string script = "alert(\"Update Unsuccessfully!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }
            }
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Resident resident = new Resident();
                int id = Convert.ToInt32(TextBoxResidentId.Text);

                if (id != null)
                {
                    resident.DeleteResident(id);
                    string script = "alert(\"Delete Unsuccessfully!\");";
                    ScriptManager.RegisterStartupScript(this, GetType(),
                                          "ServerControlScript", script, true);
                }

            }
        }
    }
}