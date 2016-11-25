function createAjax(){
	var ajax = null;
	try{
		ajax = new ActiveXObject("microsoft.xmlhttp");
	}catch(e1){
		try{
			ajax = new XMLHttpRequest();
		}catch(e2){
			alert("请更换浏览器.");
		}
	}
	return ajax;
}