import { callApi,getDataApi  as ketnoi,getDataApiWithToken  } from "./global.js";



function DanhMuc(){
    this.GetDmByIdCon=function(id){
        return ketnoi("GET",'/api/DanhMuc/get-GetDatabyIdCon/'+id)
    }
}


export{DanhMuc}