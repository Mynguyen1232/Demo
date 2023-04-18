<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="container">
		<c:set var="id" value="0"></c:set>
		<c:forEach var="item" items="${listItem}">
			<div class="row">
				<div class="col-sm-3">
					<div class="card text-center product">
						<img src="images/${item.image}" class="card-img-top" alt="...">
						<div class="p-2">
							<a href="/ASM_JAVA4/detailproduct?idProduct=${id}">
							<p class="card-text text-start " style="font-style: 12px">${item.name}</p></a>

							<div class="icon-rate text-start" style="font-size: 12px;">
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
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
<%-- <div class="card text-center product">
	<img src="images/${item.image}" class="card-img-top" alt="...">
	<div class="p-2">
		<p class="card-text text-start " style="font-style: 12px">
			${item.name}</p>
		<div class="icon-rate text-start" style="font-size: 12px;">
			<i class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i> <i
				class="fa-solid fa-star"></i> <i class="fa-solid fa-star"></i> <i
				class="fa-solid fa-star"></i>
		</div>
		<p class="text-start" style="color: red; font-weight: 500;">
			${item.price} <sub style="color: green; font-weight: 500;">${item.discount}</sub>
		</p>
		</p>
	</div>
	<div class="card-body text-center product-sub">
		<div class="card-sub-title mt-3 product-sub-title">
			<p>
				<a href="" style="font-weight: bold; font-size: 18px;"><i
					class="fa-regular fa-heart"></i></a>
			</p>
			<p>
				<a href="" style="font-size: 12px;"><i
					class="fa-sharp fa-solid fa-chart-simple"></i></a>
			</p>
			<p>
				<a href="" style="font-size: 12px;"><i class="fa-solid fa-eye"></i></a>
			</p>
			<button class="card-btn">Add to cart</button>
		</div>
	</div>
</div> --%>

