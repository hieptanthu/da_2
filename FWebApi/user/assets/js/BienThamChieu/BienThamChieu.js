const sanPham ={
    "idDonHang": 0,
    "idSanPham": 0,
    "soLuong": 0,
    "giaTien": 0
  }


const DiaChi ={
  "id": 0,
  "thanhPho": "string",
  "huyen": "string",
  "xa": "string",
  "giChu": "string",
  "idTaiKhoan": 0,
  "ten": "string",
  "sothoai": "string",
  "email": "string"
}

function donHang(idDiaChi,listSanPham)
{
    return {
        "id": 0,
        "idDiaChi": idDiaChi,
        "ngayTao": "2023-10-31",
        "ngayThanhToan": "2023-10-31",
        "trangThai": 0,
        "thanhTien": 0,
        "list_json_chitiethoadon": listSanPham
      }
}



function donHangNoTk(DiaChi,listSanPham)
{
  const a =[]
  a.push(DiaChi)
 
  return {
    "id": 0,
    "list_json_DiaChi":a,
    "ngayTao": "2023-11-13",
    "ngayThanhToan": "2023-11-13",
    "trangThai": 0,
    "thanhTien": 0,
    "list_json_chitiethoadon": listSanPham
  };
}

export{sanPham,DiaChi,donHang,donHangNoTk}