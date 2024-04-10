

function danhMuc(id,tenDanhMuc,danhMucConId){
  return {
    "id": id,
  "tenDanhMuc": tenDanhMuc,
  "danhMucConId": danhMucConId
}
}


function sanPham(id,tenSanPham,motaSp,anh,giaSanPham,baoHanh,tomTatSanPham,soLuong,idDanhMuc,idThuongHieu,loaiSanPham){
  var sanPham = {
    "id": id,
    "tenSanPham": tenSanPham,
    "motaSp": motaSp,
    "anh": anh,
    "danhSachAnh": "",
    "giaSanPham": giaSanPham,
    "baoHanh": baoHanh,
    "tomTatSanPham": tomTatSanPham,
    "loaiSanPham": loaiSanPham,
    "soLuong": soLuong,
    "ngayTao": "2020-10-10",
    "idDanhMuc":idDanhMuc,
    "idThuongHieu": idThuongHieu,
    "slBan": 0
  }

  return sanPham

}

  function thuongHieu(id,tenThuongHieu){
    return {
      "id": id,
      "tenThuongHieu": tenThuongHieu
    }
  }



function User(id,userName,password,soDienThoai,email){
  return {
    id:id,
    userName:userName,
    password:password,
    soDienThoai:soDienThoai,
    email:email,
    token:""
  }
}





export {danhMuc,sanPham,thuongHieu,User};

