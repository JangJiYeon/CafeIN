<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Bookmark</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="${pageContext.request.contextPath}/cafein_user/main/main.do">Home</a></li>
                <li><a href="mypage_user_modify_check.do">MyPage</a></li>
                <li class="active">Bookmark</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="content container">
        <div class="row">
        
            <!-- 왼쪽 메뉴바 -->
            <div class="col-md-3 filter-by-block md-margin-bottom-60">
                <h1 style="background:#72c02c;">My Page</h1>
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="korean-font" style="text-decoration:none;">
                                   	 개인정보
                                    <i class="fa fa-angle-down"></i>
                                </a>
                            </h2>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
	                            <div class="panel-body" style="padding-left:10px;">
	                                <ul class="list-unstyled checkbox-list">
	                                    <li>
	                                        <a href="mypage_user_modify_check.do" class="checkbox korean-font-bold" style="text-decoration:none;">
	                                         	회원정보수정	
	                                            <!-- <small><a href="#">(23)</a></small> -->
	                                        </a>
	                                    </li>
	                                    <li>
	                                        <a href="mypage_user_leave.do" class="checkbox korean-font-bold" style="text-decoration:none;">
	                                         	회원탈퇴
	                                        </a>
	                                    </li>
	                                </ul>        
	                            </div>
	                        </div>
	                    </div>
	                </div><!--/end panel group-->

                <div class="panel-group" id="accordion-v2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion-v2" href="#collapseTwo" class="korean-font" style="text-decoration:none;">
                                    	즐겨찾기
                                    <i class="fa fa-angle-down"></i>
                                </a>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse in">
                            <div class="panel-body" style="padding-left:10px;">
                                <ul class="list-unstyled checkbox-list">
                                    <li>
                                        <a href="mypage_bookmark_franchise.do" class="checkbox korean-font-bold" style="text-decoration:none;">
                                         	프렌차이즈카페
                                        </a>
                                    </li>
                                    <li>
                                        <a href="mypage_bookmark_private.do" class="checkbox korean-font-bold" style="text-decoration:none;">
                                         	개인카페
                                        </a>
                                    </li>
                                    <li>
                                        <a href="mypage_bookmark_customMenu.do" class="checkbox korean-font-bold" style="text-decoration:none;">
                                         	커스텀마이징메뉴
                                        </a>
                                    </li>
                                </ul>        
                            </div>
                        </div>
                    </div>
                </div><!--/end panel group-->

                <div class="panel-group" id="accordion-v3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion-v3" href="#collapseThree" class="korean-font" style="text-decoration:none;">
                                    	좋아요
                                    <i class="fa fa-angle-down"></i>
                                </a>
                            </h2>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse in">
                            <div class="panel-body" style="padding-left:10px;">
                                <ul class="list-unstyled checkbox-list">
                                    <li>
                                        <a href="mypage_like_cafe.do" class="checkbox korean-font-bold" style="text-decoration:none;">
                                         	카페
                                        </a>
                                    </li>
                                    <li>
                                        <a href="mypage_like_menu.do" class="checkbox korean-font-bold" style="text-decoration:none;">
                                         	카페메뉴
                                        </a>
                                    </li>
                                </ul>        
                            </div>
                        </div>
                    </div>
                </div><!--/end panel group-->

            </div><!-- 왼쪽 메뉴바 끝 -->

            <div class="col-md-9">
                <div class="row margin-bottom-5">
                
                    <div class="col-sm-6 result-category">
                        <h2>Customizing Menu</h2>
                    </div>
	                    
				</div><!--/end result category-->


                <div class="filter-results">
                
                    <div class="list-product-description product-description-brd margin-bottom-30">
                        <div class="row">
                        
                            <div class="col-sm-4">
                                <a href="shop-ui-inner.html">
                                	<img class="img-responsive sm-margin-bottom-20" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" style="min-height:200px;">
                                </a>
                            </div> 
                            <div class="col-sm-8 product-description" style="padding:15px;">
                                <div class="overflow-h margin-bottom-5">
                                    <ul class="list-inline overflow-h">
                                        <li><h4 class="title-price korean-font">아메리카노</h4></li>
                                        <li class="pull-right">
                                        </li>
                                    </ul>    
                                    <h6 style="margin:0;">&nbsp;</h6>
                                    <p class="margin-bottom-20 korean-font">
                                    	다양한 토양과 기후에서 
										
										자란 커피 원두는 그 속에 각기 다른 맛과 향의 비밀을 숨기고 있습니다.
										생두를 로스팅하여 에스프레소를 만드는 과정은 단순하고 평범해 보이지만, 사실은 로스팅과 추출법 등의 미묘하고 작은 차이가 커피 맛을 변화시킵니다. 
										원두에 숨겨진 이러한 커피의 비밀을 하나 하나 밝혀가면서 많은 사람들이 커피와 함께 소중한 순간을 즐기도록 해주는 것이 바로 할리스커피가 추구하는 
                                    </p>
                                    <button type="button" class="btn-u">Detail Page</button>
                                    <button type="button" class="btn-u btn-u-default">Bookmark Cancel</button>
                                </div>    
                            </div>
                        </div>
                    </div>
                    
                    <div class="list-product-description product-description-brd margin-bottom-30">
                        <div class="row">
                        
                            <div class="col-sm-4">
                                <a href="shop-ui-inner.html">
                                	<img class="img-responsive sm-margin-bottom-20" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" style="min-height:200px;">
                                </a>
                            </div> 
                            <div class="col-sm-8 product-description" style="padding:15px;">
                                <div class="overflow-h margin-bottom-5">
                                    <ul class="list-inline overflow-h">
                                        <li><h4 class="title-price korean-font">아메리카노</h4></li>
                                    </ul>    
                                    <h6 style="margin:0;">&nbsp;</h6>
                                    <p class="margin-bottom-20 korean-font">
                                    	다양한 토양과 기후에서 
										
										자란 커피 원두는 그 속에 각기 다른 맛과 향의 비밀을 숨기고 있습니다.
										생두를 로스팅하여 에스프레소를 만드는 과정은 단순하고 평범해 보이지만, 사실은 로스팅과 추출법 등의 미묘하고 작은 차이가 커피 맛을 변화시킵니다. 
										원두에 숨겨진 이러한 커피의 비밀을 하나 하나 밝혀가면서 많은 사람들이 커피와 함께 소중한 순간을 즐기도록 해주는 것이 바로 할리스커피가 추구하는 
                                    </p>
                                    <button type="button" class="btn-u">Detail Page</button>
                                    <button type="button" class="btn-u btn-u-default">Bookmark Cancel</button>
                                </div>    
                            </div>
                        </div>
                    </div>    

					<div class="list-product-description product-description-brd margin-bottom-30">
                        <div class="row">
                        
                            <div class="col-sm-4">
                                <a href="shop-ui-inner.html">
                                	<img class="img-responsive sm-margin-bottom-20" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" style="min-height:200px;">
                                </a>
                            </div> 
                            <div class="col-sm-8 product-description" style="padding:15px;">
                                <div class="overflow-h margin-bottom-5">
                                    <ul class="list-inline overflow-h">
                                        <li><h4 class="title-price korean-font">아메리카노</h4></li>
                                    </ul>    
                                    <h6 style="margin:0;">&nbsp;</h6>
                                    <p class="margin-bottom-20 korean-font">
                                    	다양한 토양과 기후에서 
										
										자란 커피 원두는 그 속에 각기 다른 맛과 향의 비밀을 숨기고 있습니다.
										생두를 로스팅하여 에스프레소를 만드는 과정은 단순하고 평범해 보이지만, 사실은 로스팅과 추출법 등의 미묘하고 작은 차이가 커피 맛을 변화시킵니다. 
										원두에 숨겨진 이러한 커피의 비밀을 하나 하나 밝혀가면서 많은 사람들이 커피와 함께 소중한 순간을 즐기도록 해주는 것이 바로 할리스커피가 추구하는 
										
                                    </p>
                                    <button type="button" class="btn-u">Detail Page</button>
                                    <button type="button" class="btn-u btn-u-default">Bookmark Cancel</button>
                                </div>    
                            </div>
                        </div>
                    </div>
                    
                    <div class="list-product-description product-description-brd margin-bottom-30">
                        <div class="row">
                        
                            <div class="col-sm-4">
                                <a href="shop-ui-inner.html">
                                	<img class="img-responsive sm-margin-bottom-20" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" style="min-height:200px;">
                                </a>
                            </div> 
                            <div class="col-sm-8 product-description" style="padding:15px;">
                                <div class="overflow-h margin-bottom-5">
                                    <ul class="list-inline overflow-h">
                                        <li><h4 class="title-price korean-font">아메리카노</h4></li>
                                    </ul>    
                                    <h6 style="margin:0;">&nbsp;</h6>
                                    <p class="margin-bottom-20 korean-font">
                                    	다양한 토양과 기후에서 
										
										자란 커피 원두는 그 속에 각기 다른 맛과 향의 비밀을 숨기고 있습니다.
										생두를 로스팅하여 에스프레소를 만드는 과정은 단순하고 평범해 보이지만, 사실은 로스팅과 추출법 등의 미묘하고 작은 차이가 커피 맛을 변화시킵니다. 
										원두에 숨겨진 이러한 커피의 비밀을 하나 하나 밝혀가면서 많은 사람들이 커피와 함께 소중한 순간을 즐기도록 해주는 것이 바로 할리스커피가 추구하는 
                                    </p>
                                    <button type="button" class="btn-u">Detail Page</button>
                                    <button type="button" class="btn-u btn-u-default">Bookmark Cancel</button>
                                </div>    
                            </div>
                        </div>
                    </div>
                    
                    <div class="list-product-description product-description-brd margin-bottom-30">
                        <div class="row">
                        
                            <div class="col-sm-4">
                                <a href="shop-ui-inner.html">
                                	<img class="img-responsive sm-margin-bottom-20" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" style="min-height:200px;">
                                </a>
                            </div> 
                            <div class="col-sm-8 product-description" style="padding:15px;">
                                <div class="overflow-h margin-bottom-5">
                                    <ul class="list-inline overflow-h">
                                        <li><h4 class="title-price korean-font">아메리카노</h4></li>
                                    </ul>    
                                    <h6 style="margin:0;">&nbsp;</h6>
                                    <p class="margin-bottom-20 korean-font">
                                    	다양한 토양과 기후에서 
										
										자란 커피 원두는 그 속에 각기 다른 맛과 향의 비밀을 숨기고 있습니다.
										생두를 로스팅하여 에스프레소를 만드는 과정은 단순하고 평범해 보이지만, 사실은 로스팅과 추출법 등의 미묘하고 작은 차이가 커피 맛을 변화시킵니다. 
										원두에 숨겨진 이러한 커피의 비밀을 하나 하나 밝혀가면서 많은 사람들이 커피와 함께 소중한 순간을 즐기도록 해주는 것이 바로 할리스커피가 추구하는 
                                    </p>
                                    <button type="button" class="btn-u">Detail Page</button>
                                    <button type="button" class="btn-u btn-u-default">Bookmark Cancel</button>
                                </div>    
                            </div>
                        </div>
                    </div>
                    

                </div><!--/end filter resilts-->

                <div class="text-center">
                    <ul class="pagination pagination-v2">
                        <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li><a href="#">1</a></li>
                        <li class="active"><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>                                                            
                </div><!--/end pagination-->
            </div>
        </div><!--/end row-->
    </div><!--/end container-->    
    <!--=== End Content Part ===-->

