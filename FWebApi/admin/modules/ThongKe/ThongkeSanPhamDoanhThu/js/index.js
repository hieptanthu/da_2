import { ThongKe } from "../../../../assets/js/api/ThongKe.js";



var Tk= new ThongKe()




function Load( data){
    let str=''
    if(data!=[]){
        data.forEach(function(item,index) {
            str+=`<tr><td>${index+1}</td><td>${item.tenSanPham}</td><td>${item.tien}</td><td> <input class="btnThem" type="button" value="Xem Thêm"></td></tr>`
            
        });
    

    }

    
    $("#table-body").append(str);


}




function timKiem(){
    
    var a=document.getElementById("DateA")
    var b=document.getElementById("DateB")
    console.log();
    

    Tk.Thongke_sanPhamDoanhThu(a.value,b.value)
    .then(data=>{
        Load( data)
    })
  
}

window.timKiem=timKiem