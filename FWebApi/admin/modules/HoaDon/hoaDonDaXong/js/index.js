

import { renderPagination } from "../../../../assets/js/page.js";
import{DonHang,printDonHang} from "../../../../assets/js/api/DonHang.js"

var dh = new DonHang();






function xemThem(id)
{
  dh.GetById(id)
  .then(function(data){
      printDonHang(data)
    
  })
}

function load(page){
  dh.Seach(page,10,"","","",4,"")
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
        <td>${item.ngayThanhToan}</td>
        <td>${item.thanhTien}</td>
        <td><input onclick="xemThem(${item.id})" class="btnThem" type="button" value="Xem"></td>
      </tr>`;
    });
  $("#table-body").append(str);

}


load(1);







window.xemThem=xemThem;

window.load=load;