var current_url = "https://localhost:7087";



var token = "eyJhbGciOiJBMTI4Q0JDLUhTMjU2IiwidHlwIjoiSldUIn0.eyJ1bmlxdWVfbmFtZSI6InMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIiwiZW1haWwiOiJzICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICIsIm5iZiI6MTcwMDA2NzYzMiwiZXhwIjoxNzAwNjcyNDMyLCJpYXQiOjE3MDAwNjc2MzJ9.Wi0Tq8ws-dt-n7UK3aiWFmxgZBefOqLfOSraKVoJuMM"







 function callApi(method, url, data) {

    if(!data){
        data={};
    }
  
    
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
            console.log(response) 
           
          });
        },
        error: function (error) {
          // Xử lý lỗi
          if (error.status === 404) {
              // Lỗi 404: Chuyển đến trang 404 hoặc thực hiện hành động tương ứng
              window.location.href = '../../../modules/error/notFound404.html';
          } else if (error.status === 500) {
              // Lỗi 500: Chuyển đến trang lỗi máy chủ hoặc thực hiện hành động tương ứng
              window.location.href = '/500.html';
          } else {
              // Xử lý các loại lỗi khác theo ý của bạn\
              console.error(error)
              
          }
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
            if (error.status === 404) {
                // Lỗi 404: Chuyển đến trang 404 hoặc thực hiện hành động tương ứng
                window.location.href = '../';
            } else if (error.status === 500) {
                // Lỗi 500: Chuyển đến trang lỗi máy chủ hoặc thực hiện hành động tương ứng
                window.location.href = '/500.html';
            }
            else if (error.status === 401) {
                // Lỗi 500: Chuyển đến trang lỗi máy chủ hoặc thực hiện hành động tương ứng
                window.location.href = '/';
             } else {
                // Xử lý các loại lỗi khác theo ý của bạn
                console.error(error)
            }
        }
          
      });
  });
}


function getDataApiWithToken(method, url, data ) {

    
  return new Promise(function (resolve, reject) {
      $.ajax({
          url: current_url + url,
          type: method,
          data: data !== null ? JSON.stringify(data) : null,
          contentType: 'application/json',
          headers: {
              'Authorization': 'Bearer ' + token
          },
          success: function (response) {
            console.log(response) 
              resolve(response);
          },
          error: function (error) {
             console.error(error)
          }
      });
  });
}




export{callApi,getDataApi,getDataApiWithToken}


