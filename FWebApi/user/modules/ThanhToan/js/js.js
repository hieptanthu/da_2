import { donHangNoTk ,DiaChi} from "../../../assets/js/BienThamChieu/BienThamChieu.js";
import { DonHang } from "../../../assets/js/api/HoaDon.js";
import { getCookie,setCookie } from "../../../assets/js/Cookie.js";
import { xoaSanPham } from "../../GioHang/js/js.js";


var dh = new DonHang();
var listSpDatHang= getCookie('SpDonHang') ? JSON.parse(getCookie('SpDonHang')) : [];
var listGioHang = getCookie('gioHang') ? JSON.parse(getCookie('gioHang')) : [];



function layName(id){
  var name = "";  // Tạo một biến để chứa giá trị name
  listGioHang.forEach(x=>{
    if(x.idSanPham == id){
      name = x.name;
      console.log(name);
    }
  });
  return name;  // Trả về giá trị name
}


 function layGiaTien(id){
  var gia=0
  listGioHang.forEach(x=>{
    if(x.idSanPham==id){
      gia= x.giaTien
      
    }
  })
  return gia
 }




 function printHtml(data) {
  let popupWin = window.open('', '_blank', 'top=0,left=0,height=100%,width=auto');
  popupWin.document.write(`
      <html>
          <head>
          <title>Print tab</title>
          <style>
          * {
              margin: 0;
              padding: 0;
          }

          table {
              margin-top: 15px;
              width: 100%;
          }

          body {
              width: 900px;
              margin: 0 auto;
          }

          tr {
              line-height: 27px;
          }

          table,
          th,
          td {
              border: 1px solid black;
              border-collapse: collapse;
              text-align: center;
          }

          .ngay {
              font-style: italic;
              font-size: 15px;
              margin-bottom: 5px;
          }

          .ban {
              font-style: italic;
              font-size: 15px;
              margin: 3px 0px;
          }

          .dam {
              font-weight: bold;
          }

          .le {
              margin-bottom: 4px;
              font-size: 15px;
          }

          .doi {
              width: 50%;
              float: left;
          }

          .ky {
              text-align: center;
              margin-top: 20px;
          }

          .ky1 {
              font-style: italic;
              text-align: center;
              margin-top: 5px;
          }
          </style>
          </head>
          <body onload="window.print();window.close()">${data}</body>
      </html>`
  );
  popupWin.document.close();
}

function DatHang()  {




  if(listSpDatHang==[]){
    alert("Chưa có sản phẩm thanh toán")

  }
    // Lấy phần tử select
    const selectedIndex = city.selectedIndex;

  // Kiểm tra xem có option nào được chọn hay không
  if (selectedIndex !== -1) {
    // Lấy option được chọn
    const selectedOption = city.options[selectedIndex];

    // Lấy text của option được chọn
    var selectedOptionTextcity = selectedOption.innerText;

  
  } else {
    console.log('Không có option nào được chọn.');
  }
    
    
    
    
    const district = document.getElementById('district');
    const selectedIndex1 = district.selectedIndex;

    // Lấy option được chọn
    if (selectedIndex1 !== -1) {
      // Lấy option được chọn
      const selectedOptiondistrict = district.options[selectedIndex];
      var selectedOptionTextdistrict = selectedOptiondistrict.innerText;
    } else {
      console.log('Không có option nào được chọn.');
    }




    // Lấy phần tử select
    const ward = document.getElementById('city');

    const selectedIndex2 = ward.selectedIndex;

    // Lấy option được chọn
    if (selectedIndex2 !== -1) {
      // Lấy option được chọn
      const selectedOptiondiward = ward.options[selectedIndex];
      var selectedOptionTextward = selectedOptiondiward.innerText;
    } else {
      console.log('Không có option nào được chọn.');
    }





      var hoten = $('#txt_hoten').val();
      var sdt = $('#txt_sdt').val();
      var email = $('#txt_email').val();
      var ghichu = $('#txt_ghichu').val();
      var number = /^[0-9]+$/;
      var a = email.indexOf("@");
      var c = email.lastIndexOf(".");

      if (hoten == null || hoten == "") {
          alert("Họ tên không được để trống! Vui lòng nhập lại!");
          return false;
      } else if (sdt == null || sdt == "") {
          alert("Số điện thoại không được để trống! Vui lòng nhập lại!");
          return false;
      } else if (!sdt.match(number) || sdt.length != 10) {
          alert("Số điện thoại không hợp lệ! Vui lòng nhập lại!");
          return false;
      } else if (email != "" && email != null && (a < 1 || c < (a + 2) || (c + 2) >= email.length)) {
          alert("Email không hợp lệ! Vui lòng nhập lại!");
          return false;
      };

      var str = `
          <section style="text-align: center;">
              <h1>HÓA ĐƠN GIÁ TRỊ GIA TĂNG</h1>
              <div class="ban">(Bản thể hiện hóa đơn điện tử)</div>
              <div class="ngay">
                  <p id="date"></p>
                  <script>
                      n = new Date();
                      y = n.getFullYear();
                      m = n.getMonth() + 1;
                      d = n.getDate();
                      document.getElementById("date").innerHTML = "Ngày " + d + " tháng " + m + " năm " + y;
                  </script>
              </div>
          </section>

          <div class="le dam">Tên đơn vị bán hàng:Hiệp Khoảnh Khắc</div>
          <div class="le">Mã số thuế: 3269289058</div>
          <div class="le">mặt trăng tọa độ </div>
          <div class="le doi">Điện thoại: 0123456789</div>
          <div class="le doi">Số tài khoản: 9999999999</div>
          <div class="le dam">Người mua hàng: `+ hoten + `</div>
          <div class="le">Email: `+ email + `</div>
          <div class="le">Điện thoại: `+ sdt + `</div>
          <div class="le">Địa chỉ: ${selectedOptionTextcity}-${selectedOptionTextdistrict}-${selectedOptionTextward}</div>
          <div class="le doi">Hình thức thanh toán: thanh toán trực tiếp</div>
          <div class="le">Ghi chú: `+ ghichu + `</div>
          <table>
              <tr>
                  <th>STT</th>
                  <th>Tên sản phẩm</th>
                  <th>Số lượng</th>
                  <th>Thành tiền</th>
              </tr>
      `;
      var n = 0;
      var t = 0;
      var sl = 0;
      listSpDatHang.forEach(x => {
        t += layGiaTien(x.idSanPham);
          sl += x.soLuong;
          str += `
          <tr>
              <td>`+ (++n) + `</td>
              <td>`+ layName(x.idSanPham) + `</td>
              <td>`+ x.soLuong + `</td>
              <td>`+ layGiaTien(x.idSanPham) + `</td>
          </tr>
          `;
        
      }); 
          
      
      str += `
          <tr>
              <td></td>
              <td class="dam">Tổng</td>
              <td class="dam">`+ sl + `</td>
              <td class="dam">`+ t + `</td>
          </tr>
      </table>
      <div class="doi dam ky">Người mua hàng</div>
      <div class="doi dam ky">Người bán hàng</div>
      <div class="doi ky1">(Ký, ghi rõ họ tên)</div>
      <div class="doi ky1">(Ký, ghi rõ họ tên)</div>
      `;


      const dt={
        "id": 0,
        "thanhPho": selectedOptionTextcity,
        "huyen": selectedOptionTextdistrict,
        "xa": selectedOptionTextward,
        "giChu": ghichu,
        "idTaiKhoan": 0,
        "ten": hoten,
        "sothoai":sdt,
        "email": email
      }
    
    


  
    var datapost=donHangNoTk(dt,listSpDatHang)
    console.log(datapost)
    dh.createNoTk(datapost)
    .then(function(data) {
      
      if(data==true){
        listSpDatHang.forEach(item => {
          xoaSanPham(item.idSanPham)
        });
        
        alert("Cảm ơn Tin Tưởng chúng tôi")
        
        setCookie('SpDonHang', JSON.stringify([]), 7);
        
      }else{
        console.log(lỗi);
      }
    })
    .catch(function(error) {
        console.error(error);
    });


    printHtml(str);
    window.location="/GioHang.html"


    
    
}









function LoadData() {
  var str = "";
  var t = 0;
  listSpDatHang.forEach(x=>{
    t +=layGiaTien(x.idSanPham);
      str += `
      <div class="row pay">
          <div class="col-6 col-s-12" style="text-align: left;">
              <label>${layName(x.idSanPham)}  * ` + x.soLuong + `</label>
          </div>
          <div class="col-6 col-s-12" style="text-align: right;">
              <label>`+ layGiaTien(x.idSanPham) + `đ</label>
          </div>
      </div>
      `;

  })
      
  
  $('#spham').html(str);
  $('#tt').html(t);
}
LoadData();


window.DatHang=DatHang


 


var citis = document.getElementById("city");
    var districts = document.getElementById("district");
    var wards = document.getElementById("ward");
    var Parameter = {
    url: "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json", 
    method: "GET", 
    responseType: "application/json", 
    };
    var promise = axios(Parameter);
    promise.then(function (result) {
    renderCity(result.data);
    });

    function renderCity(data) {
        for (const x of data) {
            citis.options[citis.options.length] = new Option(x.Name, x.Id);
        }
        citis.onchange = function () {
            district.length = 1;
            ward.length = 1;
            if(this.value != ""){
            const result = data.filter(n => n.Id === this.value);

            for (const k of result[0].Districts) {
                district.options[district.options.length] = new Option(k.Name, k.Id);
            }
            }
        };
        district.onchange = function () {
            ward.length = 1;
            const dataCity = data.filter((n) => n.Id === citis.value);
            if (this.value != "") {
            const dataWards = dataCity[0].Districts.filter(n => n.Id === this.value)[0].Wards;

            for (const w of dataWards) {
                wards.options[wards.options.length] = new Option(w.Name, w.Id);
            }
            }
        };
    }