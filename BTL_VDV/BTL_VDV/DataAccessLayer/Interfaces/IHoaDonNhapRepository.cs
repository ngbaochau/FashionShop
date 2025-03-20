﻿using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public partial interface IHoaDonNhapRepository
    {
        bool Create(HoaDonNhapModel model);
        public List<HoaDonNhapModel> Search(int pageIndex, int pageSize, out long total);
        List<CTHDN_GetID_Model> CTHDN_Get_List_ByID(int id);
        bool Delete(int ID);
    }
}
