
import { getCookie } from "../Cookie.js";

var current_url = "https://localhost:7031/admin";

var token = getCookie('token') ? JSON.parse(getCookie('token')) : [];




 function callApi(method, url, data) {
    
    $.ajax({
        url:current_url+url,
        type: method,
        data: JSON.stringify(data),
        contentType: 'application/json',
        success: function(response) {
          // Xử lý kết quả sau khi dữ liệu đã được gửi đi
          console.log('Dữ liệu đã được gửi đi thành công.');
      
          // Sau đó, gửi yêu cầu GET để lấy dữ liệu từ API
          $.get(url, function(data) {
            // Xử lý dữ liệu API trả về
            console.log(data) 
          });
        },
        error: function(error) {
          // Xử lý lỗi khi gửi dữ liệu
          console.error('Lỗi khi gửi dữ liệu:', error);
        }
      });
  }
 ;


 function getDataApi(method, url, data) {
  console.log(method+"\nurl:"+url +"\ndata:"+JSON.stringify(data))
return new Promise(function (resolve, reject) {
    $.ajax({
      
      
        url: current_url + url,
        type: method,
        
        data: JSON.stringify(data),
       
        contentType: 'application/json',
        success: function (response) {
            console.log(response) 
            resolve(response);
        },
        error: function (error) {
          // Xử lý lỗi
          if (error.status == 401) {
            console.log("Ok")
              // Lỗi 404: Chuyển đến trang 404 hoặc thực hiện hành động tương ứng
              window.location = "/pageHtml/logGin.html";
          } else if (error.status === 500) {
              // Lỗi 500: Chuyển đến trang lỗi máy chủ hoặc thực hiện hành động tương ứng
              window.location.href = '/500.html';
          } else {
              // Xử lý các loại lỗi khác theo ý của bạn
              reject(error);
          }
      }
        
    });
});
}

function UpFile(method,url,formData) {
  console.log(method+"\n url"+url+"\n data"+data)
  
  $.ajax({
      
      
    url: current_url + url,
    type: method,
    data: formData,
    contentType: false,
    processData: false,
    success: function (response) {
      return 
    },
    error: function (error) {
      console.log(error.status)
      if(error.status==401)
      {
        console.log("Ok")
        window.location="/pageHtml/logGin.html"
      }
      else if(error.status=404){
        alert("nofund")

      }else{
        reject(error);
      }
        
    }
    
});

    

}


function getDataApiWithToken(method, url, data ) {
  console.log(method+"\n url"+url+"\n data"+data)
  return new Promise(function (resolve) {
      $.ajax({
          url: current_url + url,
          type: method,
          data: data !== null ? JSON.stringify(data) : null,
          contentType: 'application/json',
          headers: {
              'Authorization': 'Bearer ' + token
          },
          success: function (response) {
              console.log(response);
              resolve(response);
          },
          error: function (error) {
            console.log(error.status)
            
              if(error.status==401)
              {
                console.log("Ok")
                
                debugger
                window.location.href="/pageHtml/logGin.html"
              }
              else if(error.status=404){
                alert("nofund")

              }
              else{
                reject(error);
              }
             
          }
      });
  });
}


function SetToken(tk){
  token=tk
  console.log(token)
}

export{callApi,getDataApi,getDataApiWithToken,UpFile,SetToken}


