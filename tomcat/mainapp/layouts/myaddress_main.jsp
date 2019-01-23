<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<div id="inner">

	<!-- 左侧导航栏 -->
	<jsp:include page="left.jsp" flush="true"><jsp:param name="curSelected" value="myaddress" /></jsp:include>

	<!-- 右侧内容 -->	
	<div class="right">
			<div class="divline" style="font-size:15px;">收货地址</div><!--divline-->
			<div class="contentline">
				<ul class="addressul"></ul><br>
				<a class="greenbutton" rel="facebox"title="添加新地址" href="layouts/writeorder_addaddress.jsp">添加新地址</a>
			</div><!--contentline-->
	</div>
</div>