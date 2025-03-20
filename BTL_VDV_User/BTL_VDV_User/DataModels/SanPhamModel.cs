﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModels
{
    public class SanPhamModel
    {
        public int MaSanPham { get; set; }
        public int MaChuyenMuc { get; set; }
        //public string tenchuyenmuc { get; set; }
        public string TenSanPham { get; set; }
        public string AnhDaiDien { get; set; }
        public decimal Gia { get; set; }
        public decimal GiaGiam { get; set; }
        public int SoLuong { get; set; }
        public bool TrangThai { get; set;}
        public int LuotXem { get; set; }
        public int MaSize { get; set; }
        public string TenSize { get; set; }

        public int SoLuongBan { get; set; }
    }
}
