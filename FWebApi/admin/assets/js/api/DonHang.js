import { getDataApiWithToken as ketnoi } from "./global.js";


  function DonHang()
{
    this.GetById = function(id){
        return ketnoi("GET","/api/DonHangController_r/get-by-id/"+id)
    }
    this.update=function(id,status){
        return ketnoi("PUT",`/api/DonHangController_r/update?id=${id}&TrangThai=${status}`)
    }
    this.delete=function(id){
        return ketnoi("DELETE" ,"/api/DonHangController_r/delete-DonHang/"+id)

    }

    this.Seach=function(page,pageSize,TKId,date1,date2,TrangThai,SanPhamId){
        const a = 
    {
        "page": page,
        "pageSize":pageSize,
        "TaiKhoanId": TKId,
        "NgayTao": date1,
        "NgayThanhToan": date2,
        "TrangThai": TrangThai,
        "SanPhamId": SanPhamId
    }

    return ketnoi("POST","/api/DonHangController_r/search",a)

    }
}



function printHtml(data) {
    let popupWin = window.open('', '_blank', 'top=0,left=0,height=100%,width=auto');

    // Kiểm tra xem popupWin có tồn tại và không phải là null
    if (popupWin && !popupWin.closed) {
        // Chờ cửa sổ mới load hoàn toàn trước khi viết nội dung
        popupWin.onload = function() {
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
    
            popupWin.document.close(); // Kết thúc việc ghi
        };
    } else {
        console.error('Cửa sổ đã đóng hoặc không tồn tại.');
    }
    
    
  }







function printDonHang(data) {
    
    var n = 0;
        var sl = 0;
        var sp;
        
        data.list_json_chitiethoadon.forEach(x => {
          sl += x.soLuong;
        sp += `
          <tr>
              <td>`+ (++n) + `</td>
              <td>`+ x.tenSanPham  + `</td>
              <td>`+x.giaSanPham+`</td>
              <td>`+ x.soLuong + `</td>
              <td>`+ x.giaTien + `</td>
          </tr>
          `});
    
    
    var str = `
          <section style="text-align: center;">
              <h1>HÓA ĐƠN GIÁ TRỊ GIA TĂNG</h1>
              <div class="ban">(Bản thể hiện hóa đơn điện tử)</div>
              <div class="ngay">
                  <p >${data.ngayTao}</p>
                 
              </div>
          </section>
          <div class="le dam">mã đơn hàng:${data.id}</div>
          <div class="le dam">Tên đơn vị bán hàng:Hiệp Khoảnh Khắc</div>
          <div class="le">Mã số thuế: 3269289058</div>
          <div class="le">mặt trăng tọa độ </div>
          <div class="le doi">Điện thoại: 0999999999</div>
          <div class="le doi">Số tài khoản: 9999999999</div>
          <div class="le doi">Điện thoại kh: ${data.list_json_DiaChi.sothoai}</div>
          <div class="le dam">Người mua hàng: `+ data.list_json_DiaChi.ten + `</div>
          <div class="le">Email: `+ data.list_json_DiaChi.email + `</div>
          <div class="le">Địa chỉ:Thành phố :${data.list_json_DiaChi.thanhPho}, Huyện:${data.list_json_DiaChi.huyen},Xã :${data.list_json_DiaChi.xa}</div>
          <div class="le doi">Hình thức thanh toán: thanh toán trực tiếp</div>
          <div class="le">Ghi chú: `+ data.list_json_DiaChi.giChu + `</div>
          <table>
                <thead>
              <tr>
                  <th>STT</th>
                  <th>Tên sản phẩm</th>
                  <th>Giá Sản phẩm</th>
                  <th>Số lượng</th>
                  <th>Thành tiền</th>
              </tr>
              </thead>
              <tbody>
              ${sp}
              <tr>
                <td></td>
                <td></td>
                <td class="dam">Tổng</td>
                <td class="dam">`+ sl + `</td>
                <td class="dam"> ${data.thanhTien}</td>
                </tr>
            </table>
        <div class="doi dam ky">Người mua hàng</div>
        <div class="doi dam ky">Người bán hàng</div>
        <div class="doi ky1">(Ký, ghi rõ họ tên)</div>
        <div class="doi ky1">(Ký, ghi rõ họ tên)</div>
        `;
              
             
              
      
        
      
      
      

      alert(str)
      printHtml(str)


    }


  export{DonHang,printDonHang}