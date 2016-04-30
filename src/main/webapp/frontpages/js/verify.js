$(function() {
		$('[data-toggle="popover"]').popover();
	})
function getRexp(obj) {
	if(obj.hasClass("arithmeticNumber")){
		var oRexp = /^[1-9]\d*$/;
		return oRexp;
	}
	if(obj.hasClass("realNumber")){
		var oRexp = /^(0|([1-9]\d*))(\.\d+|\d+)$/;
		return oRexp;
	}
	if(obj.hasClass("digit6")){
		var oRexp = /^\d{6}$/;
		return oRexp;
	}
	if(obj.hasClass("digit15")){
		var oRexp = /^\d{15}$/;
		return oRexp;
	}
	if(obj.hasClass("digit16")){
		var oRexp = /^\d{16}$/;
		return oRexp;
	}
	if(obj.hasClass("identityCard")){
		var oRexp = /^\d{6}((1[89])|(2\d))\d{2}((0\d)|(1[0-2]))((3[01])|([0-2]\d))\d{3}(\d|X)$/;
		return oRexp;
	}
	if(obj.hasClass("FixedPhone")){
		var oRexp = /^((\d{7,8})|(\b\d{4}[- ]?\d{7,8}\b))$/;
		return oRexp;
	}
	if(obj.hasClass("percent")){
		var oRexp = /^(0|([1-9]\d*))(\.\d+|\d+)%$/;
		return oRexp;
	}
	if(obj.hasClass("telPhone")){
		var oRexp = /^\b(1[358]\d{9})\b$/;
		return oRexp;
	}
	return null;
}

function verify(obj, str, errorMesg) {
	var value = getValue(obj);
	if (value != "") {
		var oRexp = getRexp(obj);
		if (oRexp != null) {
			if (oRexp.test($(obj).val())) {
//				$(obj).attr("data-content", "");
//				$(obj).popover('hide');
//				flag = true;
				return "";
			} else {
//				$(obj).attr("data-content", errorMesg);
//				$(obj).popover('show');
//				flag = false;
				errorMesg = str + errorMesg;
				return errorMesg;
			}
		}else{
			return "";
		}
	} else {
		if (verifyRequired(obj)) {
			errorMesg = str+"为必输";
			return errorMesg;
		}
	}
	return "";
}
//function getVerifyType(obj){
//	if()
//}
function verifyRequired(obj) {
	if ($(obj).hasClass("required")) {
		return true;
	}
	return false;
}
function getValue(obj){
	if($(obj).hasClass("btn")){
		return $(obj).html();
	}else{
		return $(obj).val();
	}
}

//鍙厑璁歌緭鍏ユ暟瀛�
function onlyInputNumber(obj) {
	$(obj).val($(obj).val().replace(/\D/gi, ""));
}
var getTimes = 0;
var presentLine = 0;
//寮瑰嚭妯℃�妗�
function getModal(erroMesg,pageWidth,pageHeight){
//	alert(erroMesg);
	var panelHeight = 0;
	$("body:last-child").after("<div class='modal fade' id='myHint'><div class='modal-dialog modal-dialog-verify'><div class='modal-content modal-content-verify'><div class='modal-body modal-body-verify'><div class='row'><div class='col-md-2 col-sm-2'><h4 class='modal-title modal-title-verify'>提示:</h4></div><div class='col-md-1 col-md-offset-8 col-sm-1 col-sm-offset-8'><button class= 'close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button></div></div><div class='row'><div class='text-center  bg-erroMesg'><p class='errorMesg'></p></div></div><div class='text-center'><button class='btn btn-danger confirm' data-dismiss='modal'>确定</button></div></div></div></div></div>");
//	alert(parseFloat(parseFloat(pageWidth)-parseFloat($("#myHint>.modal-dialog").css("width")))/2);
	$(".errorMesg").html(erroMesg);
	$(".modal-dialog-verify").css({
		left:function(){
			return parseFloat(parseFloat(pageWidth)-parseFloat($("#myHint>.modal-dialog-verify").css("width")))/2;
//			return 212;
		},
		top:function(){
			if(parseInt(getTimes)==0){
				panelHeight = parseFloat(395)-parseFloat((10-erroMesg.split("<br/>").length)*20);
				getTimes = getTimes + 1;
				presentLine = erroMesg.split("<br/>").length-1;
				//alert(presentLine);
				//alert(panelHeight);
				$("#myHint>.modal-dialog-verify>.modal-content-verify").css("height",panelHeight);
			}
			if(getTimes>0){
				panelHeight = parseFloat($("#myHint>.modal-dialog>.modal-content").css("height"))-parseFloat((presentLine-erroMesg.split("<br/>").length)*20);
				presentLine = erroMesg.split("<br/>").length;
				$("#myHint>.modal-dialog-verify>.modal-content-verify").css("height",panelHeight);
			}
//			alert(panelHeight);
			return parseFloat(parseFloat(pageHeight)-parseFloat(panelHeight))/2;
//			return 274;
		}
	});
	$("#myHint>.modal-dialog>.modal-content-verify").css("height",panelHeight);
//	alert($(".bg-erroMesg").css("height"));
	$("#myHint").modal("show");
	erroMesg = "";
}
