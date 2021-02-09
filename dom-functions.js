// interactivity and info messaging

function message(id, msg) {
  var x = document.getElementById(id);
  var new_html = `<span class="closebtn btn" onclick="resetLevel();">TRY AGAIN</span> ${msg}`;
  x.innerHTML = new_html;
  x.style.display = "block";
} 


document.onkeyup = function(event) {
    if (event.keyCode === 27) {
        document.getElementById('messenger').style.display='none';
    }
    if([37,38,39,40].indexOf(event.keyCode) > -1) {
        keydown = 0;
        // input_sleeping = false;
    }
 }

 function resetLevel() {
     location.reload();
 }
