/*
 * File name : admin.js
 * Author : swm
 * Date of issue : 2020.10.06
 * Update of revision : 
 */

// 공지사항 글쓰기 에디터
$(document).ready(function(){
	$('#summernote').summernote({
             height: 400,                 
             minHeight: null,             
             maxHeight: null,             
             focus: true                  
    });

	$('#write').click(function() {
		location.href="notice_registration";
	});
	
});