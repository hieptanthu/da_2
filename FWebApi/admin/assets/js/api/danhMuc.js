import { callApi,getDataApi,getDataApiWithToken as ketnoi } from "./global.js";












function DanhMuc() {

    this.get = function (id) {
        return ketnoi("GET", "/api/DanhMuc/get-GetDatabyIdCon/"+id);
    }

    this.put = function (danhMucData) {
        return ketnoi("PUT", "/api/DanhMuc/update-DanhMuc", danhMucData);
    }

    this.post = function (danhMucData) {
        return ketnoi("POST", "/api/DanhMuc/create-DanhMuc", danhMucData);
    }

    this.deleteById = function (id) {
        return ketnoi("DELETE", "/api/DanhMuc/delete-DanhMuc/" + id);
    }
}








    


        


export{DanhMuc}
   
