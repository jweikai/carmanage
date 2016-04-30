$(function() {
	
	$("#aa").click(function(){
		alert("123");
		if(controlPage($(window).width(),$(window).height())){
			alert("1");
			$("#myform").submit();
		}
	});
})
function verifyPage() {
	var errorMesg = "";
	$(".identityCard").each(function(){
		var str = $(this).attr("data-type");
		if(verify($(this),str,"证件号码格式错误")!=""){
			errorMesg =errorMesg + verify($(this),str,"证件号码格式错误")+"<br/>";
			return false;
		}
	});
	$(".verifyBox").find("button:eq(0)").each(function(){
		var str = $(this).attr("data-type");
		if(verify($(this),str,"")!=""){
			errorMesg =errorMesg + verify($(this),str,"")+"<br/>";
			return false;
		}
	});
	$(".telPhone").each(function(){
		var str = $(this).attr("data-type");
		if(verify($(this),str,"格式错误")!=""){
			errorMesg =errorMesg + verify($(this),str,"格式错误")+"<br/>";
			return false;
		}
	});
	$(".verifyText").each(function(){
		var str = $(this).attr("data-type");
		if(verify($(this),str,"")!=""){
			errorMesg =errorMesg + verify($(this),str,"")+"<br/>";
			return false;
		}
	});
	$(".arithmeticNumber").each(function(){
		var str = $(this).attr("data-type");
		if(verify($(this),str,"应为正整数")!=""){
			errorMesg =errorMesg + verify($(this),str,"应为正整数")+"<br/>";
			return false;
		}
	});
	$(".FixedPhone").each(function(){
		var str = $(this).attr("data-type");
		if(verify($(this),str,"固话格式错误")!=""){
			errorMesg =errorMesg + verify($(this),str,"固话格式错误")+"<br/>";
			return false;
		}
	});
	return errorMesg;

}
function controlPage(pageWidth,pageHeight){
	var result = verifyPage();
	if(result!=""){
//		alert(verifyPage());
		getModal(result,pageWidth,pageHeight);
		return false;
	}else{
		return true;
	}
}