import { SanPham } from "../../../assets/js/api/SanPham.js";
import { DanhMuc } from "../../../assets/js/api/danhMuc.js";
import { ThuongHieu } from "../../../assets/js/api/ThuongHieu.js";
import { sanPham, thuongHieu } from "../../../assets/js/bienThamChieu/ThamChieu.js";

var SukienSua =false



var fromSp = document.getElementById('SanPham')
var a= new SanPham();
var DsSanPham; // Biến toàn cục
var idDm;
var idSp=0;



function loadSp()
{
  a.GetAll()
  .then(function(data) {
    DsSanPham = [...data];
    console.log(DsSanPham);
    renderTB(DsSanPham);
  });

}



// Bây giờ DsSanPham có thể được truy cập ở bất kỳ đâu trong phạm vi toàn cục
console.log(DsSanPham);

var b = new DanhMuc()


function loadDm(id,idHtml){
  b.get(id)
  .then(function(data) {
    renderCCB(idHtml,data)
    renderCCB(idHtml,data)
  })
  
}


var c = new ThuongHieu();
c.getAll()
    .then(function(data) {
      renderCCBth("thuongHieutk",data)
      renderCCBth("thuongHieu",data)
})










function renderTB(data)
{
  
  $("#table-body").empty();
  
  data.forEach(function (item, index) {
    $("#table-body").append(`<tr>
        <td>${index + 1}</td> <!-- Số thứ tự -->
        <td>${item.tenSanPham}</td> <!-- Tên sản phẩm -->
        <td>${item.motaSp}</td> <!-- Mô tả sản phẩm -->
        <td>${item.giaSanPham}</td> <!-- Giá sản phẩm -->
        <td>${item.baoHanh}</td> <!-- Thời gian bảo hành -->
        <td>${item.tomTatSanPham}</td> <!-- Tóm tắt sản phẩm -->
        <td>${item.loaiSanPham}</td> <!-- Loại sản phẩm -->
        <td>${item.soLuong}</td> <!-- Số lượng -->
        <td>${new Date(item.ngayTao).toLocaleString()}</td> <!-- Ngày tạo -->
        <td>${item.slBan}</td> <!-- Số lượng bán -->
        <td><img src="${item.anh}" alt=""></td> <!-- Ảnh sản phẩm -->
        <td>
            <button class="btnSua">sửa</button>
            <button onclick="Xoa(${item.id})" class="btnXoa">xóa</button>
        </td>
    </tr>`);
});
     
     
} 

function renderCCB(id,data)
  {
    const theHtml = $(`#${id}`);
    let str;
    theHtml.empty();
    for (let i = 0; i < data.length; i++) {
       str+=
        ` <option danhMucConId="${data[i].danhMucConId}" value="${data[i].id}">${data[i].tenDanhMuc}</option>
        `
      
    } 
    theHtml.append(str)
   
}
function renderCCBth(id,data)
  {
    const theHtml = document.getElementById(`${id}`);
 
    for (let i = 0; i < data.length; i++) {
       
        theHtml.innerHTML=theHtml.innerHTML+ 
        ` <option value="${data[i].id}">${data[i].tenThuongHieu}</option>
        `;
    } 
}











loadSp()

loadDm(0,"danhMuc")



 
  

  


  var selectElement = document.getElementById("danhMuc");
 
  // Thêm sự kiện "change" để lắng nghe khi người dùng chọn một option
  selectElement.addEventListener("change", function() {
      // Lấy option được chọn
      const selectedOption = selectElement.options[selectElement.selectedIndex];
      // Lấy giá trị của thuộc tính danhMucConId
      loadDm(selectedOption.value,"danhMuc1")
      
  });


  var selectElement1 = document.getElementById("danhMuc1");
  selectElement1.addEventListener("change", function() {
    // Lấy option được chọn
    const selectedOption = selectElement.options[selectElement1.selectedIndex];

    
    idDm=selectedOption.value

    
});
 





  document.getElementById('table-body').addEventListener('click', function (event) {
    if (event.target.classList.contains('btnSua')) {
        var row = event.target.closest('tr'); // Lấy hàng (tr) chứa nút "Sửa" được nhấp
        var firstCell = row.querySelector('td'); // Lấy ô đầu tiên (cột đầu tiên)
        var 
        sd = firstCell.textContent; // Lấy giá trị của ô đầu tiên
        
        // Xử lý giá trị giaTriCuaCotDauTien ở đây
       console.log(DsSanPham[sd])
       document.getElementById('tenSanPham').value = DsSanPham[sd-1].tenSanPham;
       document.getElementById('moTa').value = DsSanPham[sd-1].motaSp;
       document.getElementById('anh').value = DsSanPham[sd-1].anh;
       document.getElementById('gia').value = DsSanPham[sd-1].giaSanPham;
       document.getElementById('baoHanh').value = DsSanPham[sd-1].baoHanh;
       document.getElementById('tomtat').value = DsSanPham[sd-1].tomTatSanPham;
       document.getElementById('soluong').value = DsSanPham[sd-1].soLuong;
       document.getElementById('thuongHieu').value = DsSanPham[sd-1].idThuongHieu;
       idDm = DsSanPham[sd-1].idDanhMuc;
       document.getElementById('tinhTrang').value = DsSanPham[sd-1].loaiSanPham;
       idSp=DsSanPham[sd-1].id

       
       
       console.log(idSp)
       fromSp.style.display="block"
       SukienSua=true

    }
});


  function layData(){
    debugger
    const id=idSp;
    const tenSanPham = document.getElementById('tenSanPham').value;
    const motaSp = document.getElementById('moTa').value;
    const anh = document.getElementById('anh').value;
    const giaSanPham = parseInt(document.getElementById('gia').value);
    const baoHanh = document.getElementById('baoHanh').value;
    const tomTatSanPham = document.getElementById('tomtat').value;
    const soLuong = parseInt(document.getElementById('soluong').value);
    const idThuongHieu = parseInt(document.getElementById('thuongHieu').value);
    const idDanhMuc = idDm
    const loaiSanPham = parseInt(document.getElementById('tinhTrang').value);
    console.log(id+''+idDanhMuc)
    return [id,tenSanPham,motaSp,anh,giaSanPham,baoHanh,tomTatSanPham,soLuong,idDanhMuc,idThuongHieu,loaiSanPham]

  }


  function Them(){
    const data= layData()
    debugger
    console.log(data)
    const sp=sanPham(data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8],data[9],data[9])
    a.post(sp)
    .then(function(data){
      if(data){
        alert("thêm Ok")
      }
    })
   

  }




function Sua(){
  
    const data= layData()
    
    const sp=sanPham(data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7],data[8],data[9],data[9])
    a.put(sp)
    .then(function(data){
      if(data){
        alert("Sua Ok")
      }
    })
}




function BoQua(){
      SukienSua=false
      document.getElementById('tenSanPham').value ="";
       document.getElementById('moTa').value ="";
       document.getElementById('anh').value = "";
       document.getElementById('gia').value ="";
       document.getElementById('baoHanh').value = "";
       document.getElementById('tomtat').value ="";
       document.getElementById('soluong').value = "";
       fromSp.style.display="none"
}




function Xoa(id){
  a.deleteById(id)
  .then(function(data){
    if(data==true){
      alert("Xoa thanh Cong")
      var viTri = DsSanPham.findIndex(function(doiTuong) {
        return doiTuong.id == id;
      });
      console.log(viTri)
      DsSanPham.pop(viTri)
      renderTB(DsSanPham)
    }else{
      alert("Xoa that bai")
    }
    
  })
}


function Gui(){
  if(SukienSua){
    Sua()
  }else{
    Them()
  }
  loadSp()
}








function guiFile(){

  var files = $(".input_img");
  

  if (files.length > 0){
    var formData = new FormData();
    for (var i = 0; i < files.length; i++) {
      formData.append("images"+i, files[i].files);
  }

  console.log(formData)
    debugger
    a.upfile(formData)
    .then(function(data) {
      
    console.log(data)
    }).catch(function(error) {
      
    console.error(error)
    })

}
  }
  

window.guiFile=guiFile
window.Gui=Gui
window.BoQua=BoQua
window.Xoa=Xoa