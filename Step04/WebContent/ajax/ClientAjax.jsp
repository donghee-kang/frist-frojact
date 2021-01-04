<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$(function () {
	$("#btn").click(function () {
		var url = "AjaxTest.jsp";
		$.ajax({
			url:url, //url 주소 적으면 된다.
			//data:data, // 보낼 데이터 적으면 된다
			type:'get',//form get post 타입 적으면 된다
			success: function result(data) { //out.write("test;message;Hello;World"); 이걸 받는다 
				alert(data);
				$("#result").html(data);
  			 	
 			 	 
			}
		});
	});
	
});
</script>

</head>
<body>
<a href="#" id="btn">ajax 테스트</a>
<div id="result"></div>
</body>
</html>