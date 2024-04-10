import { getDataApiWithToken as ketnoi } from "./global.js";





function ThuongHieu() {

    this.getById= function (id) {
        
        return(ketnoi("GET", "/api/ThuongHieu/get-by-id/"+id));
    }
    this.getAll= function () {
        
        return(ketnoi("GET", "/api/ThuongHieu/get-All"));
    }

    this.put = function (data) {
        return (ketnoi("PUT","/api/ThuongHieu/update-ThuongHieu" , data));
    }

    this.post = function (data) {
        return (ketnoi("POST","/api/ThuongHieu/create-ThuongHieu" , data));
    }

    this.deleteById = function (id) {
        return (ketnoi("DELETE","/api/ThuongHieu/delete-ThuongHieu/"+id ));
    }
}


export{ThuongHieu}
