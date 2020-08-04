<%@ include file="common/header.jspf"%>

<div class="container-fluid">
	<div class="row">
		<!-- SIDE MENU -->
		<div class="col-12 col-sm-12 col-md-4  col-lg-2" style="padding: 0;">
			<div class="side-bar full-height">
				<div class="logo"></div>
				<div class="side-menu-wrapper">
					<ul>
						<li>
							<div class="icon">
								<img src="/assets/img/Icon-home-fill.svg" alt="" srcset="">
							</div>
							<div class="description">
								<!-- <a href="#"></a> -->
								<span>Dashboard</span>
							</div>
						</li>
						<li>
							<div class="icon">
								<img src="/assets/img/Icon-briefcase-fill.svg" alt="" srcset="">
							</div>
							<div class="description">
								<span>Gigs</span>
							</div>
						</li>
						<li>
							<div class="icon">
								<img src="/assets/img/Icon-npm-fill.svg" alt="" srcset="">
							</div>
							<div class="description">
								<span>Company</span>
							</div>
						</li>
						<li>
							<div class="icon">
								<img src="/assets/img/Icon-person-fill.svg" alt="" srcset="">
							</div>
							<div class="description">
								<span>Account</span>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- SIDE MENU ENDS -->

		<!-- Main -->
		<div class="col-12 col-sm-12 col-md-8 col-lg-10 main-body"
			style="padding: 0;">
			<!-- Header -->
			<header
				class="navbar navbar-expand navbar-dark flex-column flex-md-row bd-navbar">
				<!-- Search ul -->
				<div class="navbar-nav-scroll">
					<ul class="navbar-nav bd-navbar-nav flex-row">
						<li class="nav-item">
							<form class="form-inline my-2 my-lg-0">
								<input class="form-control mr-sm-2 header-search" type="search"
									placeholder="Search" aria-label="Search">
							</form>
						</li>
					</ul>
				</div>
				<!-- ul links -->
				<ul class="navbar-nav ml-md-auto right-nav-item">

					<li class="nav-item"><a class="nav-link" href="#"> <img
							src="/assets/img/Group 140.svg" alt="" srcset="">
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <img
							src="/assets/img/Icon-email.svg" alt="" srcset="">
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#"> <img
							src="/assets/img/Icon-settings.svg" alt="" srcset="">
					</a></li>
					<li class="nav-item"><a class="nav-link active" href="#">
							<img src="/assets/img/Rectangle.png" alt=""
							srcset="/assets/img/Rectangle2x.png 2x">
					</a></li>
				</ul>
			</header>
			<!-- Header end -->
			<!-- Body part -->
			<main>
				<section class="body-section">
					<div class="row section-header">
						<div class="col-6 gigs-header">
							<h3>Gigs</h3>
						</div>
						<div class="col-6 button-wrapper">
							<a class="add-gig" href="/addgigs">New gig <span>+</span>
							</a>
						</div>
						<!-- Tabs -->
						<div class="col-12 tabs-wrapper">
							<ul class="nav justify-content-between">
								<li class="nav-item "><a class="nav-link active tabs-menu"
									href="#">All gigs <span class="amount-indicator">${fn:length(listGigs)}</span>
										<div class="active-notification"></div>
								</a></li>
								<li class="nav-item"><a class="nav-link tabs-menu" href="#">My
										gigs <span class="amount-indicator">1200</span>
										<div class="active-notification"></div>
								</a></li>
								<li class="nav-item"><a class="nav-link tabs-menu" href="#">Rejected
										gigs <span class="amount-indicator">100</span>
										<div class="active-notification"></div>
								</a></li>

							</ul>
						</div>
						<!-- tabs end -->
					</div>
					<!-- Gigs filter -->
					<div class="row no-gutters gigs-filter-wrapper">
						<div class="col-md-2">
							<div class="gigs-filter">
								<span>Freelance</span>
							</div>
						</div>
						<div class="col-md-2">
							<div class="gigs-filter">
								<span class="gigs-icon"><img
									src="/assets/img/Icon-move.svg" alt="" srcset=""></span> <span>Keywords</span>
								<span class="gigs-icon"><img
									src="/assets/img/Icon-mark.svg" alt="" srcset=""></span>
							</div>
						</div>
						<div class="col-md-2">
							<div class="gigs-filter">
								<span class="gigs-icon"><img
									src="/assets/img/Icon-pin.svg" alt="" srcset=""></span> <span>Location</span>
								<span class="gigs-icon"><img
									src="/assets/img/Icon-mark.svg" alt="" srcset=""></span>
							</div>
						</div>
						<div class="col-md-2">
							<div class="gigs-filter">
								<span class="gigs-icon"><img
									src="/assets/img/Icon-globe.svg" alt="" srcset=""></span> <span>Remote
									friendly</span>
							</div>
						</div>
						<div class="col-md-2">
							<div class="gigs-filter selected-gigs-filter">
								<span class="gigs-icon"><img
									src="/assets/img/Icon-color-palette.svg" alt="" srcset=""></span>
								<span>Design</span> <span class="gigs-icon"><img
									src="/assets/img/Icon-check.svg" alt="" srcset=""></span>
							</div>
						</div>
						<div class="col-md-2">
							<div class="gigs-filter">
								<span class="gigs-icon"><img
									src="/assets/img/Icon-briefcase.svg" alt="" srcset=""></rspan> <span>Contract</span>
							</div>
						</div>
					</div>
					<!-- Gigs end -->

					<!-- Gigs  done table -->
					<div class="row no-gutters gigs-table-row">
						<div class="col-12">
							<table class="table table-borderless">
								<thead>
									<tr>
										<th scope="col"></th>
										<th scope="col">Role</th>
										<th scope="col">Company</th>
										<th scope="col">Date <span><img src="/assets/img/Group 288.svg"></span></th>
										<th scope="col">Salary&#40;&#8358;&#41; <span><img src="/assets/img/Group 288.svg"></span></th>
										<th scope="col"></th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${listGigs.size() == 0 }">										
										<div class="alert" role="alert" style="text-align:center">There are no available Gigs Yet</div>										
									</c:if>

									<c:forEach items="${listGigs}" var="listGigs">
										<tr>											
											<th scope="row"><input type="checkbox"></th>
											<td>${listGigs.role}</td>
											<td>${listGigs.company}</td>
											<td>${listGigs.createdDate}</td>
											<%-- <td><fmt:formatDate value="${listGigs.createdDate}" pattern="dd/MM/yyyy" /></td> --%>										
											<td>${listGigs.minimum} - ${listGigs.maximum}</td>
											<td>
											<a href="/delete-gig?id=${listGigs.employeeId}" onclick="return confirm('Are you Sure?')">
												<button type="button">delete</button>
												</a>
											<td>
										</tr>
									</c:forEach>										
								</tbody>
							</table>	
							
							<div class="alert" role="alert" style="text-align:center">${message}</div>												
						</div>
					</div>
				</section>
			</main>
		</div>
	</div>
</div>

<%@ include file="common/footer.jspf"%>