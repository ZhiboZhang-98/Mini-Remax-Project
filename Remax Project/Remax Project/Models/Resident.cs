using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Remax_Project.DataAccess;

namespace Remax_Project.Models
{
    public class Resident
    {
        public int ResidentId { get; set; }
        public string ResidentName { get; set; }
        public string ResidentAddress { get; set; }
        public string Region { get; set; }
        public string City { get; set; }
        public float Price { get; set; }
        public int Room { get; set; }
        public int Bathroom { get; set; }
        public string Garage { get; set; }
        public string Pool { get; set; }
        public string Fireplace { get; set; }
        public byte[] Image { get; set; }

        public bool SaveResident(Resident resident)
        {
            return ResidentDB.SaveResident(resident);
        }
        public bool UpdateResident(Resident resident)
        {
            return ResidentDB.UpdateResident(resident);
        }
        public void DeleteResident(int id)
        {
            ResidentDB.DeleteResident(id);
        }
        public string FindResident(string region, string city, string price, string room, string bathroom, string garage, string pool, string fireplace)
        {
            return ResidentDB.FindResident(region, city, price, room, bathroom, garage, pool, fireplace);
        }
    }
}