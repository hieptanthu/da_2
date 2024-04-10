import { getDataApiWithToken as ketnoi } from "./global";

function DiaChi(data){
    this.create=function(){
        return ketnoi("POST","/api/DiaChi/Creact",data)
    }
    this.getByUserId=function(idUser){
        return ketnoi("GET",`/api/DiaChi/getAllUser-by-id/${idUser}`)
    }
    
}