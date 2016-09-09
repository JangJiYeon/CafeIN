<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">Customizing</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="${pageContext.request.contextPath}/cafein_user/main/main.do">Home</a></li>
					<li class="active">Customizing</li>
				</ul>
			</div>
		</div>
		<!--/breadcrumbs-->
		
		<div class="search-block parallaxBg">
			<div class="container">
				<div class="col-md-6 col-md-offset-3">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search words with regular expressions ...">
						<span class="input-group-btn">
							<button class="btn-u btn-u-lg" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>

					<form action="" class="sky-form page-search-form">
						<div class="inline-group">
							<label class="checkbox korean-font"><input type="checkbox"
								name="checkbox-inline" checked><i></i>전체</label> <label
								class="checkbox"><input type="checkbox"
								name="checkbox-inline"><i></i>해쉬</label> <label class="checkbox"><input
								type="checkbox" name="checkbox-inline"><i></i>카페명</label> <label
								class="checkbox"><input type="checkbox"
								name="checkbox-inline"><i></i>제목</label>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!--/container-->
		<div class="cube-portfolio container">
			<div class="col-md-12">
				<div class="btn-group" style="float: right; padding: 0 0 10px 10px;">
					<button type="button" class="btn-u korean-font">
						카페 등록 
					</button>
				</div>
				<div class="btn-group" style="float: right;">
					<button type="button" class="btn-u dropdown-toggle korean-font"
						data-toggle="dropdown" aria-expanded="false">
						정렬하기 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="korean-font"><a href="#">최신순</a></li>
						<li class="korean-font"><a href="#">조회순</a></li>
						<li class="korean-font"><a href="#">좋아요순</a></li>
						<li class="korean-font"><a href="#">내가 등록한 글 보기</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--=== Cube-Portfdlio ===-->
		<div class="cube-portfolio container margin-bottom-60">
			<div class="content-xs">
				<div id="filters-container" class="cbp-l-filters-text content-xs">
					<div data-filter="*" class="cbp-filter-item-active cbp-filter-item korean-font">
						Starbucks</div>
					|
					<div data-filter=".identity" class="cbp-filter-item korean-font">Ediya</div>
					|
					<div data-filter=".web-design" class="cbp-filter-item korean-font">Caffe
						bene</div>
					|
					<div data-filter=".graphic" class="cbp-filter-item korean-font">DropTop</div>
					|
					<div data-filter=".logos" class="cbp-filter-item korean-font">
						Angel-in-us</div>
				</div>
				<!--/end Filters Container-->
			</div>

			<div id="grid-container" class="cbp-l-grid-agency">

				<div class="cbp-item graphic">
					<a href="${pageContext.request.contextPath}/cafein_user/customizing/customizing_detail.do">
						<div class="cbp-caption margin-bottom-20">
							<div class="cbp-caption-defaultWrap">
								<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img26.jpg" alt="">
							</div>
							<div class="cbp-caption-activeWrap">
								<div class="cbp-l-caption-alignCenter"></div>
							</div>
						</div>
						<div class="cbp-title-dark">
							<div class="cbp-l-grid-agency-title korean-font">Starbucks</div>
							<div class="cbp-l-grid-agency-desc korean-font">맛있는 커피</div>
						</div>
					</div>
				</a>
				
				<div class="cbp-item web-design logos">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 02</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
				<div class="cbp-item graphic logos">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img9.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 03</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
				<div class="cbp-item web-design graphic">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img10.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 04</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
				<div class="cbp-item identity web-design">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img11.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 05</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
				<div class="cbp-item identity web-design">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img12.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 06</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
				<div class="cbp-item web-design identity">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img19.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 07</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
				<div class="cbp-item identity logo">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img7.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 08</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
				<div class="cbp-item graphic">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img20.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 09</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
				<div class="cbp-item web-design logos">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img3.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 10</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
				<div class="cbp-item graphic logos">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img6.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 11</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
				<div class="cbp-item web-design graphic">
					<div class="cbp-caption margin-bottom-20">
						<div class="cbp-caption-defaultWrap">
							<img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img16.jpg" alt="">
						</div>
						<div class="cbp-caption-activeWrap">
							<div class="cbp-l-caption-alignCenter"></div>
						</div>
					</div>
					<div class="cbp-title-dark">
						<div class="cbp-l-grid-agency-title korean-font">Design Object 12</div>
						<div class="cbp-l-grid-agency-desc korean-font">Web Design</div>
					</div>
				</div>
			</div>
			<!--/end Grid Container-->
			<br> <br>
			<button type="button" class="btn-u btn-block">Load More</button>
			<!-- End Pagination -->
		</div>
		<!--=== End Cube-Portfdlio ===-->

