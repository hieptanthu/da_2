import { SanPham } from "../../../assets/js/api/SanPham.js";


var sp = new SanPham();

function renderSP(data,idHtml){
    console.log(`#${idHtml}`)
    const ds=$(`#${idHtml}`)
    
    for (let i = 1; i <= data.length; i++) {
            ds.append(`<li><a class="item" href="/HtmlPage/ChiTietSanPham.html?id=${data[i].id}">
                <div class="index index-${i}">${i}</div>
                <div class="info">
                    <h2>${data[i].tenSanPham}</h2>
                    <p>Lợt Xem :${data[i].view}</p>
                </div>
            </a></li>`)
    }
}


sp.getSpHot()
.then(function(data){
    renderSP(data,"SanPhamBanChay")
})

sp.getSpMoi()
.then(function(data){
    renderSP(data,"SanPhamMoi")
})
