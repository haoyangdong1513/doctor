<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${page.pageIndex == 1}">
			首页
			上一页
		</c:if>
		<c:if test="${page.pageIndex > 1}">
			<a href="javascript:void(0)" onclick="jump(1)">首页</a>
			<a href="javascript:void(0)" onclick="jump(${page.pageIndex-1})">上一页</a>
		</c:if>
		<c:if test="${page.pageIndex == page.pageTotal}">
			下一页
			尾页
		</c:if>
		<c:if test="${page.pageIndex < page.pageTotal}">
			<a href="javascript:void(0)" onclick="jump(${page.pageIndex+1})">下一页</a>
			<a href="javascript:void(0)" onclick="jump(${page.pageTotal})">尾页</a>
		</c:if>
		<select id="pageSizeSelect" onchange="jump(1)">
			<option ${page.pageSize==3?"selected":""} value="3">显示3条</option>
			<option ${page.pageSize==5?"selected":""} value="5">显示5条</option>
			<option ${page.pageSize==10?"selected":""} value="10">显示10条</option>
			<option ${page.pageSize==15?"selected":""} value="15">显示15条</option>
			<option ${page.pageSize==20?"selected":""} value="20">显示20条</option>
		</select>
		<%-- 当前页：${page.pageIndex} --%>
		当前页：<input type="text" id="pageIndex" value="${page.pageIndex}" style="width:20px"/> 
		总条数：${page.total}
		总页数：${page.pageTotal}
		<input type="button" value="Go~" onclick="go()"/>
		<script>
				function go(){
					
						var pageIndex = $("#pageIndex").val();
					var reg = /^[1-9]\d*$/;
					if(reg.test(pageIndex)){
						
						var pageindex1 = parseInt(pageIndex);//将字符串转换为数值
						
						var pageTotal = '${page.pageTotal}';
						var pageTotal1 = parseInt(pageTotal);//将字符串转换为数值
						
						if(pageindex1 > pageTotal1){
							jump(pageTotal);
						}else{
							jump(pageIndex);
						}
					}else{
						alert("请输入正确的页数");
					}
					
				}
				
		</script>