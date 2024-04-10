

var user=localStorage.getItem("User")
function loadUser(data){
    var Name = document.getElementById("Name")
    var Sdt = document.getElementById("Sdt")
    Name.innerText=data.userName;
    Sdt.innerText=data.soDienThoai
}


loadUser(user)

