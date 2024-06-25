function check(){
	if (myform.username.value==""){
		alert("请输入用户名！");myform.username.focus();return;
	}
	if (myform.truename.value==""){
		alert("请输入真实姓名！");myform.truename.focus();return;
	}
	if (myform.pwd.value==""){
		alert("请输入密码！");myform.pwd.focus();return;
	}
	if (myform.pwd.value.length<1){
		alert("密码至少为6位，请重新输入！");myform.pwd.focus();return;
	}		
	if (myform.pwd1.value==""){
		alert("请确认密码！");myform.pwd1.focus();return;
	}
	if (myform.pwd.value!=myform.pwd1.value){
		alert("您两次输入的密码不一致，请重新输入！");myform.pwd.focus();return;
	}
	if(myform.cardno.value==""){
		alert("请证件号码！");myform.cardno.focus();return;
	}		
	if (myform.email.value==""){
		alert("请输入Email地址！");myform.email.focus();return;
	}
	var i=myform.email.value.indexOf("@");
	var j=myform.email.value.indexOf(".");
	if((i<0)||(i-j>0)||(j<0)){
		alert("您输入的Email地址不正确，请重新输入！");myform.email.value="";myform.email.focus();return;
	}
	myform.submit();		
}