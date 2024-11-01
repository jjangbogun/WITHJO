package com.withJo.drawing.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.withJo.customer.domain.CustomerVo;
import com.withJo.customer.service.CustomerService;
import com.withJo.drawing.domain.DrawingVo;
import com.withJo.drawing.service.DrawingService;
import com.withJo.notice.domain.NoticeVo;
import com.withJo.util.FileUpload;
import com.withJo.util.Paging;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;


@RequestMapping("/drawing")
@Controller
public class DrawingController {

	private Logger log = LoggerFactory.getLogger(DrawingController.class);
	private final String logTitleMsg = "==DrawingController==";
	
	@Autowired
	private DrawingService drawingService;
	
	@GetMapping("/list")
	public String getDrawingList(@RequestParam(defaultValue = "all") String searchField,
			@RequestParam(defaultValue = "") String searchKeyword,
			@RequestParam(defaultValue = "1") int curPage, Model model) {
		log.info(logTitleMsg);
		log.info("getDrawingList");
		log.info("searchField: {}", searchField);
		log.info("searchKeyword: {}", searchKeyword);
		
		int totalCount = drawingService.drawingTotalCount(searchField, searchKeyword);
		
		log.info("totalCount: {}", totalCount);
		Paging pagingVo = new Paging(totalCount, curPage);
		
		int start = pagingVo.getPageBegin();
		int end = pagingVo.getPageEnd();		
		
		List<DrawingVo> drawingList = drawingService.drawingSelectList(start, end, searchField, searchKeyword);
		System.out.println(drawingList);
		model.addAttribute("drawingList", drawingList);
		
		Map<String, Object> pagingMap = new HashMap<>();
		pagingMap.put("totalCount", totalCount);
		pagingMap.put("pagingVo", pagingVo);
		
		Map<String, Object> searchMap = new HashMap<>();
		searchMap.put("searchField", searchField);
		searchMap.put("searchKeyword", searchKeyword);
		
		model.addAttribute("pagingMap", pagingMap);
		model.addAttribute("searchMap", searchMap);
		
		log.info("searchMap: {}", searchMap);
		return "drawing/DrawingListView";
		
	}
	
	@GetMapping("/add")
	public String drawingAdd(Model model) {
		log.info(logTitleMsg);
		log.info("@GetMapping drawingAdd");

		return "drawing/DrawingFormView";
	}
	
	@PostMapping("/make")
	@ResponseBody
	public ResponseEntity<?> drawingAdd(@RequestParam(required = true) String boardCredate, 
	                                    @RequestParam(required = true) Integer personnel) 
	                                    throws ServletException, IOException {
	    log.info(logTitleMsg);
	    log.info("boardCredate: {}, personnel: {}", boardCredate, personnel);
	     
	    List<Map<String, Object>> selectedMembers = drawingService.drawingSelect(boardCredate, personnel);
	    
	    log.info("selectedMembers: {}", selectedMembers);  // 이 로그를 추가

	    Map<String, Object> response = new HashMap<>();
	    response.put("selectedMembers", selectedMembers);
	    
	    log.info("response: {}", response);  // 로그 메시지 수정
	    return ResponseEntity.ok(response);
	}
	
	@GetMapping("/detail")
	public String drawingDetail(Model model) {
		log.info(logTitleMsg);
		
		DrawingVo drawingVo = drawingService.drawingSelectOne();
		
		model.addAttribute("drawingVo", drawingVo);
		
		return "drawing/DrawingDetailView";
	}
//
//	@GetMapping("/update")
//	public String customerUpdate(@RequestParam int customerNo, Model model) {
//		log.info(logTitleMsg);
//		log.info("@GetMapping noticeUpdate noticeNo: {}", customerNo);
//		
//		CustomerVo customerVo =customerService.customerSelectOne(customerNo);
//		
//		model.addAttribute("customerVo", customerVo);
//		
//		return "customer/CustomerUpdateView";
//	}
//	
//	@PostMapping("/update")
//	public String customerUpdate(HttpServletRequest request, Model model) throws ServletException, IOException {
//	    log.info(logTitleMsg);
//	    log.info("@GetMapping 체크11: {}");
//
//	    String customerNo = null; 
//
//	    try {	        
//	    	customerNo = request.getParameter("customerNo");
//	        String customerAns = request.getParameter("customerAns");
//	        String memberANo = request.getParameter("memberANo");
//	        String customerCheck = request.getParameter("customerCheck");
//	        
//	        log.info("@GetMapping 업데이트 체크: {}", customerAns);
//
//	        CustomerVo customerVo = new CustomerVo();
//	        
//	        customerVo.setCustomerNo(Integer.parseInt(customerNo));
//	        customerVo.setCustomerAns(customerAns);
//	        customerVo.setMemberANo(Integer.parseInt(memberANo));
//	        customerVo.setCustomerCheck(customerCheck);
//	        
//	        customerService.customerUpdateOne(customerVo);
//
//	    } catch (Exception e) {
//	        log.error("업데이트 중 오류 발생", e);
//	        return "redirect:/customer/list"; 
//	    }
//
//	    return "redirect:/customer/detail?customerNo=" + customerNo; 
//	}
//	
//	@PostMapping("/delete")
//	public String customerDelete(@RequestParam int customerNo) {
//	    log.info("Deleting customer with ID: {}", customerNo);
//	    
//	    customerService.customerDeleteOne(customerNo);
//
//	    return "redirect:/customer/list"; 
//	}
	
}
