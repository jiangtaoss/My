function checkNum() {
	var num1 = document.getElementById("num1").value;
	var num2 = document.getElementById("num2").value;
	if(num1=="" || num2=="") {
		window.alert("您输入的数字为空");
		return false;
	}
	//正则表达式，验证是否为非数字提交
	var reg = /^[1-9]\d*(\.[0-9]+)?$|^0$/i;
	if(!reg.test(num1)) {
		window.alert("num1不是数字");
		return false;
	}
	//不知道为什么text不能用两次，解决办法是在将正则表达式赋给reg 
	//原因： 将正则表达式的g去掉就好了
	 //reg = /^[1-9]\d*(\.[0-9]+)?$|0$/gi;
	if(!reg.test(num2)) {
		window.alert("num2不是数字");
		return false;
	}
}