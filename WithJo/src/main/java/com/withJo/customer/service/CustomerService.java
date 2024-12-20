package com.withJo.customer.service;

import java.util.List;

import com.withJo.customer.domain.CustomerVo;


public interface CustomerService {
	
	List<CustomerVo> customerSelectList(int start, int end, String searchField, String searchKeyword);
	public int customerTotalCount(String searchField, String searchKeyword);
	public int customerInsertOne(CustomerVo customerVo);
	public CustomerVo customerSelectOne(int customerNo);
	public int customerUpdateOne(CustomerVo customerVo);
	public int customerDeleteOne(int customerNo);
}
