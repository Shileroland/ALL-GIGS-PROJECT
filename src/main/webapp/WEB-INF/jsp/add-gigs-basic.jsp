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
					<!-- Section headers -->
					<div class="row section-header">
						<div class="col-6 gigs-header">
							<h3>Gigs</h3>
						</div>
					</div>
					<div class="gigs-body">
						<div class="row no-gutters">
							<div class="col-12">
								<p class="new-gig-title">New gig</p>
							</div>
						</div>
						<div class="row no-gutters">
							<!-- Reg section -->
							<div class="col-3">
								<div class="reg-sections">
									<div id="BasicTab" class="reg-section current">
										<a type="button" onclick="hideSalary()"> <img
											src="/assets/img/Icon-circle.svg" width="7px"> Basic
											Data
										</a>
									</div>
									<div id="RenuTab" class="reg-section ">
										<a type="button" onclick="hideSalary()"> <img
											src="/assets/img/Icon-circle.svg" width="7px">
											Renumeration
										</a>
									</div>
									<div class="reg-section"></div>
								</div>
							</div>


							<!-- Form One Start -->
							<form:form modelAttribute="gigsModel" method="POST"
								action="/submitgigs">
								<div class="alert" role="alert" style="text-align: center">${success}</div>
								<div class="col-7" id="basic">
									<div class="reg-body" style="padding: 15px;">
										<!-- Gig form -->

										<!-- Details -->
										<div class="row">
											<div class="col">
												<label for="inputEmail4">Role</label>
												<form:input type="text" path="role" class="form-control"
													placeholder="Role" />
											</div>
											<div class="col">
												<label for="inputEmail4">Company</label>
												<form:input type="text" path="company" class="form-control"
													placeholder="Company" />
											</div>
										</div>

										<!-- Address -->
										<div class="row align-items-center">
											<div class="col">
												<label for="inputEmail4">Location</label>
												<form:select class="custom-select" path="country"
													disabled="false">
													<form:option value="" label="Country" />
													<c:forEach items="${countries}" var="countries">
														<c:if test="${countries.countryId == 667}">
															<option value="${countries.countryId}" selected="true">${countries.countryName}</option>
														</c:if>
													</c:forEach>
												</form:select>

											</div>
											<div class="col">
												<label for="inputEmail4"></label>
												<form:select class="custom-select" path="state"
													disabled="false">
													<form:option value="" label="State" />
													<c:forEach items="${states}" var="states">
														<c:if test="${states.countryId == 667}">
															<option value="${states.stateId}" selected="true">${states.stateName}</option>
														</c:if>
													</c:forEach>
												</form:select>
											</div>
											<div class="col-12">
												<label for="inputEmail4"></label>
												<form:input type="text" path="address" class="form-control"
													placeholder="Address" />
											</div>
										</div>

										<!-- Add Tag  -->
										<div class="row">
											<div class="col-12 input-group">
												<div class="tags-wrapper">
													<label for="inputEmail4" style="display: block;">Add
														tags</label>

													<div class="container tags-input">
														<div class="tag-container">
															<span class="tags">Remote <span>x</span></span> <input
																type="text" class="form-control tags-input"
																disabled="true" />
														</div>

													</div>
													<div class="suggested-tags">
														<span>Suggested tags: </span> <a href="#">full time</a> <a
															href="#">Contract</a> <a href="#">freelance</a>
													</div>
												</div>
											</div>
										</div>

										<!-- Buttons  -->
										<div class="row justify-content-end form-buttons">
											<div class="col-8">
												<a href="/">
													<button type="button" class="btn cancel-btn">Cancel</button>
												</a>

												<button type="button" onclick="hideSalary()"
													class="btn continue-btn">Continue</button>

											</div>
										</div>




									</div>
								</div>

								<!-- Form One End -->

								<!-- Form Two Starts -->

								<div class="col-7" id="hideSalary" style="display: none">
									<div class="reg-body" style="padding: 15px;">
										<!-- Gig form -->

										<!-- Details -->
										<div class="row align-items-center">
											<div class="col">
												<label for="inputEmail4">Salary</label>
												<form:input path="minimum" type="text" class="form-control"
													placeholder="Minimum" />
											</div>
											<div class="col">
												<label for="inputEmail4"></label>
												<form:input type="text" path="maximum" class="form-control"
													placeholder="Maximum" />
											</div>
										</div>
										<!-- Buttons  -->
										<div class="row justify-content-end form-buttons">
											<div class="col-8">
												<a href="/addgigs">
													<button type="button" class="btn cancel-btn"
														onclick="hideSalary()">Back</button>
												</a>
												<button type="submit" class="btn continue-btn">Add
													gig</button>
											</div>
										</div>

									</div>
								</div>
								<!-- Form Two Starts -->
							</form:form>


						</div>
					</div>
				</section>
			</main>
		</div>
	</div>
</div>

<script type="text/javascript">
	//var input = document.querySelector(".tags-input input");
	//var tagContainer = document.querySelector(".tags-input")

	function hideSalary() {
		var x = document.getElementById("hideSalary");
		var y = document.getElementById("basic");
		var basicTab = document.getElementById("BasicTab");
		var renuTab = document.getElementById("RenuTab");
		console.log(x);
		if (x.style.display === "none") {
			x.style.display = "block";
			y.style.display = "none";

			basicTab.classList.remove("current");
			renuTab.classList.add("current");

		} else {
			x.style.display = "none";
			y.style.display = "block";

			basicTab.classList.add("current");
			renuTab.classList.remove("current");
		}
	}

	/* const tagContainer = document.querySelector('.tag-container');
	 const input = document.querySelector('.tag-container input');

	 let tags = [];
	 */
	/* function createTag(label) {
	 const div = document.createElement('div');
	 div.setAttribute('class', 'tag');
	 const span = document.createElement('span');
	 span.innerHTML = label;
	 const closeIcon = document.createElement('i');
	 closeIcon.innerHTML = 'close';
	 closeIcon.setAttribute('class', 'material-icons');
	 closeIcon.setAttribute('data-item', label);
	 div.appendChild(span);
	 div.appendChild(closeIcon);
	 return div;
	 } */

	/* function clearTags() {
	 document.querySelectorAll('.tag').forEach(tag => {
	 tag.parentElement.removeChild(tag);
	 });
	 }

	 function addTags() {
	 clearTags();
	 tags.slice().reverse().forEach(tag => {
	 tagContainer.prepend(createTag(tag));
	 });
	 }

	 input.addEventListener('keyup', (e) => {
	 if (e.key === 'Enter') {
	 e.target.value.split(',').forEach(tag => {
	 tags.push(tag);  
	 });
	
	 addTags();
	 input.value = '';
	 }
	 });
	 document.addEventListener('click', (e) => {
	 console.log(e.target.tagName);
	 if (e.target.tagName === 'I') {
	 const tagLabel = e.target.getAttribute('data-item');
	 const index = tags.indexOf(tagLabel);
	 tags = [...tags.slice(0, index), ...tags.slice(index+1)];
	 addTags();    
	 }
	 })

	 input.focus();
	 function tagger(e) {

	 console.log(e.key + e.keyCode);
	 if (e.key === "Enter") {
	 var tag = createTag(input.value);
	 tagContainer.prepend(tag);
	 }
	 } */
</script>
<%@ include file="common/footer.jspf"%>