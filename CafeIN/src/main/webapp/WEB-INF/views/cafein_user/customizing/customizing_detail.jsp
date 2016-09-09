<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">Customizing Menu</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="${pageContext.request.contextPath}/cafein_user/main/main.do">Home</a></li>
					<li><a href="customizing_main.do">Customizing<a></a></li>
					<li class="active">Customizing Menu</li>
				</ul>
			</div>
		</div>
		<!--/breadcrumbs-->
		<div class="bg-color-light" style="padding-top: 15px;">
			<div class="cube-portfolio container">
				<div class="col-md-12">
					<div class="btn-group" style="float: right; padding: 0 0 10px 10px;">
						<button type="button" class="btn-u dropdown-toggle korean-font"
							data-toggle="dropdown" aria-expanded="false">
							수정 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li class="korean-font"><a href="#">사진 수정</a></li>
							<li class="korean-font"><a href="#">게시글 수정</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--=== Blog Posts ===-->
		<div class="bg-color-light">
			<div class="container content-sm" style="padding-top: 30px;">
				<!-- News v3 -->
				<div class="news-v3 margin-bottom-30">
					<img class="img-responsive full-width"
						src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img12.jpg" alt="">
					<div class="news-v3-in">
						<ul class="list-inline posted-info korean-font">
							<li>By <a href="#">등록이</a></li>
							<li>Heart <a href="#">53</a></li>
							<li>2016.08.23</li>
						</ul>
						<h2 class="korean-font">
							<a href="#">맛있는 커피</a>
						</h2>
						<p class="korean-font">스타벅스에서 머랑머랑머랑 어찌저찌 고렇게 저렇게 합쳐서 만든 맛있는 커피</p>
						<blockquote class="hero">
							<p class="korean-font">
								<em>#연희동맛집, #커피맛집추천, #연희동 매뉴팩트 커피</em>
							</p>
						</blockquote>

						<ul class="post-shares post-shares-lg">
							<li><a href="customizing.html"> <i
									class="rounded-x icon-speech"></i> <span>28</span>
							</a></li>

							<li><a href="#"> <i class="rounded-x icon-heart"></i> <span>107</span>
							</a></li>
						</ul>
					</div>
				</div>
				<!-- End News v3 -->



				<!-- Authored Blog -->
				<div class="row news-v2 margin-bottom-50">
					<div class="col-sm-4 sm-margin-bottom-30">
						<div class="news-v2-badge">
							<img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img3.jpg" alt="">

						</div>
						<div class="news-v2-desc">
							<h3 class="korean-font">
								<a href="#">커피 원</a>
							</h3>
							<small class="korean-font">By Admin | California, US | In <a href="#">Art</a></small>
							<p class="korean-font">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nam viverra euismod odio, gravida pellentesque urna varius
								vitae, gravida pellentesque urna varius vitae.</p>
						</div>
					</div>
					<div class="col-sm-4 sm-margin-bottom-30">
						<div class="news-v2-badge">
							<img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img6.jpg" alt="">

						</div>
						<div class="news-v2-desc">
							<h3 class="korean-font">
								<a href="#">커피 투</a>
							</h3>
							<small class="korean-font">By Admin | California, US | In <a href="#">Art</a></small>
							<p class="korean-font">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nam viverra euismod odio, gravida pellentesque urna varius
								vitae, gravida pellentesque urna varius vitae.</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news-v2-badge">
							<img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img4.jpg" alt="">

						</div>
						<div class="news-v2-desc">
							<h3 class="korean-font">
								<a href="#">커피 쓰리</a>
							</h3>
							<small class="korean-font">By Admin | California, US | In <a href="#">Art</a></small>
							<p class="korean-font">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Nam viverra euismod odio, gravida pellentesque urna varius
								vitae, gravida pellentesque urna varius vitae.</p>
						</div>
					</div>
				</div>
				<!-- End Authored Blog -->

				<hr>

				<!-- 댓글 부분 : blog_large_full_width_item.html -->
				<div class="container content blog-page blog-item">
					<!-- Recent Comments -->
					<div class="headline margin-bottom-30">
						<h3>Comments</h3>
					</div>
					<div class="media margin-bottom-40">
						<!-- <h3>Comments</h3> -->
						<!-- <hr> -->

						<div class="media-body">
							<h4 class="media-heading korean-font">
								jang_delay <span>2016-08-13 | <a href="">신고</a></span>
							</h4>
							<br>
							<div class="col-md-11">
								<p class="korean-font">댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요. 댓글 내용을
									입력해주세요. 댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요. 댓글 내용을
									입력해주세요. 댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요.</p>
							</div>
						</div>
						<hr>

						<div class="media-body">
							<h4 class="media-heading korean-font">
								닉네임 <span>2016-08-14 | <a href="">신고</a></span>
							</h4>
							<br>
							<div class="col-md-11">
								<p class="korean-font">댓글 내용을 입력해주세요.</p>
							</div>
						</div>
						<hr>

						<br>
						<!-- <div class="cbp-l-loadMore-button"> -->
						<!-- <a href="" class="cbp-l-loadMore-button-link">LOAD MORE</a> -->
						<!-- <a href="${pageContext.request.contextPath}/resources/cafein_user/assets/ajax/loadMore.html" class="cbp-l-loadMore-button-link">LOAD MORE</a> -->
						<!-- </div> -->
						<button type="button" class="btn-u btn-block"
							style="width: 10%; margin: 0 45%;">Load More</button>

						<!--Pagination-->
						<!-- <div class="text-center">
            <ul class="pagination">
                <li><a href="#">«</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
                <li><a href="#">7</a></li>
                <li><a href="#">8</a></li>
                <li><a href="#">»</a></li>
            </ul>                                                            
        </div> -->
						<!--END Pagination-->

						<!-- End Recent Comments -->
					</div>
					<!--/media-->

					<!-- Comment Form -->
					<!-- <div class="headline margin-bottom-30"><h3>Leave a Comment</h3></div> -->
					<div class="post-comment">
						<!-- <h3>Leave a Comment</h3> -->

						<form>
							<label style="font-size: 17px;"><i class="fa fa-user">&nbsp;&nbsp;</i>jang_delay</label>
							<div class="row margin-bottom-20">
								<div class="col-md-12 col-md-offset-0">
									<textarea class="form-control" rows="5"></textarea>
								</div>
							</div>

							<p style="float: right;">
								<button class="btn-u" type="submit">Send Message</button>
							</p>
						</form>
					</div>
					<!-- End Comment Form -->

				</div>
				<!--/container-->
				<!-- END 댓글 부분 : blog_large_full_width_item.html -->
				<!--=== End Content Part ===-->
			</div>
		</div>
