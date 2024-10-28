

	
	/* 헤더고정 및 스크롤 감지 */
	var prevScrollTop = 0;

	  document.addEventListener("scroll", function(){
	      
	      var nowScrollTop = $(window).scrollTop(); //현재 스크롤 위치를 nowScrollTop 에 저장
	      
	      if (nowScrollTop > prevScrollTop){ $('header').addClass('active'); } 
	      // 스크롤 방향(Down) 내릴때 -> 헤더에 active 클래스 추가
	      else { $('header').removeClass('active'); } // 스크롤 방향(Up) 올릴때 -> 헤더에 active 클래스 제거
	      prevScrollTop = nowScrollTop;  // prevScroll, nowScrollTop 조건 판단 후, 현재 스크롤값을 prevScrollTop 에 저장

	  });
	   
	/*수강신청 페이지 move*/   
	$('.courseNavBtn').on("click", () => {
		location.href = "/course/list";
	});
	
	/*$('.categoryBtn').mouseover(function(){
		$('.hiddenDiv').addClass('showDiv');
	});*/
	
	
	
	function courseBtnFnc(btn){
		if(btn == 'course'){
			$('.navElement').addClass('showDiv');
		}else if(btn == 'event'){
			$('.hiddenDiv2').addClass('showDiv2');
		}else if(btn == 'board'){
			$('.hiddenDiv3').addClass('showDiv3');
		}else if(btn == 'about'){
			$('.hiddenDiv4').addClass('showDiv4');
		}
	};
/*
	$('nav').mouseleave(function(){
			$('.hiddenDiv').removeClass('showDiv1');
			$('.hiddenDiv').removeClass('showDiv2');
			$('.hiddenDiv').removeClass('showDiv3');
			$('.hiddenDiv').removeClass('showDiv4');
	});
*/

$('.boardNavBtn').on('click', () => {
	location.href = "/notice/list";
});

/*로그인 페이지 move*/
   $('.loginImg').on("click", () => {
      location.href = "/member/login";
   });
