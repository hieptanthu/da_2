import { callApi,getDataApi  as ketnoi ,getDataApiWithToken } from "./global.js";



function SanPham() 
{
    this.getById = function (id) {
        return ketnoi("GET", `/api/SanPham/get-by-id/${id}`);
    }
    this.getSpHot=function(){
        return ketnoi("GET", "/api/SanPham/get-Sp-Hot");
    }
    this.getSpMoi=function(){
        return ketnoi("GET","/api/SanPham/get-Sp-SanPhamMoi" );
    }
    this.Search = function (page,pageSize,ten,DanhMucId,ThuongHieuId,LoaiSanPham,XapXep,Gia1,Gia2) {
        // Tạo đối tượng search để truyền vào API
       
         var a = {
             page: page,
             pageSize: pageSize,
             ten: ten,
             DanhMucId: DanhMucId,
             ThuongHieuId: ThuongHieuId,
             LoaiSanPham: LoaiSanPham,
             XapXep: XapXep,
             Gia1: Gia1,
             Gia2: Gia2
         };
         console.log(a)
 
     return ketnoi("POST", "/api/SanPham/search", a);
 
     }
}

export{SanPham}