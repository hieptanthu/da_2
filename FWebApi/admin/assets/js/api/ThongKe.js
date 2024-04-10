import { callApi,getDataApi,getDataApiWithToken as ketnoi } from "./global.js";




function ThongKe(Api) {

    this.Thongke_SanPhamBanChay = function (date1,date2) {
        const a= `?date1=${date1}&date2=${date2}`
        return(ketnoi("GET","/api/ThongKe/Thongke_SanPhamBanChay"+a));
    }
    this.Thongke_UserVip = function (date1,date2) {
        const a= `?date1=${date1}&date2=${date2}`
        return(ketnoi("GET", "/api/ThongKe/Thongke_UserVip"+a));
    }

    this.Thongke_sanPhamDoanhThu = function (date1,date2) {
        const a= `?date1=${date1}&date2=${date2}`
        return(ketnoi("GET", "/api/ThongKe/Thongke_sanPhamDoanhThu"+a));
    }

    this.Thongke_sanPhamQuanTam = function () {
        return (ketnoi("GET","/api/ThongKe/Thongke_sanPhamQuanTam"));
    }

   
}

export{ThongKe}
