
var body_child = document.getElementById('body_child')

function sanPham(){
    // Lấy tham chiếu đến đối tượng <object>
  var objectElement = document.getElementById("body_child");

  // Thay đổi giá trị thuộc tính data
  objectElement.data = "/admin/modules/SanPham/html/SanPham.html";
    
}





function themModule(moduleName){

  $(`#main`).empty();
  // // Tên của module mà bạn muốn tải
  // const moduleName = 'module1';
  
  // Tạo đường dẫn đến tệp HTML module
  const moduleHTMLPath = `/modules/${moduleName}/html/index.html`;
  
  // Sử dụng Fetch API để tải tệp HTML module
  fetch(moduleHTMLPath)
    .then(response => response.text())
    .then(data => {
      
      // Thêm nội dung của module vào vùng hiển thị
      
        $(`#main`).append(data);
      
    })
    .catch(error => {
      console.error(`Lỗi tải tệp HTML module: ${error}`);
    });
  }

  

  function themModuleHD(moduleName){

    $(`#main`).empty();
    // // Tên của module mà bạn muốn tải
    // const moduleName = 'module1';
    
    // Tạo đường dẫn đến tệp HTML module
    const moduleHTMLPath = `/modules/HoaDon/${moduleName}/html/index.html`;
    
    // Sử dụng Fetch API để tải tệp HTML module
    fetch(moduleHTMLPath)
      .then(response => response.text())
      .then(data => {
        
        // Thêm nội dung của module vào vùng hiển thị
        
          $(`#main`).append(data);
        
      })
      .catch(error => {
        console.error(`Lỗi tải tệp HTML module: ${error}`);
      });
    }
  


    function themModuleThongKe(moduleName){

      $(`#main`).empty();
      // // Tên của module mà bạn muốn tải
      // const moduleName = 'module1';
      
      // Tạo đường dẫn đến tệp HTML module
      const moduleHTMLPath = `/modules/ThongKe/${moduleName}/html/index.html`;
      
      // Sử dụng Fetch API để tải tệp HTML module
      fetch(moduleHTMLPath)
        .then(response => response.text())
        .then(data => {
          
          // Thêm nội dung của module vào vùng hiển thị
          
            $(`#main`).append(data);
          
        })
        .catch(error => {
          console.error(`Lỗi tải tệp HTML module: ${error}`);
        });
      }
    
    