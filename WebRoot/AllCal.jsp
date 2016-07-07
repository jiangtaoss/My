<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AllCal.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/js1.js" type="text/javascript"></script>
  </head>
  <%
  	String num1 = request.getParameter("num1");
  	String num2 = request.getParameter("num2");
  	String oper = request.getParameter("operator");
  	
  	double res = 0;
  	
  	if(num1 != null && num2 != null && oper != null) {
  		double d_num1 = Double.parseDouble(num1);
  		double d_num2 = Double.parseDouble(num2);
  		
  		if(oper.equals("+")) {
  			res = d_num1 + d_num2;
  		} else if(oper.equals("-")) {
  			res = d_num1 - d_num2;
  		} else if(oper.equals("*")) {
  			res = d_num1 * d_num2;
  		} else if(oper.equals("/")) {
  			res = d_num1 / d_num2;
  		}
  	}
   %>
  <body>
    <h1 align="center">计算器JSP版</h1>
    <hr/>
    <form action="/Jsp3/AllCal.jsp" method="post">
    数字1：<input type="text" id="num1" value="<%=num1 %>" name="num1" /><br/>
      数字2：<input type="text" id="num2" value="<%=num2 %>" name="num2" /><br/>
      操作符：<select name="operator">
      <option value="+">+</option>
      <option value="-">-</option>
      <option value="*">*</option>
      <option value="/">/</option>
      </select><br/>
      <input type="submit" onclick="return checkNum()" value="计算"/> 
        输出结果为：<%=res %>
      </form>
      <hr/>
    
  </body>
</html>
