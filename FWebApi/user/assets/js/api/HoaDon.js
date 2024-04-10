import { callApi,getDataApi  as ketnoi,getDataApiWithToken  } from "./global.js";



function DonHang()
{
    this.create = function (donhang) {
        return ketnoi("POST", "/api/DonHangControllerr/creact",donhang);
    }
    this.getById=function(id){
        return ketnoi("GET", `/api/DonHangControllerr/get-by-id/${id}`);
    }

    this.delete=function(id){
        return ketnoi("DELETE",  `/api/DonHangControllerr/delete-DonHang/${id}`);
    }
    this.Search=function(FromDataDonHangSeach){
        return ketnoi("POST", "/api/DonHangControllerr/search",FromDataDonHangSeach);
    }
    this.createNoTk=function(donhangNoTk){
        return ketnoi("POST", "/api/DonHangControllerr/creact-noTaiKhoan",donhangNoTk);}
}


export{DonHang}