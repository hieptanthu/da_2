import { callApi,getDataApi  as ketnoi,getDataApiWithToken  } from "./global.js";


function ThuongHieu(){
    this.GetAll=function(){
        return ketnoi("GET","/api/ThuongHieu/get-thuongHieu-all")
    }
}

export{ThuongHieu}