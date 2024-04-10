function renderPagination(currentPage, totalPages) {
    var paginationElement = document.getElementById('page');
    $("#page").empty()
  
    var pagesToShow = 5; // Số lượng trang hiển thị trước và sau trang hiện tại
    var ellipsisThreshold = 3; // Hiển thị dấu "..." nếu số trang vượt quá ngưỡng này
  
    // Tạo nút Previous
    var previousPage = currentPage - 1;
   
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
  
    
   
  }
  
  function createPageElement(text, isCurrent) {
    var pageElement = document.createElement('li');
    var linkElement = document.createElement('a');

    linkElement.href = '#';
    linkElement.textContent = text;
    
      linkElement.onclick = function() {
        load(text);
    
    
  };
  
    if (isCurrent) {
      pageElement.classList.add('active');
    }
  
    pageElement.appendChild(linkElement);

  
    return pageElement;
  }
  
  function createEllipsisElement() {
    var ellipsisElement = document.createElement('li');
    ellipsisElement.textContent = '...';
    return ellipsisElement;
  }
  


  
export {renderPagination}

