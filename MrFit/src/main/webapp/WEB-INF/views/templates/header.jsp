<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#searchProductBtn").click(function() {
			location.href="findProductByName.do?keyword="+$("#searchProduct").val();
		});// click
	});// ready
</script>
	<!--top-header-->
	<div class="top-header">
		<div class="container">
			<div class="top-header-main">
				<div class="col-md-4 top-header-left">
					<div class="search-bar">
						<input type="text" value="Search" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Search';}" id = "searchProduct">
						<input type="submit" value="" id = "searchProductBtn">
					</div>
				</div>
				<div class="col-md-4 top-header-middle">
					<a href="index.html"><img src="${pageContext.request.contextPath}/resources/images/logo-4.png" alt="" /></a>
				</div>
				<div class="col-md-4 top-header-right">
					<div class="cart box_1">
						<a href="checkout.html">
							<h3>
								<div class="total">
									<span class="simpleCart_total"></span> (<span
										id="simpleCart_quantity" class="simpleCart_quantity"></span>
									items)
								</div>
								<img src="${pageContext.request.contextPath}/resources/images/cart-1.png" alt="" />
						</a>
						<sec:authorize access="!hasRole('ROLE_ADMIN') and !hasRole('ROLE_MEMBER')">
						<a href="loginForm.do">로그인</a>
						&nbsp;|&nbsp;
						<a href="registerForm.do">회원가입</a>
						</sec:authorize>
					<sec:authorize
						access="hasRole('ROLE_ADMIN') or hasRole('ROLE_MEMBER')">
						<sec:authentication property="principal.name" />님 <br>
					</sec:authorize>
						<p>
							<a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
							<sec:authorize
						access="hasRole('ROLE_ADMIN') or hasRole('ROLE_MEMBER')">
						<script type="text/javascript">
							$(document).ready(function() {
								$("#logoutAction").click(function() {
									$("#logoutForm").submit();
								});
							});
						</script>
						&nbsp; <a href="#" id="logoutAction">로그아웃</a>
						<form id="logoutForm"
							action="${pageContext.request.contextPath}/logout.do"
							method="post" style="display: none">
							<sec:csrfInput />
						</form>
					</sec:authorize>
						</p>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--top-header-->
	<!--bottom-header-->
	<div class="header-bottom">
		<div class="container">
			<div class="top-nav">
				<ul class="memenu skyblue">
					<li class="active"><a href="index.html">Home</a></li>
					<li class="grid"><a href="#">Men</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products.html">New Arrivals</a></li>
										<li><a href="products.html">Men</a></li>
										<li><a href="products.html">Women</a></li>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Kids</a></li>
										<li><a href="products.html">login</a></li>
										<li><a href="products.html">Brands</a></li>
										<li><a href="products.html">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="products.html">Men</a></li>
										<li><a href="products.html">Women</a></li>
										<li><a href="products.html">Brands</a></li>
										<li><a href="products.html">Kids</a></li>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Style Videos</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.html">Levis</a></li>
										<li><a href="products.html">Persol</a></li>
										<li><a href="products.html">Nike</a></li>
										<li><a href="products.html">Edwin</a></li>
										<li><a href="products.html">New Balance</a></li>
										<li><a href="products.html">Jack & Jones</a></li>
										<li><a href="products.html">Paul Smith</a></li>
										<li><a href="products.html">Ray-Ban</a></li>
										<li><a href="products.html">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div></li>
					<li class="grid"><a href="#">Women</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products.html">New Arrivals</a></li>
										<li><a href="products.html">Men</a></li>
										<li><a href="products.html">Women</a></li>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Kids</a></li>
										<li><a href="products.html">login</a></li>
										<li><a href="products.html">Brands</a></li>
										<li><a href="products.html">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="products.html">Men</a></li>
										<li><a href="products.html">Women</a></li>
										<li><a href="products.html">Brands</a></li>
										<li><a href="products.html">Kids</a></li>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Style Videos</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.html">Levis</a></li>
										<li><a href="products.html">Persol</a></li>
										<li><a href="products.html">Nike</a></li>
										<li><a href="products.html">Edwin</a></li>
										<li><a href="products.html">New Balance</a></li>
										<li><a href="products.html">Jack & Jones</a></li>
										<li><a href="products.html">Paul Smith</a></li>
										<li><a href="products.html">Ray-Ban</a></li>
										<li><a href="products.html">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div></li>
					<li class="grid"><a href="#">Kids</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products.html">New Arrivals</a></li>
										<li><a href="products.html">Men</a></li>
										<li><a href="products.html">Women</a></li>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Kids</a></li>
										<li><a href="products.html">login</a></li>
										<li><a href="products.html">Brands</a></li>
										<li><a href="products.html">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="products.html">Men</a></li>
										<li><a href="products.html">Women</a></li>
										<li><a href="products.html">Brands</a></li>
										<li><a href="products.html">Kids</a></li>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Style Videos</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.html">Levis</a></li>
										<li><a href="products.html">Persol</a></li>
										<li><a href="products.html">Nike</a></li>
										<li><a href="products.html">Edwin</a></li>
										<li><a href="products.html">New Balance</a></li>
										<li><a href="products.html">Jack & Jones</a></li>
										<li><a href="products.html">Paul Smith</a></li>
										<li><a href="products.html">Ray-Ban</a></li>
										<li><a href="products.html">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div></li>
					<li class="grid"><a href="#">Sports</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products.html">New Arrivals</a></li>
										<li><a href="products.html">Men</a></li>
										<li><a href="products.html">Women</a></li>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Kids</a></li>
										<li><a href="products.html">login</a></li>
										<li><a href="products.html">Brands</a></li>
										<li><a href="products.html">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="products.html">Men</a></li>
										<li><a href="products.html">Women</a></li>
										<li><a href="products.html">Brands</a></li>
										<li><a href="products.html">Kids</a></li>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Style Videos</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.html">Levis</a></li>
										<li><a href="products.html">Persol</a></li>
										<li><a href="products.html">Nike</a></li>
										<li><a href="products.html">Edwin</a></li>
										<li><a href="products.html">New Balance</a></li>
										<li><a href="products.html">Jack & Jones</a></li>
										<li><a href="products.html">Paul Smith</a></li>
										<li><a href="products.html">Ray-Ban</a></li>
										<li><a href="products.html">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div></li>
					<li class="grid"><a href="#">Brands</a>
						<div class="mepanel">
							<div class="row">
								<div class="col1 me-one">
									<h4>Shop</h4>
									<ul>
										<li><a href="products.html">New Arrivals</a></li>
										<li><a href="products.html">Men</a></li>
										<li><a href="products.html">Women</a></li>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Kids</a></li>
										<li><a href="products.html">login</a></li>
										<li><a href="products.html">Brands</a></li>
										<li><a href="products.html">My Shopping Bag</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Style Zone</h4>
									<ul>
										<li><a href="products.html">Men</a></li>
										<li><a href="products.html">Women</a></li>
										<li><a href="products.html">Brands</a></li>
										<li><a href="products.html">Kids</a></li>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Style Videos</a></li>
									</ul>
								</div>
								<div class="col1 me-one">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.html">Levis</a></li>
										<li><a href="products.html">Persol</a></li>
										<li><a href="products.html">Nike</a></li>
										<li><a href="products.html">Edwin</a></li>
										<li><a href="products.html">New Balance</a></li>
										<li><a href="products.html">Jack & Jones</a></li>
										<li><a href="products.html">Paul Smith</a></li>
										<li><a href="products.html">Ray-Ban</a></li>
										<li><a href="products.html">Wood Wood</a></li>
									</ul>
								</div>
							</div>
						</div></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--bottom-header-->