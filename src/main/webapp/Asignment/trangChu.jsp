<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">

<!-- Link icon of fontawesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<!-- Link icon of Bootstrap -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<!-- Slick slider source CSS -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

<!-- Angular JS  -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.8.3/angular.min.js"
	integrity="sha512-KZmyTq3PLx9EZl0RHShHQuXtrvdJ+m35tuOiwlcZfs/rE7NZv29ygNA8SFCkMXTnYZQK2OX0Gm2qKGfvWEtRXA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="css/website.css">
<link rel="stylesheet" href="css/index.css">
</head>
<body ng-app="myApp">
	<%@include file="JSP/Trangchu_JSP/header.jsp"%>
	<%@include file="JSP/Trangchu_JSP/banner.jsp"%>
	<%@include file="JSP/Trangchu_JSP/content.jsp"%>
	<%@include file="JSP/Trangchu_JSP/content2.jsp"%>
	<div class="container p-5">
		<div class="row slickSliders">
			<jsp:include page="JSP/Trangchu_JSP/categories.jsp"></jsp:include>
		</div>
	</div>
	<div class="container p-3">
		<%@include file="JSP/Trangchu_JSP/trending.jsp"%>
		<div class="container-fluid">
			<div class="container">
				<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link tab-link active" id="pills-featured-tab"
							data-bs-toggle="pill" data-bs-target="#pills-featured"
							type="button" role="tab" aria-controls="pills-featured"
							aria-selected="true">Featured Products</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link tab-link" id="pills-sellers-tab"
							data-bs-toggle="pill" data-bs-target="#pills-sellers"
							type="button" role="tab" aria-controls="pills-sellers"
							aria-selected="false">Best Sellers</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link tab-link" id="pills-newproducts-tab"
							data-bs-toggle="pill" data-bs-target="#pills-newproducts"
							type="button" role="tab" aria-controls="pills-newproducts"
							aria-selected="false">NewProducts</button>
					</li>
				</ul>
			</div>
			<div class="tab-content" id="pills-tabContent">
				<div class="tab-pane fade show active" id="pills-featured"
					role="tabpanel" aria-labelledby="pills-featured-tab" tabindex="0">
					<div class="container p-5">
						<div class="row slider-bestSeller">
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<c:set var="id" value="0"></c:set>
								<c:forEach var="item" items="${listItem}">
									<div class="row">
										<div class="col-sm-3">
											<div class="card text-center product">
												<img src="images/${item.image}" class="card-img-top"
													alt="...">
												<div class="p-2">
													<a href="/ASM_JAVA4/detailproduct?idProduct=${id}">
														<p class="card-text text-start " style="font-style: 12px">${item.name}</p>
													</a>

													<div class="icon-rate text-start" style="font-size: 12px;">
														<i class="fa-solid fa-star"></i> <i
															class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
														<i class="fa-solid fa-star"></i> <i
															class="fa-solid fa-star"></i>
													</div>
													<p class="text-start" style="color: red; font-weight: 500;">
														${item.price} <sub style="color: green; font-weight: 500;"></sub>
													</p>
												</div>
											</div>
										</div>
									</div>
									<%-- <c:set var="id" value="${id+1}"></c:set> --%>
								</c:forEach>
							</div>
							<%-- <div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_2.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$13.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_3.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$19.90" name="price" />
									<jsp:param value="$-9.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="clock.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$32.90" name="price" />
									<jsp:param value="$-9.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_2.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$22.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$15.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="light_1.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$26.90" name="price" />
									<jsp:param value="$-9.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="light.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$22.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
 --%>
						</div>
					</div>
				</div>
				<%-- <div class="tab-pane fade" id="pills-sellers" role="tabpanel"
					aria-labelledby="pills-sellers-tab" tabindex="0">
					<div class="container p-5">
						<div class="row slider-bestSeller">
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$15.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$15.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$15.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$15.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$15.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$15.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$15.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$15.90" name="price" />
									<jsp:param value="$-5.00" name="discount" />
								</jsp:include>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="pills-newproducts" role="tabpanel"
					aria-labelledby="pills-newproducts-tab" tabindex="0">
					<div class="container p-5">
						<div class="row slider-bestSeller">
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_1.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$13.90" name="price" />
									<jsp:param value="$-3.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_1.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$13.90" name="price" />
									<jsp:param value="$-3.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_1.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$13.90" name="price" />
									<jsp:param value="$-3.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_1.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$13.90" name="price" />
									<jsp:param value="$-3.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_1.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$13.90" name="price" />
									<jsp:param value="$-3.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_1.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$13.90" name="price" />
									<jsp:param value="$-3.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_1.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$13.90" name="price" />
									<jsp:param value="$-3.00" name="discount" />
								</jsp:include>
							</div>
							<div
								class="bestSellers mb-3 col-6 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
								<jsp:include page="JSP/Trangchu_JSP/product.jsp">
									<jsp:param value="lamp_1.jpg" name="img" />
									<jsp:param value="Table Lamp Lucia Tucci Tous" name="name" />
									<jsp:param value="$13.90" name="price" />
									<jsp:param value="$-3.00" name="discount" />
								</jsp:include>
							</div> --%>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>



	<%@include file="JSP/Trangchu_JSP/mail.jsp"%>
	<%@include file="JSP/Trangchu_JSP/footer.jsp"%>


	<!-- Bootstrap JavaScript Libraries -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
		
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
		
	</script>

	<!-- Slick Sliders Evondev -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js">
		
	</script>

	<!-- This source file JavaScript for this site -->
	<script src="js/index.js"></script>
</body>
</html>