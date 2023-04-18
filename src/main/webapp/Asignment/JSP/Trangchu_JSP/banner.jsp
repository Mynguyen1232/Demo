<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

   <article ng-controller="controllerForImageBanner">
        <div class="contaier pb-1 pt-1">
            <div class="image-banner">
                <a href="" class="img-link" ng-repeat="s in imageBanner"><img src="images/{{s.image}}" class="img-fluid"
                        alt=""></a>
            </div>
        </div>
    </article>

<!-- <div id="carouselExampleDark" class="carousel carousel-dark slide">
	<div class="carousel-indicators">
		<button type="button" data-bs-target="#carouselExampleDark"
			data-bs-slide-to="0" class="active" aria-current="true"
			aria-label="Slide 1"></button>
		<button type="button" data-bs-target="#carouselExampleDark"
			data-bs-slide-to="1" aria-label="Slide 2"></button>
	</div>

	<div class="carousel-inner">
		<div class="carousel-item active" data-bs-interval="10000">
			<img src="images/banner_1.jpg" class="d-block w-100" alt="..." />
			<div class="carousel-caption d-none d-md-block son">
				<p class="row">OUR LATEST COLLECTION</p>
				<h1 class="row">Explore Our Best</h1>
				<h1 class="row">Furniture Range</h1>
				<h6 class="row pt-1">2500+ Brands | 6,00,000+ Styles | 99.9%
					Styles On Discount</h6>
				<button class="row btn2 mt-5">Start Shopping</button>
			</div>
		</div>

		<div class="carousel-item" data-bs-interval="2000">
			<img src="images/banner_2.jpg" class="d-block w-100" alt="..." />
			<div class="carousel-caption d-none d-md-block son">
				<p class="row">OUR LATEST COLLECTION</p>
				<h1 class="row">Welcome To Our</h1>
				<h1 class="row">Urban Store</h1>
				<h6 class="row">2500+ Brands | 6,00,000+ Styles | 99.9% Styles
					On Discount</h6>
				<button class="row btn2 mt-5">Start Shopping</button>
			</div>
		</div>
	</div>
	<button class="carousel-control-prev" type="button"
		data-bs-target="#carouselExampleDark" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#carouselExampleDark" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
	</button>
</div>
 -->