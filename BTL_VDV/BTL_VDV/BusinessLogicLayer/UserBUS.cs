﻿using BusinessLogicLayer;
using DataAccessLayer;
using DataModel;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Net.Sockets;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;




namespace BusinessLogicLayer
{
    public class UserBUS:IUserBUS
    {
        private IUserRepository res;
        private string secret;
        public UserBUS(IUserRepository res, IConfiguration configuration)
        {
            this.res = res;
            secret = configuration["AppSettings:Secret"];
        }

        public UserModel Login(string taikhoan, string matkhau)
        {
            var user = res.Login(taikhoan, matkhau);
            if (user == null)
                return null;
            var tokenHandler = new JwtSecurityTokenHandler();
         
            var key = Encoding.ASCII.GetBytes(secret);
           
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new Claim[]
                {
                    new Claim(ClaimTypes.Name, user.TenTaiKhoan.ToString()),
                    new Claim(ClaimTypes.StreetAddress, user.Email)
                }),
                Expires = DateTime.UtcNow.AddDays(7),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.Aes128CbcHmacSha256)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            user.token = tokenHandler.WriteToken(token);
            return user;
        }

        public bool Create(UserModel model)
        {
            return res.Create(model);
        }
        public List<ChiTietTaiKhoanModel> GetChiTietTaiKhoan(int MaTaiKhoan)
        {
            return res.GetChiTietTaiKhoan(MaTaiKhoan);
        }
    }
}
