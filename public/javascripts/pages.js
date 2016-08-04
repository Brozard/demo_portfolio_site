function getPage(page) {
  var text = new XMLHttpRequest();
  text.open("GET", page, false);
  text.send(null);
  document.getElementById("section").innerHTML = text.responseText;
}

window.onload = function(){
  getPage("_repos.html")
};