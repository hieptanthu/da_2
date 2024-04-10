import { SanPham } from "../../../assets/js/api/SanPham.js";
import { getParameterByName } from "../../../assets/js/url.js";
import { themSanPham } from "../../GioHang/js/js.js";



var dataSp;

var id  = getParameterByName('id');

var sp= new SanPham()


function load (data)

{ 
//   var listImg;
//   data.danhSachAnh.forEach(element => {
//   listImg+=`<div class="img-item"><img src="${element}" alt=""></div>`
  
// });
// $("#listImg").append(listImg)

  
  
  $(".img-main").empty();
$(".quantity-evaluate").empty();
  $(".img-main").append(`<img src="${data.anh}" alt="">`)
  $(".name-product").text(data.tenSanPham)
  $(".quantity-evaluate").append(`<span>${data.slBan} đã bán</span>`)
  $(".price").text(data.giaSanPham.toLocaleString()+"VND")
  $(".baoHanh .body-title").text(data.baoHanh)
  $(".moTa .body-title").text(data.tomTatSanPham)
  $(".product-quantity").text(data.soLuong +" sản phẩm có sẵn ")
  $(".moTaChiTiet").append(`<p>${data.motaSp}</p>`)
}





console.log(id)
sp.getById(id)
.then(function(data){
  dataSp=data;
  load(data)

})
.catch(function(error) {
  console.error(error);
});





function ThemSpVaoGH(){
  themSanPham(dataSp.id,dataSp.tenSanPham,$(".quantity-evaluate").text,dataSp.giaSanPham,dataSp.anh)
}


window.ThemSpVaoGH=ThemSpVaoGH



var SanPhamId = (function() {
  
    return {
      getId: function() {
        return id;
      },
      setId: function(moiGiaTri) {
        id = moiGiaTri;
        load(id);
      }
  
    };
  })();


export {SanPhamId}


