﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class UserModel
    {
        public int MaTaiKhoan { get; set; }
        public int LoaiTaiKhoan { get; set; }
        public string TenTaiKhoan { get; set; }
        public string MatKhau { get; set; } 
        public string Email {  get; set; }
        public string token { get; set; }

        public string TenKH { get; set; }
        public string DiaChi { get; set; }
        public string SDT { get; set; }

      
    }
}
