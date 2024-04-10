

import { renderPagination } from "../../../../assets/js/page.js";
import{DonHang,printDonHang} from "../../../../assets/js/api/DonHang.js"

var dh = new DonHang();




function xacNhan(id){
  dh.update(id,4)
  .then(function(data){
    if(data){
      alert("Đã nhận đơn")
      load(1)
    }
  })
}

function xemThem(id)
{
  dh.GetById(id)
  .then(function(data){
    
      alert("Đã xác nhận")

      printDonHang(data)
    
  })
}

function load(page){
  dh.Seach(page,10,"","","",3,"")
  .then(function(data){
    console.log(data)
    render(data.data,(page-1)*10)
     var pazeSize = Math.ceil(data.totalItems/data.pageSize)
    renderPagination(data.page, pazeSize);

    
  })
}







function render(arr,stt){
 
  $("#table-body").empty();
    let str = '';
    
    // 
    arr.forEach(function(item, index) {
      str += `<tr>
        <td>${stt+index+1}</td>
        <td>${item.ngayTao}</td>
        <td>${item.thanhTien}</td>
        <td><input onclick="xemThem(${item.id})" class="btnThem" type="button" value="Xem Thêm"></td>
        <td><input onclick="xacNhan(${item.id})" class="btnThem" type="button" value="nhận đơn"></td>
      </tr>`;
    });
  $("#table-body").append(str);

}


load(1);







window.xemThem=xemThem;

window.xacNhan=xacNhan;
window.load=load;