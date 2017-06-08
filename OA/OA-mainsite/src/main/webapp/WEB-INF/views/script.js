// JavaScript Document
function iframeFresh(whickLink)
{
	//alert("slmeth");
	var fragment = document.getElementById("fragment");
	var x = whickLink.innerText;
	fragment.setAttribute("src",x+".jsp");
}