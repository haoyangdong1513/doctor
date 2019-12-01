package com.fh.model;

import java.util.List;

public class PageBean<T> {
	
	private Integer pageIndex =1 ;
	
	private Integer pageSize = 3;
	
	private Integer total;
	
	private Integer pageTotal;
	
	private Integer startIndex;
	
	private List<T> list;
	
	
	public Integer getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.pageTotal = (total-1)/pageSize+1;
		this.total = total;
	}

	public Integer getPageTotal() {
		return pageTotal;
	}

	public void setPageTotal(Integer pageTotal) {
		this.pageTotal = pageTotal;
	}

	public Integer getStartIndex() {
		return (this.getPageIndex()-1)*pageSize;
	}

	public void setStartIndex(Integer startIndex) {
		this.startIndex = startIndex;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}
	
	

}
