


function themModule( id,moduleName){


// // Tên của module mà bạn muốn tải
// const moduleName = 'module1';

// Tạo đường dẫn đến tệp HTML module
const moduleHTMLPath = `/modules/${moduleName}/html/${moduleName}.html`;

// Sử dụng Fetch API để tải tệp HTML module
fetch(moduleHTMLPath)
  .then(response => response.text())
  .then(data => {
    
    // Thêm nội dung của module vào vùng hiển thị
    
      $(`${id}`).append(data);
    
    var i =1
    console.log(i);
    i++
  })
  .catch(error => {
    console.error(`Lỗi tải tệp HTML module: ${error}`);
  });
}







  

    
    








// Chỉ gọi SanPhamModule sau khi đã nạp header và slide




