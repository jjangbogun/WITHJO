function noticeCheck() {
	let noticeContent2 = $('#noticeContent2').val();
	noticeContent2 = noticeContent2.replaceAll(/'/g, '`');
	noticeContent2 = noticeContent2.replaceAll(/"/g, '&quot;');
	$('#noticeContent').val(noticeContent2);		
	document.getElementById("noticeForm").submit(); 
}

function imgDelete() {
	$('#noticeImgDelete').val('1');
	noticeCheck();
}