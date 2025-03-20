﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModel
{
    public class ThongKeKhachModel
    {
        public int MaSanPham { get; set; }
        public string TenSanPham { get; set; }
        public int SoLuong { get; set; }
        public decimal TongGia { get; set; }
        public DateTime? NgayTao { get; set; }
        public int MaKH { get; set; }
        public string TenKH {  get; set; }
        public string DiaChi {  get; set; }

        public string SDT { get; set; }
        public string TongMua { get; set; }
    }
}
