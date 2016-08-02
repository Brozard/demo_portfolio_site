// document.onload = function() {
//   alert("test");
//   function changePage() {
//     document.getElementById("test").innerHTML = "Test";// getHTML(tag);
//   };

//   document.getElementById("button").onclick = function() {
//     document.getElementById("test").innerHTML = "Test";
//   };
//   // function pageChange() {

//   // };

//   switch getHTML(tag){
//     case about:
//       "About";
//       break;
//     case contact:
//       "Contact";  
//       break;
//     case home:
//     default:
//       "Home";
//   };
// };

alert("test");

function homePage() {
  document.getElementById("section").innerHTML = "\
    <p>\
      <a href='https://github.com/Brozard/REPL_Game'>\
        <img src='images/food_finder.png' alt='Food Finder' />\
        Food Finder - a REPL game\
      </a>\
      <br/><br/>\
      This program was written in one weekend. After the first week at Wyncode Academy, our class assignment was to create a simple REPL game that gave players multiple layers of multiple options. I chose to create a game where our classmates were working late over the weekend, and we needed to order food.\
    </p>\
    <p>\
      <a href='https://github.com/Brozard/Voter_Sim'>\
        <img src='http://fillmurray.com/275/150' />\
        Voter Sim - a CRUD REPL program\
      </a>\
      <br/><br/>\
      This program was also written in one weekend. After the second week at Wyncode Academy, our class assignment was to create a REPL program that used classes to interact with Voters and Politicians. Our program had to be able to create, list (or read), update, and destroy Voters and Politicians, and have a menu system that would allow the user to keep going back to the main menu. I wanted to add more to my project than what the assignment called for, so I created a mock vote system.\
    </p>\
    <p>\
      <a href='https://github.com/kmay00/quiz_code'>\
        <img src='http://fillmurray.com/275/150' />\
        QwyzCode - an online quiz platform\
      </a>\
      <br/><br/>\
      \
    </p>\
    <p>\
      <a href='https://github.com/Brozard/discomerus_v1'>\
        <img src='http://fillmurray.com/275/150' />\
        Show Runner - an online quiz platform\
      </a>\
      <br/><br/>\
      \
    </p>\
  ";// getHTML(tag);
};

function aboutPage() {
  document.getElementById("test").innerHTML = "About";// getHTML(tag);
};

function contactPage() {
  document.getElementById("test").innerHTML = "Contact";// getHTML(tag);
};

window.onload = function(){
  homePage();
};