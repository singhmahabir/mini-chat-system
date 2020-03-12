function validateCredencials() {
	var x = document.forms["myForm"]["username"].value;
	if (x == null || x == "") {
		alert("User Name must be filled out");
		return false;
	}

	x = document.forms["myForm"]["password"].value;
	if (x == null || x.length <= 4 || x.length >= 21) {
		alert("Password must be filled out minimum 5 and maximum 20");
		return false;

	}
}

function validateForm() {
	var x = document.forms["myForm"]["uname"].value;
	if (x == null || x == "") {
		alert("User Name must be filled out");
		return false;
	}

	var x = document.forms["myForm"]["pass"].value;
	if (x == null || x.length <= 4 || x.length >= 21) {
		alert("Password must be filled out minimum 5 and maximum 20");
		return false;

	}

	var x = document.forms["myForm"]["ename"].value;
	var atpos = x.indexOf("@");
	var dotpos = x.lastIndexOf(".");
	if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
		alert("Not a valid e-mail address");
		return false;
	}

	var x = document.forms["myForm"]["dob"].value;

	if (x == null || x == "") {
		alert("date  must be filled out");
		return false;
	}

}