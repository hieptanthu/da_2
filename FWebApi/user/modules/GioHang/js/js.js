import {sanPham ,donHang } from "../../../assets/js/BienThamChieu/BienThamChieu.js";
import{getCookie,setCookie} from "../../../assets/js/Cookie.js"
import { SanPham } from "../../../assets/js/api/SanPham.js";



// Tạo một thuộc tính img trong san pham


const listSanPham = getCookie('gioHang') ? JSON.parse(getCookie('gioHang')) : [];

function themSanPham(Id, name, SoLuong, giaSanPham, img) {
  // Tạo một đối tượng mới để đại diện cho sản phẩm
  var sanPham = {
    idSanPham: Id,
    name: `${name}`,
    soLuong: SoLuong,
    img: img,
    giaTien: SoLuong * giaSanPham
  };

  const index = listSanPham.findIndex(item => item.idSanPham == Id);
  if (index !== -1) {
    alert("Thêm Sản Phẩm thất bại")
    
  } else {
    // Nếu sản phẩm chưa tồn tại, thêm vào danh sách
    listSanPham.push(sanPham);
    // Lưu dữ liệu giỏ hàng vào cookie sau khi thêm sản phẩm mới
    setCookie('gioHang', JSON.stringify(listSanPham), 7);
    console.log(listSanPham);
    alert(`Thêm Sản Phẩm ${name} Thành công` )
    
  }
}





 function SuaSanPham(Id,SoLuong)
 {

    const index =  listSanPham.findIndex(item => item.idSanPham == Id);
    if (index !== -1) {
      // Sử dụng splice để xóa đối tượng khỏi mảng
      listSanPham[index].soLuong=SoLuong
      listSanPham[index].giaSanPham=SoLuong* listSanPham[index].gia1SanP
      setCookie('gioHang', JSON.stringify(listSanPham), 7);
    }else{
      console.log("loi")
    }
 }


 function xoaSanPham(Id) {
  // Sử dụng findIndex để tìm vị trí của đối tượng cần xóa
  const indexToDelete = listSanPham.findIndex(item => item.idSanPham == Id);

  // Kiểm tra xem đối tượng có tồn tại trong mảng hay không
  if (indexToDelete !== -1) {
    // Xóa sản phẩm khỏi danh sách
    listSanPham.splice(indexToDelete, 1);
    // Lưu dữ liệu giỏ hàng vào cookie sau khi xóa sản phẩm
    setCookie('gioHang', JSON.stringify(listSanPham), 7);
    return true;
  }else{
    return false;
  }
}



function hienThi(){

  const listSanPham = getCookie('gioHang') ? JSON.parse(getCookie('gioHang')) : [];
  $("#listCart").empty(); 
  listSanPham.forEach(item => {
    $("#listCart").append(`
  <tr>
      <td><input data-Id="${item.idSanPham}" class="chonMot" type="checkbox"></td>
      <td><img src=${item.img}></td>
      <td>${item.name}</td>
      <td>${item.giaTien}</td>
      <td>
          <label for="soNhap">Nhập số:</label>
          <input style=" width: 40px;padding: 0px;" type="number" class="soNhap" name="soNhap" value="${item.soLuong}" min="1" step="1">
      </td>
      <td>${(item.giaTien*item.soLuong).toLocaleString() + '₫'}</td>
  </tr>
  
  `)
    
  });
  
  
}


function dsSanPhamMua(dsId){
  const ds=[];
  
    dsId.forEach(id=>{
        listSanPham.forEach(element => {
          if(id==element.idSanPham){
            const sanPham ={
              "idDonHang": 0,
              "idSanPham": element.idSanPham,
              "soLuong": element.soLuong,
              "giaTien": 0
              
            }
            ds.push(sanPham)
          }
          
        });
        
      

    })
    

  console.log(ds);
  setCookie('SpDonHang', JSON.stringify(ds), 1);
  window.location="/HtmlPage/ThanhToan.html"

}

hienThi();

console.log(listSanPham)


window.hienThi=hienThi;
window.SuaSanPham=SuaSanPham;
window.xoaSanPham=xoaSanPham;
window.dsSanPhamMua=dsSanPhamMua;





export{ themSanPham,xoaSanPham}
