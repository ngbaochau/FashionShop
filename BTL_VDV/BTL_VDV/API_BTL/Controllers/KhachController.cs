﻿using System;
using DataModel;
using BusinessLogicLayer;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
namespace API_BTL.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class KhachController : ControllerBase
    {
       
        private IKhachBusiness _khachBusiness;
        private string _path;
        private IWebHostEnvironment _env;

        public KhachController(IKhachBusiness khachBusiness, IConfiguration configuration, IWebHostEnvironment env)
        {
            this._khachBusiness = khachBusiness;
            _path = configuration["AppSettings:PATH"];
            _env = env;
        }
        [NonAction]
        public string CreatePathFile(string RelativePathFileName)
        {
            try
            {
                string serverRootPathFolder = _path;
                string fullPathFile = $@"{serverRootPathFolder}\{RelativePathFileName}";
                string fullPathFolder = System.IO.Path.GetDirectoryName(fullPathFile);
                if (!Directory.Exists(fullPathFolder))
                    Directory.CreateDirectory(fullPathFolder);
                return fullPathFile;
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        //[Route("upload")]
        //[HttpPost, DisableRequestSizeLimit]
        //public async Task<IActionResult> Upload(IFormFile file)
        //{
        //    try
        //    {
        //        if (file.Length > 0)
        //        {
        //            string filePath = $"upload/{file.FileName}";
        //            var fullPath = CreatePathFile(filePath);
        //            using (var fileStream = new FileStream(fullPath, FileMode.Create))
        //            {
        //                await file.CopyToAsync(fileStream);
        //            }
        //            return Ok(new { filePath });
        //        }
        //        else
        //        {
        //            return BadRequest();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return StatusCode(500, "Không tìm thây");
        //    }
        //}

        //[Route("download")]
        //[HttpPost]
        //public IActionResult DownloadData([FromBody] Dictionary<string, object> formData)
        //{
        //    try
        //    {
        //        var webRoot = _env.ContentRootPath;
        //        string exportPath = Path.Combine(webRoot + @"\Export\DM.xlsx");
        //        var stream = new FileStream(exportPath, FileMode.Open, FileAccess.Read);
        //        return File(stream, "application/octet-stream");
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}

       
        [Route("get_by_id")]
        [HttpGet]
        public KhachModel GetAtabeyID(int id)
        {
            return _khachBusiness.GetDatabyID(id);
        }


        [Route("Create")]
        [HttpPost]
        public KhachModel CreateItem([FromBody] KhachModel model)
        {
            _khachBusiness.Create(model);
            return model;
        }

        [Route("Update_KH")]
        [HttpPost]
        public KhachModel UpdateKH(KhachModel model)
        {
            _khachBusiness.Update(model);   
            return model;
        }
        [Route("Delete_KH")]
        [HttpDelete]
        public IActionResult DeleteKH(int id)
        {
            _khachBusiness.Delete(id);
            return Ok();
        }

       
        [Route("search")]
        [HttpPost]
        public IActionResult SearchKH([FromBody] Dictionary<string, object> formData)
        {
            var response = new KhachModel();
            try
            {
                var page = int.Parse(formData["page"].ToString());
                var pageSize = int.Parse(formData["pageSize"].ToString());
                int MaTK = 0;
                if (formData.ContainsKey("MaTaiKhoan") && !string.IsNullOrEmpty(formData["MaTaiKhoan"].ToString()))
                {
                    if (int.TryParse(formData["MaTaiKhoan"].ToString(), out int mcm))
                    {
                        MaTK = mcm;
                    }
                }
                string TenKhach = "";
                if (formData.Keys.Contains("TenKhach") && !string.IsNullOrEmpty(Convert.ToString(formData["TenKhach"]))) { TenKhach = Convert.ToString(formData["TenKhach"]); }
                string DiaChi = "";
                if (formData.Keys.Contains("DiaChi") && !string.IsNullOrEmpty(Convert.ToString(formData["DiaChi"]))) { DiaChi = Convert.ToString(formData["DiaChi"]); }
                long total = 0;
                var data = _khachBusiness.SearchKH(page, pageSize, out total, TenKhach, DiaChi, MaTK);
                return Ok(
                    new
                    {
                        TotalItems = total,
                        Data = data,
                        Page = page,
                        PageSize = pageSize
                    }
                    );
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

    }
}
