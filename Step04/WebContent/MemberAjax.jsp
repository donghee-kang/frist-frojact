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
  
	$("#button").click(function(){
	var data = $("#frm").serialize();
		$.ajax({
		url:"ServerAjax.jsp",
		data:data,
		method:'get',
		success:function(data){
			var arr = data.split(",");
			var result = "";
			for(i=0;i<arr.length;i++){
				var str = arr[i].split(" ");
				var temp = "<p>";
				for(j=0;j<str.length;j++){
				result +=	temp +="<span>" +str[j]+"</span>";
				}
				result = "</p>";
			}
			$("#area").html(result);
			
		}
	  });
	});
  });

</script>
</head>
<body>
<form id="frm">
이름 : <input type="text" name="name">
<button  type="button">전송</button>
</form>
<div id="area"></div>
</body>
</html>