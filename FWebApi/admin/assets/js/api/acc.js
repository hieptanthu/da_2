import {getDataApi,getDataApiWithToken} from "./global.js"


function Acc(){

    
    this.Login=function(userName,PassWord){

        return getDataApiWithToken("GET",`/api/TaiKhoanQuanLy/Login?userName=${userName}&password=${PassWord}`)

    }
    this.create=function(data){
        return getDataApiWithToken("POST",`/api/TaiKhoanQuanLy/create-TaiKhoanQuanLy`,data)
    }

    this.update=function(data)
    {
       
        return getDataApiWithToken("POST",`/api/TaiKhoanQuanLy/update-TaiKhoanQuanLy`,data)
    }

    this.delete=function(id)
    {
        
        return getDataApiWithToken("DELETE",`/api/TaiKhoanQuanLy/delete-TaiKhoanQuanLy/${id}`,data)
    }
    
}


export{Acc}