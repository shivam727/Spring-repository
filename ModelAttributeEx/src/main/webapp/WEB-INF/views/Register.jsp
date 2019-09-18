<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.errorMsg {
	color: red;
}
</style>
<script language="javascript">
	function validate() {
		if (document.form1.empId.value == "") {
			document.getElementById("empIdError").innerHTML = "**Filed is Mandatory";
			return false;
		} else if (document.form1.empName.value == "") {
			document.getElementById("empNameError").innerHTML = "**Filed is Mandatory";
			return false;
		} else if (document.form1.empSal.value == "") {
			document.getElementById("empSalError").innerHTML = "**Filed is Mandatory";
			return false;
		}
		return true;
	}
	function validateNumaric() {
		var regexp = /^[0-9]*$/;
		var regexp1 = /^[0-9]\.[0-9]{3}$/;
		if (document.form1.empId.value != ""
				&& !document.form1.empId.value.match(regexp)) {
			document.form1.empId.value = "";
			document.getElementById("empIdError").innerHTML = "**Enter only numarics";
			document.getElementById("empId").style.backgroundColor = "yellow";
			return false;
		} else {
			document.getElementById("empIdError").innerHTML = "";
			document.getElementById("empId").style.backgroundColor = "white";
			return true;
		}

	}
</script>
</head>
<body onload="document.form1.empId.focus()">
	<pre>
<form action="insert" method="POST" name="form1"
			onsubmit="return validate()">
	Employee Id :<input type="text" name="empId" id="empId"
				onchange="validateNumaric()" maxlength="4"><span
				id="empIdError" class="errorMsg"></span>
	Employee Name :<input type="text" name="empName"><span
				id="empNameError" class="errorMsg"></span>
	Employee Salary: <input type="text" name="empSal"><span
				id="empSalError" class="errorMsg"></span>
	<input type="submit" value="Register">
	
</form>
</pre>
</body>
</html>
