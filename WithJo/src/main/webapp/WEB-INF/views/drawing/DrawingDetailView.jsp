<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추첨하기</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="/css/common/common.css">
<link rel="stylesheet" href="/css/event/drawing/drawingDetail.css">
<script defer src="/js/common/common.js"></script>
<script src="/js/event/drawing/drawingDetail.js"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/views/Header.jsp"/>

    <div id="drawingContainer">
        <div>
        	<div class="btnDiv">
	    		<c:if test="${memberVo.authority >= 1}">
					<button class="btn2" type="button" onclick="pageMovedrawingList();">게시판 추첨 관리</button>
	            </c:if>	            
	    	</div>
            <div class="detailHeader">
                <p>${drawingVo.drawingRound} 회차
                    <span class="dateSpan">${drawingVo.drawingStartDate} / ${drawingVo.drawingEndDate}</span>
                </p>
            </div>
            <div class="detailBody">
                <div class="drawingMember" id="drawingMember">
                	<div>
                		<p>해당기한내에 게시글을 작성하신분들중 랜덤으로 3명에게 포인트를 드립니다.</p>
                		<p>당첨되신분들 축하합니다!</p>
                	</div>
                	<div>
                		<p>${drawingVo.drawingMemberNo}</p>
                	</div>
                </div>
            </div>        
               
            <div class="reminderDiv">
                <ul>
                    <li>※본 이벤트 기한은 변경될 수 있습니다.</li>
                </ul>
            </div>           

            <div class="btnDiv">
                <button class="btn2" type="button" onclick="pageMoveEventList();">돌아가기</button>             
            </div>      
        </div>
    </div>
    <jsp:include page="/WEB-INF/views/Footer.jsp"/>
</body>
</html>