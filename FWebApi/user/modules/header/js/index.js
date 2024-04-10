import { DanhMuc } from "../../../assets/js/api/DanhMuc.js";
import { ThuongHieu } from "../../../assets/js/api/ThuongHieu.js";



var dm = new DanhMuc();





function renderDanhMucCon(data) {
  const $BodyDm = $("#BodyDanhMuc"); // Chắc chắn rằng bạn chọn đúng phần tử bằng cách thêm dấu # trước ID
  $BodyDm.empty();
  if(data==[]){
    $BodyDm.append(`<h1>chua co hm con</h1>`);
  }
  data.forEach(item => {
      $BodyDm.append(`<div ><a  href="/HtmlPage/SanPham.html?DanhMucId=${item.id}" data-id="${item.id}">${item.tenDanhMuc}</div> </a> `);
  });
}

function renderDanhMuc(data) {
  const $DsDanhMuc = $("#DsDanhMuc").find("ul");
  data.forEach(item => {

    $DsDanhMuc.append(`<li><a onclick="GetDmCon(${item.id})">${item.tenDanhMuc}</a></li>`);
  });
}





function GetDmCon(id){ 
  dm.GetDmByIdCon(id)
  .then(function(data) {
    renderDanhMucCon(data)   
  })
  .catch(function(error) {
    console.error(error);
  });
}


window.GetDmCon=GetDmCon





dm.GetDmByIdCon(0)
  .then(function(data) {
    renderDanhMuc(data)  
  })
  .catch(function(error) {
    console.error(error);
  });






$(document).ready(function() {
  var modal = $("#DsDanhMuc");
  $(window).click(function(event) {
    if (event.target == modal[0]) { // Sử dụng [0] để truy cập phần tử DOM từ jQuery object
      modal.css("display", "none");
    }
  });
  
});



function seach(){
  var name = document.getElementById("search").value
  window.location="/HtmlPage/SanPham.html?ten="+name
}

window.seach=seach






