<%@ page
	language="java"
	import="java.util.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<script src="/js/angular.js"></script>
<title>My JSP 'index.jsp' starting page</title>
</head>

<body>
	<div
		ng-app="myApp"
		ng-controller="myCtrl"
		ng-init="names=[
{name:'Jani',country:'Norway'},
{name:'Hege',country:'Sweden'},
{name:'Kai',country:'Denmark'}]">

		名: <input
			type="text"
			ng-model="firstName"><br> 姓: <input
			type="text"
			ng-model="lastName"><br> <br> 姓名: {{firstName + " "
		+ lastName}} <input
			type="text"
			ng-model="name"
			value="hello angularjs"> This is my JSP page. <br>
		<h1>Hello {{name | uppercase}}</h1>
		<p>我的第一个表达式： {{ (5 + 5) | currency }}</p>
		<h2>价格计算器</h2>

		数量: <input
			type="number"
			ng-model="quantity11"> 价格: <input
			type="number"
			ng-model="price11">

		<p>
			<b>总价:</b> {{(quantity11 * price11 ) | currency }}
		</p>
		<p>使用 ng-repeat 来循环数组</p>
		<ul>
			<li data-ng-repeat="x in names">{{ x }}</li>
		</ul>
		<p>循环对象:</p>
		<ul>
			<li ng-repeat="x in names">{{ x.name + ', ' + x.country }}</li>
		</ul>

	</div>
	<script>
		var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.firstName= "John";
    $scope.lastName= "Doe";
});
	</script>
</body>
</html>
