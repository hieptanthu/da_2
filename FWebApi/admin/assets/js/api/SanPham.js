import { callApi,getDataApi ,getDataApiWithToken  as ketnoi ,UpFile} from "./global.js";


function SanPham() {

    
    this.upfile=function(data){
        return UpFile("POST","/api/Upfile/update",data)
    }

    this.getById = function (id) {
        
        ketnoi("GET", "/api/SanPham/get-by-id/" + id);
        
    }

    this.put = function (data) {
        return ketnoi("PUT", "/api/SanPham/update-SanPham", data);
    }

    this.post = function (data) {
      
        return ketnoi("POST", "/api/SanPham/create-SanPham", data);
      
    }

    this.deleteById = function (id) {
        return ketnoi("DELETE","/api/SanPham/delete-SanPham/" + id);
    }

    this.Search = function (page,pageSize,ten,DanhMucId,ThuongHieuId,LoaiSanPham,XapXep,Gia1,Gia2) {
       // Tạo đối tượng search để truyền vào API
       debugger
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

    this.GetAll = function () {
        return ketnoi("GET", "/api/SanPham/getALL")
  }

}





  export{SanPham}
  