import { SanPham } from "../../../assets/js/api/SanPham.js";
import { ThuongHieu } from "../../../assets/js/api/ThuongHieu.js";
import {getParameterByName} from "../../../assets/js/url.js"
import {themSanPham} from "../../GioHang/js/js.js"


var TH=new ThuongHieu();

function loadCCB(data){
  let str=''
  if(data!=null){
    data.forEach(item =>{
      str+=`<option value="${item.id}">${item.tenThuongHieu}</option>`
    })

  }
 
  $("#LocthuongHieu").append(str)
}
function loadThungHieu(){
  TH.GetAll()
  .then(function(data){
    loadCCB(data)
  })

}

loadThungHieu();


function optionGia(i){

  switch (i) {
    case "1":
      Gia1="";
      Gia2="";
      break;
    
    case "2":
      Gia1="";
      Gia2=2000000;
      break;
    case "3":
      Gia1=2000000;
      Gia2=5000000;
      break;
    case "4":
      Gia1=5000000;
      Gia2=10000000;
      break;
    case "5":
      Gia1=10000000;
      Gia2=20000000;
      break;
    case "6":
      Gia1=20000000;
      Gia2=""
      break;
    }
}

var LocGia=document.getElementById("Locgia");
console.log(LocGia)
var LocThuongHieu= document.getElementById("LocthuongHieu");
var LocSapXep= document.getElementById("LocXapXep");
var LocLoaiHang=document.getElementById("LocloaiHang");


function handleSelectChange() {
  // Lấy giá trị được chọn
  const Gia = LocGia.value;
  optionGia(Gia)
  ThuongHieuId=LocThuongHieu.value;
  XapXep=LocSapXep.value
  LoaiSanPham=LocLoaiHang.value;
  LoadSp(1,10,ten,DanhMucId,ThuongHieuId,LoaiSanPham,XapXep,Gia1,Gia2)

}


var page = getParameterByName('page');
var pageSize = getParameterByName('pageSize');
var ten = getParameterByName('ten');
var DanhMucId = getParameterByName('DanhMucId');
var ThuongHieuId = getParameterByName('ThuongHieuId');
var LoaiSanPham = getParameterByName('LoaiSanPham');
var XapXep = getParameterByName('XapXep');
var Gia1 = getParameterByName('Gia1');
var Gia2 = getParameterByName('Gia2');

// Lấy giá trị của tham số id


// Kiểm tra và thiết lập giá trị mặc định nếu không có giá trị từ URL
DanhMucId = DanhMucId || '';
ThuongHieuId = ThuongHieuId || '';
LoaiSanPham = LoaiSanPham || '';
ten = ten || '';
XapXep=XapXep||4;
Gia1=Gia1||'';
Gia2=Gia2||'';

var sp= new SanPham();
function loaisp(loai){
    if(loai==0){
        return "Mới"
    }else{
        return "Cũ"
    }
}

function StringLong(text){
   const maxTextLe1ngth=100;
    var ellipsis = '...';
    if (text.length > maxTextLe1ngth) {
        var truncatedText = text.substring(0, maxTextLength) + ellipsis;
        return truncatedText
    }else{
        return text
    }
}




function renderSanPham(data)
{
  let str='';
  $("#DsSanPham").empty(); 
  if(data!=null){
    
    data.forEach(item => {
      
      str+= `<div class="SanPham">
       <a href = "/HtmlPage/ChiTietSanPham.html?id=${item.id}" class="product-item">
           <div class="product-item__img" style="background-image: url(${item.anh})" >
           </div>
           <h4 class="product-item__name">${item.tenSanPham}</h4>
           <div class="product-item__price">
               <span class="product-item__price">
               ${item.giaSanPham.toLocaleString()} đ
               </span>
           </div>
           <div class="product-item__action">
 
       
               
               <span class="product-item__sold">${item.slBan} đã bán</span>
           </div>
           <div class="product-item__bootom">
               <span class="product-item__brand">
               ${loaisp(item.loaiSanPham)}
               </span>
               <span class="">
               ${item.view}view
               </span>
           </div>
           <div class="product-item__favourite">
               <i class="fa-solid fa-check"></i>
               <span>yêu thích</span> 
           </div>
           
       </a>
 
 
       <ul class="buy">
         <li> <button onclick="layThongTin(${item.id},'${item.tenSanPham}',1,${item.giaSanPham},'${item.anh}');" type="button"  class="themVaoGioHang" >Thêm Vào giỏ Hàng</button>
         </li>
         <li>
           <button onclick="ok()" type="button" class="Ngay" onclick="" >Mua ngay</button>
         </li>
     </ul>
       </div>
       `});

  }
  $("#DsSanPham").append(str)

    
}




function renderPagination(currentPage, totalPages) {
    var paginationElement = document.getElementById('page_SanPham');
    paginationElement.innerHTML = ''; // Clear previous pagination
  
    var pagesToShow = 5; // Số lượng trang hiển thị trước và sau trang hiện tại
    var ellipsisThreshold = 3; // Hiển thị dấu "..." nếu số trang vượt quá ngưỡng này
  
    // Tạo nút Previous
    var previousPage = currentPage - 1;
    var previousPageElement = createPageElement('<', previousPage);
    paginationElement.appendChild(previousPageElement);
  
    // Tạo các nút trang
    for (var i = 1; i <= totalPages; i++) {
      if (i === 1 || i === totalPages || (i >= currentPage - pagesToShow && i <= currentPage + pagesToShow)) {
        var pageElement = createPageElement(i, i === currentPage);
        paginationElement.appendChild(pageElement);
      } else if (paginationElement.children[paginationElement.children.length - 1].textContent !== '...') {
        // Hiển thị dấu "..." nếu số trang vượt quá ngưỡng
        var ellipsisElement = createEllipsisElement();
        paginationElement.appendChild(ellipsisElement);
      }
    }
  
    // Tạo nút Next
    var nextPage = currentPage + 1;
    var nextPageElement = createPageElement('>', nextPage);
    paginationElement.appendChild(nextPageElement);
  }
  
  function createPageElement(text, isCurrent) {
    var pageElement = document.createElement('li');
    var linkElement = document.createElement('a');
    linkElement.href = '#';
    linkElement.textContent = text;
  
    if (isCurrent) {
      pageElement.classList.add('active');
    }
  
    pageElement.appendChild(linkElement);
  
    // Bắt sự kiện khi người dùng nhấn vào trang
    linkElement.addEventListener('click', function (event) {
      event.preventDefault();
      var pageText = linkElement.textContent;
      var pageNumber = parseInt(pageText) || 1; // Lấy số trang, nếu không có thì mặc định là 1

      renderPagination(pageNumber, pazeSize); // Gọi lại hàm renderPagination với trang mới
      LoadSp(pageNumber,10,ten,DanhMucId,ThuongHieuId,LoaiSanPham,XapXep,Gia1,Gia2)
    });
  
    return pageElement;
  }
  
  function createEllipsisElement() {
    var ellipsisElement = document.createElement('li');
    ellipsisElement.textContent = '...';
    return ellipsisElement;
  }
  




var pazeSize=0

function LoadSp(page,pageSize,ten,DanhMucId,ThuongHieuId,LoaiSanPham,XapXep,Gia1,Gia2){
    sp.Search(page,pageSize,ten,DanhMucId,ThuongHieuId,LoaiSanPham,XapXep,Gia1,Gia2)
    .then(function(data) {
        renderSanPham(data.data)
        pazeSize =Math.ceil(data.totalItems/data.pageSize)
        renderPagination(data.page, pazeSize);
        
       
    })
    .catch(function(error) {
        console.error(error);
    });
    
    

}


  // Khởi tạo trang đầu tiên khi tải trang


LoadSp(1,10,ten,DanhMucId,ThuongHieuId,LoaiSanPham,XapXep,Gia1,Gia2)


window.handleSelectChange = handleSelectChange;

LocGia.addEventListener('change', handleSelectChange);
LocThuongHieu.addEventListener('change', handleSelectChange);
LocSapXep.addEventListener('change', handleSelectChange);
LocLoaiHang.addEventListener('change', handleSelectChange);




function layThongTin(Id,name,SoLuong,giaSanPham,img){

  console.log(Id+name+SoLuong+giaSanPham+img)
  themSanPham(Id,name,SoLuong,giaSanPham,img)
}

window.layThongTin = layThongTin;












