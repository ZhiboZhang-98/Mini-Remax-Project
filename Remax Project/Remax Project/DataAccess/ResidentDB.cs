using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using Remax_Project.Models;
using System.Data.SqlClient;
using System.Data;

namespace Remax_Project.DataAccess
{
    public static class ResidentDB
    {
        public static string cn = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;

        public static bool SaveResident(Resident resident)
        {
            bool result = true;
            try
            {
                using (SqlConnection con = new SqlConnection(cn))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = string.Format("insert into Resident (ResidentName , ResidentAddress, Region , City, Price, Room, Bathroom, Garage, Pool, Fireplace, Image) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}',CONVERT(varbinary(max), '{8}', 0))",
                    resident.ResidentName, resident.ResidentAddress, resident.Region, resident.City, resident.Price, resident.Room, resident.Bathroom, resident.Garage, resident.Pool, resident.Fireplace, resident.Image);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                //var j = ex.Message;
                result = false;
                //throw;
            }
            return result;

        }
        public static bool UpdateResident(Resident resident)
        {
            bool result = true;
            try
            {
                using (SqlConnection con = new SqlConnection(cn))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "Update Resident " +
                                      "SET ResidentName = '" + resident.ResidentName
                                      + "', ResidentAddress = '" + resident.ResidentAddress
                                      + "', Region = '" + resident.Region
                                      + "', City = '" + resident.City
                                      + "', Price = " + resident.Price
                                      + ", Room = " + resident.Room
                                      + ", Bathroom = " + resident.Bathroom
                                      + ", Garage = '" + resident.Garage
                                      + "', Pool = '" + resident.Pool
                                      + "', Fireplace = '" + resident.Fireplace
                                      + "', Image = CONVERT(varbinary(max), '" + resident.Image + "', 0)" +
                                      " WHERE ResidentId=" + resident.ResidentId;
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
                result = false;
                throw;
            }
            return result;
        }
        public static void DeleteResident(int id)
        {
            using (SqlConnection con = new SqlConnection(cn))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "DELETE from Resident WHERE ResidentId = " + id;
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static string FindResident(string Region, string City, string Price, string Room, string Bathroom, string Garage, string Pool, string Fireplace)
        {
            string temp = "";
            string res = "";
            using (SqlConnection con = new SqlConnection(cn))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT * from Resident " +
                    "WHERE Region = '" + Region +
                    "' AND City = '" + City +
                    "' AND Price " + Price +
                    " AND Room " + Room +
                    " AND Bathroom " + Bathroom +
                    " AND Garage = '" + Garage +
                    "' AND Pool = '" + Pool +
                    "' AND Fireplace = '" + Fireplace + "' ";
                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    int residentId = Convert.ToInt32(reader["ResidentId"]);
                    string region = reader["Region"].ToString();
                    string city = reader["City"].ToString();
                    //int price = Convert.ToInt32(reader["Price"]);
                    float price = (float)Convert.ToDouble(reader["Price"]);
                    int room = Convert.ToInt32(reader["Room"]);
                    int bathroom = Convert.ToInt32(reader["Bathroom"]);
                    string garage = reader["Garage"].ToString();
                    string pool = reader["Pool"].ToString();
                    string fireplace = reader["Fireplace"].ToString();
                    byte[] imagebyte = (byte[])reader["Image"];

                    temp += "<div class='col-lg-4 col-md-6'> ";
                    temp += "<article class='ad clearfix'>";
                    temp += "<figure class='feature-image'>";
                    temp += "<a class='clearfix'> <img src = data:image/png;base64, " + Convert.ToBase64String(imagebyte) + " alt='Property Image'></a>";
                    temp += "</figure>";
                    temp += "<div class='ad-contents'>";
                    temp += "<header class='property-header clearfix'>";
                    temp += "<div class='pull-left'>";
                    temp += "<h6 class='entry-title'><a>" + city + ", " + region + "      ID: " + residentId + "</a></h6>";
                    temp += "<span class='property-location'>pools: " + pool + "    firplace: "
                        + fireplace + "    garage: " + garage + "</span>";
                    temp += "</div>";
                    temp += "</header>";
                    temp += "<div class='ad-meta clearfix'>";
                    temp += "<span> Price: </span>";
                    temp += "<span>" + price + "</span>";
                    temp += "<span> Bedroom: </span>";
                    temp += "<span>" + room + "</span>";
                    temp += "<span> Bathroom: </span>";
                    temp += "<span>" + bathroom + "</span>";
                    temp += "</div>";
                    temp += "</div>";
                    temp += "</article>";
                    temp += "</div>";

                }
                else
                {
                    temp = "Data not found";
                }

                reader.Close();
                return temp;
                
            }

        }
    }
}