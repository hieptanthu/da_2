import { ThongKe } from "../../../../assets/js/api/ThongKe.js";
import { SanPham } from "../../../../assets/js/api/SanPham.js";


var Tk= new ThongKe()
var SP=new SanPham();

function getSpById(id){
    SP.getById(id)
    .then(data=>{
        alert(data)
    })
}




function LoadDm( data){
    let str=''
    if(data!=[]){
        data.forEach(function(item,index) {
            str+=`<tr><td>${index+1}</td><td>${item.tenSanPham}</td><td>${item.soLuong}</td><td> <input class="btnThem" type="button" value="Xem Thêm"></td></tr>`
            
        });
    

    }

    
    $("#table-body").append(str);


}




function timKiem(){
    
    var a=document.getElementById("DateA")
    var b=document.getElementById("DateB")
    console.log();
    debugger

    Tk.Thongke_SanPhamBanChay(a.value,b.value)
    .then(data=>{
        LoadDm( data)
    })
  
}

window.timKiem=timKiem