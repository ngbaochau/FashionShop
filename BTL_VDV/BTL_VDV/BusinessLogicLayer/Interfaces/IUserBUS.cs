﻿using DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
    public partial interface IUserBUS
    {
        UserModel Login(string taikhoan, string matkhau);
        bool Create(UserModel model);
        public List<ChiTietTaiKhoanModel> GetChiTietTaiKhoan(int MaTaiKhoan);
    }
}
