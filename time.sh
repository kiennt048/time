sudo apt-get update
sudo apt-get install -yy apache2
sudo echo "
<html>
<head>
<title>(Type a title for your page here)</title>
<script type="text/javascript"> 
function display_c(){
var refresh=1000; // Refresh rate in milli seconds
mytime=setTimeout('display_ct()',refresh)
}

function display_ct() {
var x = new Date()
document.getElementById('ct').innerHTML = x;
display_c();
 }
</script>
</head>

<body onload=display_ct();>
<span id='ct' ></span>

</body>
</html> " > 123.html 

sudo cp 123.html /var/www/html/index.html
sudo systemctl restart apache2
