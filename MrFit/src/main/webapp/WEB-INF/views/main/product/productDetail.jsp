<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!-- FlexSlider -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<script type="text/javascript">
$(document).ready(function() {
		var productCategory = $(".quick_desc").attr("id");
		var pcno = "";
		var pno = $(".productPno").attr("id");
		//색상을 클릭했을 때 색상에 맞는 size를 ajax를 이용해 가지고 오는 이벤트
		$("#colorCheck").change(function() {
						pcno = $(this).val();
						if ($(this).val() == 0) {
							return false;
		}
		$("#slsSize").html("");
		$.ajax({
				type : "get",
				url : "${pageContext.request.contextPath}/findProductDetailByColorAjax.do",
				dataType : "json",
				data : "pcno="+ $(this).val()+"&pno="+pno,
				success : function(data) {
					var infoSize = "";
						infoSize = "<h3>사이즈</h3>"
						infoSize += "<select id='sizeSelectAjax'>";
						infoSize += "<option>-[필수] 옵션을 선택해주세요-</option>";
						infoSize += "<option>-----------------------------------------</option>";
					for (var i = 0; i < data.length; i++) {
						infoSize += "<option value='"
						infoSize+=data[i].psno;
						infoSize+="'>";
						infoSize += "Size : "+data[i].size_name;
						infoSize += "</option>";
					}
						infoSize += "</select>";
						$("#slsSize").append(infoSize);
				}//success
		});//ajax
	});//change
});//ready
</script>
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			controlNav : "thumbnails"
		});
	});
</script>
${requestScope.psglist}
<br><br>
${requestScope.pvo }
<!--start-single-->
<div class="single contact">
	<div class="container">
		<div class="single-main">
			<div class="col-md-9 single-main-left">
				<div class="sngl-top">
					<div class="col-md-5 single-top-left">
						<div class="flexslider">
							<ul class="slides">
								<li data-thumb="images/s1.jpg"><img height=350px; width=250px; src="${pageContext.request.contextPath}/resources/upload/${requestScope.pvo.imageList[0].url}" />
							${imgList.url }							
		 <%--		</li>
					<li data-thumb="images/s2.jpg">
					<img height=350px width=250px src="${pageContext.request.contextPath}/resources/images/s2.jpg" />
					</li>
					<li data-thumb="images/s3.jpg">
					<img height=350px width=250px src="${pageContext.request.contextPath}/resources/images/s3.jpg" />
					</li>
					<li data-thumb="images/s4.jpg">
					<img height=350px width=250px src="${pageContext.request.contextPath}/resources/images/s4.jpg" />
					</li> --%>
							</ul>
						</div>
					</div>
					<!-- 상품번호 -->
					<div class="productPno" id="${requestScope.pvo.pno}"></div>
					<div class="col-md-7 single-top-right">
						<div class="details-left-info simpleCart_shelfItem">
							<h3>${requestScope.pvo.name}</h3>
							<p class="availability">
								Availability: <span class="color">In stock</span>
							</p>
							<div class="price_single">
								<%-- <span class="reducedfrom">${requestScope.pvo.price}</span> --%>
								<span class="actual item_price">${requestScope.pvo.price}</span><a
									href="#">click for offer</a>
							</div>
							<h2 class="quick">상품설명:</h2>
							<p class="quick_desc" id="${requestScope.pvo.category}">${requestScope.pvo.content}</p>
							<ul class="product-colors">
								<h3>색상</h3>
								<select id="colorCheck">
									<option value="0">-[필수] 옵션을 선택해주세요-</option>
									<option value="0">-----------------------------------------</option>
									<c:forEach items="${requestScope.clist}" var="clist">
										<option class="colorSelect" value="${clist.pcno}">${clist.color_name}</option>
									</c:forEach>
								</select>
								<div class="clear" id="slsSize">
									<h3>사이즈</h3>
									<select id="sizeSelectAjax">
										<option>-[필수] 옵션을 선택해주세요-</option>
										<option>-----------------------------------------</option>
									</select>
								</div>
							</ul>

							<div class="quantity_box">
								<ul class="product-qty">
									<span>주문수량:</span>
									<!-- quantity 주문갯수 -->
									<input type="number" name="quantity" min="0" value="1">
								</ul>
							</div>
							<div class="clearfix"></div>
							<div class="single-but item_add">
								<input type="submit" value="장바구니담기" /> <input type="submit" value="즉시구매" />
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<br>
					<br>
					<div class="memberSize1"
						id=<sec:authentication property="principal.id"/>>
						<h3>오차범위</h3>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th style="background-color: #ffffff;">±2cm</th>
									<th style="background-color: #ffffb3;">±4cm</th>
									<th style="background-color: #ffcc99;">±6cm</th>
									<th style="background-color: #ff471a;">±8cm</th>
									<th style="background-color: #ff0000;">±8cm이상</th>
								</tr>
							</thead>
						</table>
						<h3>사이즈비교</h3>
						<table class="table table-bordered">
							<thead>
								<c:choose>
									<c:when test="${requestScope.pvo.category=='bottom'}">
										<tr>
											<th>사이즈</th><th>허리</th><th>허벅지</th><th>밑위</th><th>밑단</th><th>하의 총기장</th>
										</tr>
									</c:when>
									<c:otherwise>
										<tr>
											<th>사이즈</th><th>어깨</th><th>가슴</th><th>소매</th><th>암홀</th><th>상의 총기장</th>
										</tr>
									</c:otherwise>
								</c:choose>
							</thead>
							<tbody>
								 <c:forEach items="${requestScope.psList}" var="psList" varStatus="i">
									<tr>
										<td>${psList.size_name}</td>
										<td style="background-color:${psglist[i.index].sizeGap1}">${psList.size1}</td>
										<td style="background-color:${psglist[i.index].sizeGap2}">${psList.size2}</td>
										<td style="background-color:${psglist[i.index].sizeGap3}">${psList.size3}</td>
										<td style="background-color:${psglist[i.index].sizeGap4}">${psList.size4}</td>
										<td style="background-color:${psglist[i.index].sizeGap5}">${psList.size5}</td>
									</tr>
								</c:forEach> 
							</tbody>
						</table>
					</div>
					<!-- 이미지  -->
					<div>
					<c:forEach items="${requestScope.pvo.imageList}" varStatus="j">
					<img src="${pageContext.request.contextPath}/resources/upload/${requestScope.pvo.imageList[j.count].url}" />
					</c:forEach>									
					</div>

					<!-- review table -->
					<div class="ckeckout">
						<div class="container">
							<div class="ckeckout-top">
								<div class=" cart-items heading">
									<h3>상품리뷰</h3>
									<div class="in-check">
										<ul class="unit">
											<li><span>리뷰번호</span></li>
											<li><span>내용</span></li>
											<li><span>색상 / 사이즈</span></li>
											<li><span>작성자</span></li>
											<li><span>날짜</span></li>
											<div class="clearfix"></div>
										</ul>
										<c:forEach items="${prvolist}" var="list">
										<ul class="cart-header">
											<li><span>리뷰번호=${list.rno}</span></li>
											<li><span>내용=${list.content }</span></li>
											<li><span>색상=${list.color_name} | 사이즈=${list.size_name }</span></li>
											<li><span>아이디=${list.id }</span></li>
											<li><span>작성일=${list.regdate }</span></li>
											<div class="clearfix"></div>
										</ul>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
					
<%-- 
					<div class="latest products">
						<div class="product-one">
							<div class="col-md-4 product-left single-left">
								<div class="p-one simpleCart_shelfItem"
									style="width: 250px; height: 165px; overflow: hidden">
									<a href="#"> <img style="height: 80%; width: auto;"
										src="${pageContext.request.contextPath}/resources/images/s2.jpg"
										alt="" />
										<div class="mask mask1">
											<span>Quick View</span>
										</div>
									</a>

								</div>
								<div class="col-md-4 product-left single-left">
									<div class="p-one simpleCart_shelfItem">
										<a href="#"> <img src="images/shoes-2.png" alt="" />
											<div class="mask mask1">
												<span>Quick View</span>
											</div>
										</a>
										<h4>Aenean placerat</h4>
										<p>
											<a class="item_add" href="#"><i></i> <span
												class=" item_price">$329</span></a>
										</p>
									</div>
								</div>
								<div class="col-md-4 product-left single-left">
									<div class="p-one simpleCart_shelfItem">
										<a href="#"> <img src="images/shoes-3.png" alt="" />
											<div class="mask mask1">
												<span>Quick View</span>
											</div>
										</a>
										<h4>Aenean placerat</h4>
										<p>
											<a class="item_add" href="#"><i></i> <span
												class=" item_price">$329</span></a>
										</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="product-one">
								<div class="col-md-4 product-left single-left">
									<div class="p-one simpleCart_shelfItem">
										<a href="#"> <img src="images/shoes-13.png" alt="" />
											<div class="mask mask1">
												<span>Quick View</span>
											</div>
										</a>
										<h4>Aenean placerat</h4>
										<p>
											<a class="item_add" href="#"><i></i> <span
												class=" item_price">$329</span></a>
										</p>
									</div>
								</div>
								<div class="col-md-4 product-left single-left">
									<div class="p-one simpleCart_shelfItem">
										<a href="#"> <img src="images/shoes-5.png" alt="" />
											<div class="mask mask1">
												<span>Quick View</span>
											</div>
										</a>
										<h4>Aenean placerat</h4>
										<p>
											<a class="item_add" href="#"><i></i> <span
												class=" item_price">$329</span></a>
										</p>
									</div>
								</div>
								<div class="col-md-4 product-left single-left">
									<div class="p-one simpleCart_shelfItem">
										<a href="#"> <img src="images/shoes-6.png" alt="" />
											<div class="mask mask1">
												<span>Quick View</span>
											</div>
										</a>
										<h4>Aenean placerat</h4>
										<p>
											<a class="item_add" href="#"><i></i> <span
												class=" item_price">$329</span></a>
										</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div> --%>
					
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--end-single-->