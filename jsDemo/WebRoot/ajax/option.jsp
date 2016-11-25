<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'option.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<select id="provinceId" style="width: 111px">
		<option>请选择省份</option>
		<option>湖北</option>
		<option>北京</option>
	</select> &nbsp;&nbsp;
	<select id="cityId" style="width:111px">
		<option>请选择城市</option>
	</select>

	<script type="text/javascript">
		var ajax = null;
		try {
			ajax = new ActionXObject("microsoft.xmlhttp");
		} catch (e1) {
			try {
				ajax = new XMLHttpRequest();
			} catch (e2) {
				alert("请更换浏览器。")
			}
		}

		if (ajax !== null) {
			document.getElementById("provinceId").onchange = function() {
				var n = this.selectedIndex;
				var provinceElement = this[n];
				var province = provinceElement.innerHTML;
				var cityElement = document.getElementById("cityId");
				cityElement.options.length = 1;
				if ("请选择省份" != province) {
					var method = "post";
					var url = "${pageContext.request.contextPath}/optionServlet?time=" + new Date().getTime();
					ajax.open(method, url);
					ajax.setRequestHeader("content-type", "application/x-www-form-urlencoded");
					ajax.send("province=" + province);

					ajax.onreadystatechange = function() {
						if (ajax.readyState == 4) {
							if (ajax.status == 200) {
								var xml = ajax.responseXML;
								var cityElementArray = xml.getElementsByTagName("city");
								for (var i = 0; i < cityElementArray.length; i++) {
									var element = document.createElement("option");
									element.innerHTML = cityElementArray[i].firstChild.nodeValue;
									cityElement.appendChild(element);
								}
							}
						}
					}
				}
			}
		} else {
			alert("请更换浏览器。");
		}
	</script>
</body>
</html>
