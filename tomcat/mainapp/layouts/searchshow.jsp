<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.chicken.model.BookSnapshotBean"%>
	
<%
	ArrayList<BookSnapshotBean> bookSnapshotList=(ArrayList<BookSnapshotBean>)request.getAttribute("bookSnapshotList");
%>	

<!-- 搜索书籍结果 -->
<ul class="mainul">

	<!--根据检索后记录数n,生成n本书的缩略图 -->
	<%
		for (int i = 0; i < bookSnapshotList.size(); i++) {
			
			//将该次的书籍信息记录传递临时变量bookSnapshotBean，用html显示
			BookSnapshotBean bookSnapshotBean=bookSnapshotList.get(i);
	%>
			<li>
				<div>
					<a href="DetailClServlet?dowhat=findDetail&Bid=<%=bookSnapshotBean.getBid()%>" target="_blank"><img src=<%=bookSnapshotBean.getBimage()%>></a>
				</div>
				<div>
					<font class="price1">￥<%=bookSnapshotBean.getBprice()%></font><br> 
					<font class="bookname1"><%=bookSnapshotBean.getBname()%></font><br>
					<a href="#" class="shopname1"><%=bookSnapshotBean.getSname()%></a>
				</div>
				<div>
					<div>
						<span class="tradenum1">成交&nbsp;&nbsp;<font
							class="font_bold_pink"><%=bookSnapshotBean.getBsalednum()%>笔</font></span>
					</div>
					<div>
						<span class="commentnum1">评价&nbsp;&nbsp;
						<font class="font_bold_blue"><%=bookSnapshotBean.getBcommentnum()%></font></span>
					</div>
				</div>
			</li>
	<%
		}

	%>
</ul>