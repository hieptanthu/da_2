const searchSanPham = 
{
    "page": 1,
    "pageSize":10,
    "ten": " ",
    "DanhMucId": 0,
    "ThuongHieuId": 0,
    "LoaiSanPham": 0,
    "slBan": 0
}




function  searchDonHang(page,pageSize,ten,DanhMucId,ThuongHieuId,LoaiSanPham,slBan,NgayTao)
{
    const a = 
    {
        "page": '',
        "pageSize":'',
        "ten": " ",
        "DanhMucId": '',
        "ThuongHieuId": '',
        "LoaiSanPham": '',
        "slBan": '',
        "NgayTao": ""

    }
return a
}



export {searchSanPham,searchDonHang};