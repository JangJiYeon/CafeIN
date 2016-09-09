<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Franchise Info</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="${pageContext.request.contextPath}/cafein_user/main/main.do">Home</a></li>
                <li><a href="franchise_main.do">Franchise Cafe</a></li>
                <li class="active">Franchise Info</li>
            </ul>
        </div>
    </div>
    <!--=== End Breadcrumbs ===-->

    <!-- About Me Block -->
    <div class="container content-sm">
    	<div class="headline" style="margin-bottom:30px;">
            <h2>Cafe Introduce</h2>
        </div>
        
        <div class="row about-me">
            <div class="col-sm-4 shadow-wrapper md-margin-bottom-40">
                <div class="box-shadow shadow-effect-2">
                    <img class="img-responsive img-bordered full-width" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/portfolio/20.jpg"  style="height:300px;">
                </div>
            </div>

            <div class="col-sm-8">
                <div class="overflow-h funny-boxes" style="background:#ffffff;">
                    <div class="pull-left">
                        <h2>StarBucks</h2>
                        <!-- <span class="korean-font"><-왼쪽은 카페 로고 들어가는 부분</span> -->
                        
                    </div>    
                   	<ul class="list-unstyled list-inline pull-left">
               			<li style="font-size:15px;margin-left:20px;"><i class="fa fa-eye color-green" style="font-size:18px;"></i> 18290</li>
               			<li style="font-size:15px;"><i class="fa fa-heart color-green" style="font-size:15px;"></i> 239</li>
               		</ul>
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
                </div>   
                <!-- <hr style="margin-top:0px;">  -->
                <p class="korean-font">오늘날 스타벅스는 전세계 60여개국 2만여 매장에서 30만여명의 파트너들이 근무하는 세계 최고의 커피 전문회사로 
                	최상급 아라비카 원두의 윤리적 구매와 40년 이상의 전문적인 로스팅 기술을 통한 철저한 품질 관리와 기업의 사회적 책임 완수를 통해
                	특별한 스타벅스의 경험과 문화를 한 잔의 커피와 함계 제공하며, 각 국의 커피 문화를 선도하고 있습니다.</p>
                <p>Suspendisse non magna sed justo tincidunt pellentesque. Proin sit amet ligula vel orci tempus viverra. Donec massa justo, sodales in leo pretium, 
                adipiscing dictum mi. Nullam sed eleifend purus. Sed eget lacus eget urna venenatis hendrerit sed sit amet dui. 
                Suspendisse lorem velit, tincidunt nec mattis ut, gravida adipiscing sapien.
                </p>
                <br>
				<a href="#" class="btn-u btn-u-large korean-font" style="text-decoration:none;color:#ffffff;">
					<i class="fa fa-thumbs-o-up"></i> 좋아요!
				</a>
                
            </div>
        </div>
    </div>
    <!-- End About Me Block -->
    

    <!-- Portfolio -->
    <div class="container content-sm" >
        <div class="headline" style="margin-bottom:30px;">
            <h2>Cafe Menu</h2>
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
                    <!-- <a href="${pageContext.request.contextPath}/resources/cafein_user/assets//ajax/cube-portfolio/project1.html" class="cbp-caption cbp-singlePageInline"
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
                    <a href="#" class="cbp-caption cbp-singlePageInline"
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
                    <a href="#" class="cbp-caption cbp-singlePageInline"
                       data-title="WhereTO App<br>by Tiberiu Neamu">
                        <div class="cbp-caption-defaultWrap">
                            <img src="${pageContext.request.contextPath}/resources/cafein_user/assets//img/portfolio/21.jpg" alt="">
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
                    <a href="#" class="cbp-caption cbp-singlePageInline"
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
                    <a href="#" class="cbp-caption cbp-singlePageInline"
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
                    <a href="#" class="cbp-caption cbp-singlePageInline"
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
    </div>
    <!-- End Portfolio -->
    
    
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
        <!-- <div class="cbp-l-loadMore-button"> -->
        	<!-- <a href="" class="cbp-l-loadMore-button-link">LOAD MORE</a> -->
            <!-- <a href="${pageContext.request.contextPath}/resources/cafein_user/assets//ajax/loadMore.html" class="cbp-l-loadMore-button-link">LOAD MORE</a> -->
        <!-- </div> -->
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
        <!-- <div class="headline margin-bottom-30"><h3>Leave a Comment</h3></div> -->
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
