<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>수강신청관리</title>
<!-- css 초기화 -->
<link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.2/reset.min.css"
  rel="stylesheet">
 <!-- 페이지 css -->
<link rel="stylesheet" href="/css/common/common.css">
<link rel="stylesheet" href="/css/course/courseList.css">
<!--  페이지 js -->
<script defer src="/js/common/common.js"></script>
<script defer src="/js/course/courseList.js"></script>
</head>
<body>
	<jsp:include page="/WEB-INF/views/Header.jsp"/>
	
		<div id="mainContainer">
			
			<div class="aboutPage">
				<div class="pageTitle">
					<span>수강신청</span>
				</div><!-- pageTitle -->
				
			</div><!-- aboutPage -->
			
			<div class="ageCategory">
					<div class="ageElement">
						<span><button class="ageCategoryBtn" name="all" onclick="moveCategoryFnc(0);">전체</button></span>
					</div>
					<div class="ageElement baby">
						<span><button class="ageCategoryBtn" name="baby" onclick="moveCategoryFnc(13);">유아</button></span>
					</div>
					<div class="ageElement youth">
						<span><button class="ageCategoryBtn" name="youth" onclick="moveCategoryFnc(19);">청소년</button></span>
					</div>
					<div class="ageElement adult">
						<span><button class="ageCategoryBtn" name="adult" onclick="moveCategoryFnc(20);">성인</button></span>
					</div>
			</div><!-- ageCategory -->
			<div class="courseCategory">
				<div class="courseFlexBox">
					<c:forEach var="courseVo" items="${courseList}">
							<div class="courseBox">
								<input class="numHidden" type="hidden" value="${courseVo.courseNo}">
								<div class="mainImg">메인이미지</div>
								<div>
									<span>${courseVo.courseName}</span>
								</div>
								<div class="">
									<span class="courseStartTime">${courseVo.courseStartTime}</span> 
									<span>~</span>
									<span class="courseEndTime">${courseVo.courseEndTime}</span> 
								</div>
								<div>
									<span class="courseCost">${courseVo.courseCost}</span>
								</div>
							</div>
					</c:forEach>
				</div>
			</div><!-- courseCategory -->
			<div class="courseList">
			
			</div><!-- courseList -->
			
		</div> <!--mainContainer-->
		
	<jsp:include page="/WEB-INF/views/Footer.jsp"/>
</body>
</html>