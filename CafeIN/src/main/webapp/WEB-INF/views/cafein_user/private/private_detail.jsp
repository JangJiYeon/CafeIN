<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Private Info</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="${pageContext.request.contextPath}/cafein_user/main/main.do">Home</a></li>
                <li><a href="private_main.do">Private Cafe</a></li>
                <li class="active">Private Info</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content"> 	
        <div class="headline">
        	<h2>Cafe Introduce</h2>
        	
        	<!-- 사장 권한으로 방문시 생성 -->
				<div class="btn-group" style="float: right; padding: 0 0 10px 10px;">
					<button type="button" class="btn-u dropdown-toggle korean-font"
						data-toggle="dropdown" aria-expanded="false">
						수정 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="korean-font"><a href="#">사진 추가</a></li>
						<li class="korean-font"><a href="#">게시글 수정</a></li>
					</ul>
				</div>
       		<!-- <div style="float:right;">
        		<p class="korean-font">
        			<a class="btn-u" href="#" style="text-decoration:none;color:#ffffff;margin-bottom:10px;">카페정보수정</a> 
        			<a class="btn-u" href="#" style="text-decoration:none;color:#ffffff;margin-bottom:10px;">이미지추가</a>
        		</p>
       		</div> -->
       		<!-- END 사장 권한으로 방문시 생성 -->
       		
        </div>
    	<div class="row portfolio-item margin-bottom-50"> 

            <!-- Content Info --> 
            
            <div class="col-md-6 md-margin-bottom-40 funny-boxes" style="background:#ffffff;">
            	<div class="pull-left">
            		<h2 class="korean-font">Cafe O Clock</h2>
            	</div>
            	<ul class="list-unstyled list-inline funny-boxes-rating pull-right" style="margin-top:-3px;">
                	<!-- <li>
                		<a href="#" style="text-decoration:none;color:#ffffff;">
                			<i class="fa fa-star" style="font-size:25px;"></i>
                		</a>
                	</li> -->
                	<li>
                		<a href="#" style="text-decoration:none;color:#ffffff;">
                			<i class="fa fa-star-o" style="font-size:25px;"></i>
                		</a>
                	</li>
                </ul>
            	<div class="row portfolio-item1">
                    <div class="col-xs-12">
                    	<ul class="list-unstyled list-inline blog-info">
		                	<li style="padding:5px 5px;"><i class="fa fa-calendar color-green"></i> 2016-08-15</li>
		                    <li style="padding:5px 5px;"><i class="fa fa-comments color-green"></i> 24 Comments</li>
		                    <li style="padding:5px 5px;"><i class="fa fa-eye color-green"></i> 10</li>
		                    <li style="padding:5px 5px;"><i class="fa fa-heart color-green" style="font-size:15px;"></i> 239</li>
		                    <!-- <li class="korean-font pull-right">
		            			<a href="#" style="text-decoration:none;"><i class="fa fa-thumbs-o-up" style="color:#72c02c;"></i> 239</a>
		            		</li> -->
	                	</ul>
                    	<p class='korean-font' style="margin-bottom:30px;"> 카페어클락은 고객님들께 고품질의 커피를 드리기 위하여 ‘100% 아라비카원두 전 매장공급’과
									‘로스팅 후 30일내 판매’라는 기본 원칙을 충실히 수행하고 있습니다. 2010년에는 
									커피연구소를 설립하여 커피 전문 인력과 인프라를 통해 지속적인 연구개발을 진행하여 왔습니다.
									2015년 4월 1일에는 카페어클락의 모든 것을 담아 ‘고객과 소통하는 커피연구소’로써 
									500평 규모로 커피에 대한 모든 것을 경험할 수 있는 장소인 ‘카페어클락커피랩’을 이디야빌딩 1~2층에 오픈하여 운영 중입니다.
						</p>
						<a href="#" class="btn-u btn-u-large korean-font" style="text-decoration:none;color:#ffffff;">
							<i class="fa fa-thumbs-o-up"></i> 좋아요!
						</a>
                    </div>
                </div>  
            </div>
            <!-- End Content Info -->  
            
            <!-- Carousel -->
            <div class="col-md-6">
                <div class="carousel slide carousel-v1" id="myCarousel">
                    <div class="carousel-inner">
                        <div class="item active">
                            <img alt="" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img11.jpg">
                            <!-- <div class="carousel-caption">
                                <p>Facilisis odio, dapibus ac justo acilisis gestinas.</p>
                            </div> -->
                        </div>
                        <div class="item">
                            <img alt="" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img12.jpg">
                        </div>
                        <div class="item">
                            <img alt="" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img13.jpg">
                        </div>
                    </div>
                    
                    <div class="carousel-arrow">
                        <a data-slide="prev" href="#myCarousel" class="left carousel-control">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a data-slide="next" href="#myCarousel" class="right carousel-control">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                </div>
            </div>
            <!-- End Carousel -->      
        </div><!--/row-->

        <div class="tag-box tag-box-v2">
        	<div class="col-md-6">
        		<ul class="list-unstyled">
        			<li class="korean-font"><i class="fa fa-map-marker color-green"></i> 서울특별시 강서구 내발산동 719-1</li>
        		</ul>
        	</div>
        	<div class="col-md-6">
        		<ul class="list-unstyled">
        			<li><i class="fa fa-home color-green"></i> http://blog.naver.com/jang_delay</li>
        		</ul>
        	</div>
        	<div class="col-md-6">
        		<ul class="list-unstyled">
        			<li><i class="fa fa-phone color-green"></i> 02-6338-7252</li>
        		</ul>
        	</div>
        	<div class="col-md-6">
        		<ul class="list-unstyled">
        			<li><i class="fa fa-history color-green"></i> 8:30AM ~ 1:00AM</li>
        		</ul>
        	</div>
        	<ul class="list-unstyled">
        		<li style="padding:0 15px;" class="korean-font"><i class="fa fa-tags color-green"></i> 강서구, 우장산, 분위기짱, 스터디, 강서구, 우장산, 분위기짱, 스터디</li>
        	</ul>
        </div>

        <div class="margin-bottom-20 clearfix"></div>   
        
        
        <!-- 구글 맵 Begin Content -->
        <div class="col-md-12">

            <!-- Basic Map -->
            <div class="headline"><h3>Cafe Map</h3></div>
            <div id="map" class="map margin-bottom-50"></div>
            <!-- End Basic Map -->

        </div>
        <!-- End 구글 맵 Content --> 
        
		<div class="margin-bottom-20 clearfix"></div>
            
        <!-- Cafe Menu -->
        <div class="headline">
        
        	<h2>Cafe Menu</h2>
        	
	        <!-- 사장 권한으로 방문시 생성 -->
	   		<div style="float:right;">
	    		<p class="korean-font">
	    			<a class="btn-u" href="#" style="text-decoration:none;color:#ffffff;margin-bottom:10px;">메뉴추가</a> 
	    		</p>
	   		</div>
	   		<!-- END 사장 권한으로 방문시 생성 -->
        
        </div>
        
        <!-- Cube Portfolio -->
        <div class="cube-portfolio container margin-bottom-20">
            <div class="margin-bottom-30">
                <!-- <div id="filters-container" class="cbp-l-filters-text">
                    <div data-filter="*" class="cbp-filter-item-active cbp-filter-item"> All </div> |
                    <div data-filter=".illustration" class="cbp-filter-item"> Illustration </div> |
                    <div data-filter=".web-design" class="cbp-filter-item"> Web Design </div> |
                    <div data-filter=".graphic" class="cbp-filter-item"> Graphic </div> |
                    <div data-filter=".logo" class="cbp-filter-item"> Logo </div>
                </div> --><!--/end Filters Container-->
            </div>
            
            <div id="grid-container" class="cbp-l-grid-gallery">
            
                <div class="cbp-item illustration web-design">
                	<!-- cube-portfolio-lightbox.js 파일로 ajax 처리해서 정보 아래 뿌리는거! -->
                	<a href="#" class="cbp-caption cbp-singlePageInline"
                       data-title="World Clock Widget<br>by Paul Flavius Nechita">
                    <!-- <a href="${pageContext.request.contextPath}/resources/cafein_user/assets/ajax/cube-portfolio/project1.html" class="cbp-caption cbp-singlePageInline"
                       data-title="World Clock Widget<br>by Paul Flavius Nechita"> -->
                        <div class="cbp-caption-defaultWrap">
                            <img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/portfolio/20.jpg" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap">
                            <div class="cbp-l-caption-alignLeft">
                                <div class="cbp-l-caption-body">
                                    <div class="cbp-l-caption-title korean-font">아메리카노</div>
                                    <div class="cbp-l-caption-desc">가격 : 5500원</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                
                <div class="cbp-item web-design logo">
                    <a href="${pageContext.request.contextPath}/resources/cafein_user/assets/ajax/cube-portfolio/project1.html" class="cbp-caption cbp-singlePageInline"
                       data-title="Bolt UI<br>by Tiberiu Neamu">
                        <div class="cbp-caption-defaultWrap">
                            <img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/portfolio/19.jpg" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap">
                            <div class="cbp-l-caption-alignLeft">
                                <div class="cbp-l-caption-body">
                                    <div class="cbp-l-caption-title korean-font">에스프레소</div>
                                    <div class="cbp-l-caption-desc">가격 : 5500원</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="cbp-item illustration web-design">
                    <a href="${pageContext.request.contextPath}/resources/cafein_user/assets/ajax/cube-portfolio/project1.html" class="cbp-caption cbp-singlePageInline"
                       data-title="WhereTO App<br>by Tiberiu Neamu">
                        <div class="cbp-caption-defaultWrap">
                            <img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/portfolio/21.jpg" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap">
                            <div class="cbp-l-caption-alignLeft">
                                <div class="cbp-l-caption-body">
                                    <div class="cbp-l-caption-title korean-font">카페라뗴</div>
                                    <div class="cbp-l-caption-desc">가격 : 5500원</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="cbp-item web-design illustration">
                    <a href="${pageContext.request.contextPath}/resources/cafein_user/assets/ajax/cube-portfolio/project1.html" class="cbp-caption cbp-singlePageInline"
                       data-title="iDevices<br>by Tiberiu Neamu">
                        <div class="cbp-caption-defaultWrap">
                            <img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/portfolio/22.jpg" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap">
                            <div class="cbp-l-caption-alignLeft">
                                <div class="cbp-l-caption-body">
                                    <div class="cbp-l-caption-title korean-font">청포도 스파쿨링</div>
                                    <div class="cbp-l-caption-desc">가격 : 5500원</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="cbp-item web-design graphic">
                    <a href="${pageContext.request.contextPath}/resources/cafein_user/assets/ajax/cube-portfolio/project1.html" class="cbp-caption cbp-singlePageInline"
                       data-title="Seemple* Music for iPad<br>by Tiberiu Neamu">
                        <div class="cbp-caption-defaultWrap">
                            <img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/portfolio/24.jpg" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap">
                            <div class="cbp-l-caption-alignLeft">
                                <div class="cbp-l-caption-body">
                                    <div class="cbp-l-caption-title korean-font">레몬에이드</div>
                                    <div class="cbp-l-caption-desc">가격 : 5500원</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="cbp-item illustration web-design graphic">
                    <a href="${pageContext.request.contextPath}/resources/cafein_user/assets/ajax/cube-portfolio/project1.html" class="cbp-caption cbp-singlePageInline"
                       data-title="Remind~Me Widget<br>by Tiberiu Neamu">
                        <div class="cbp-caption-defaultWrap">
                            <img src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/portfolio/23.jpg" alt="">
                        </div>
                        <div class="cbp-caption-activeWrap">
                            <div class="cbp-l-caption-alignLeft">
                                <div class="cbp-l-caption-body">
                                    <div class="cbp-l-caption-title korean-font">밀크티</div>
                                    <div class="cbp-l-caption-desc">가격 : 5500원</div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div><!--/end Grid Container-->
            <br><br>
        	<!-- <button type="button" class="btn-u btn-block">Load More</button> -->
        	<!--Pagination-->
	        <div class="text-center">
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
	        </div>
	        <!--END Pagination-->
        </div>
        <!-- End Cube Portfolio -->
    	
    </div><!--/container-->	 	
    <!--=== End Contednt Part ===-->
    
    <!-- 구간 나누기 -->
    <!-- <div class="container" style="padding:0;"> 	
	    <div class="col-md-12">
	    	<hr>
	    </div>
    </div> -->
     <!-- END 구간 나누기 -->
     
    <!-- 댓글 부분 : blog_large_full_width_item.html -->
    <div class="container content blog-page blog-item">		
    <!-- Recent Comments -->
        <div class="headline margin-bottom-30"><h3>Comments</h3></div>
        <div class="media margin-bottom-40">
            <!-- <h3>Comments</h3> -->
            <!-- <hr> -->
            
            <div class="media-body">
                <h4 class="media-heading korean-font">jang_delay <span>2016-08-13 | <a href="">신고</a></span></h4>
                <br>
                <div class="col-md-11">
	                <p class="korean-font">댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요.
	                						댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요. 댓글 내용을 입력해주세요.</p>
				</div>
            </div>
            <hr>

            <div class="media-body">
                <h4 class="media-heading korean-font">닉네임 <span>2016-08-14 | <a href="">신고</a></span></h4>
                <br>
                <div class="col-md-11">
                	<p class="korean-font">댓글 내용을 입력해주세요.</p>
                </div>
            </div>
            <hr>
            
        <br>
        <!-- <div class="cbp-l-loadMore-button">
        	<a href="" class="cbp-l-loadMore-button-link">LOAD MORE</a>
            <a href="${pageContext.request.contextPath}/resources/cafein_user/assets/ajax/loadMore.html" class="cbp-l-loadMore-button-link">LOAD MORE</a>
        </div> -->
       	<button type="button" class="btn-u btn-block" style="width: 10%;margin:0 45%;">Load More</button>
        
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
        </div><!--/media-->

        <!-- Comment Form -->
        <div class="post-comment">
            <!-- <h3>Leave a Comment</h3> -->
            
            <form>
                <label style="font-size:17px;"><i class="fa fa-user">&nbsp;&nbsp;</i>jang_delay</label>
                <div class="row margin-bottom-20">
                    <div class="col-md-12 col-md-offset-0">
                        <textarea class="form-control" rows="5"></textarea>
                    </div>                
                </div>
                
                <p style="float:right;"><button class="btn-u" type="submit">Send Message</button></p>
            </form>
        </div>
        <!-- End Comment Form -->
        
    </div><!--/container--><!-- END 댓글 부분 : blog_large_full_width_item.html -->		
    <!--=== End Content Part ===-->
