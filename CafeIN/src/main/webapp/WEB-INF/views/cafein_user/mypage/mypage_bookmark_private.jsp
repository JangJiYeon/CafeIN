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
                
                    <div class="col-sm-4 result-category">
                        <h2>Private</h2>
                        <!-- <small class="shop-bg-red badge-results">45 Results</small> -->
                    </div>
                    
                    <!-- <div class="col-sm-8">
                        <ul class="list-inline clear-both">
                            <li class="grid-list-icons">
                                <a href="shop-ui-filter-list.html"><i class="fa fa-th-list"></i></a>
                                <a href="shop-ui-filter-grid.html"><i class="fa fa-th"></i></a>
                            </li>
                            <li class="sort-list-btn">
                                <h3>Sort By :</h3>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                        Cafe Menu <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">All</a></li>
                                        <li><a href="#">Franchise Menu</a></li>
                                        <li><a href="#">Private Menu</a></li>
                                        <li><a href="#">Customizing Menu</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>  -->   
                </div><!--/end result category-->

                <div class="filter-results">
                    <div class="row illustration-v2 margin-bottom-30">
                    
                        <div class="col-md-4">
                            <div class="product-img product-img-brd">
                                <a href="#"><img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" alt=""></a>
                                <a class="product-review korean-font" href="#" >즐겨찾기 취소</a>
                                <a class="add-to-cart" href="#"><i class="glyphicon glyphicon-search"></i>Detail Page</a>
                                <!-- <div class="shop-rgba-dark-green rgba-banner">New</div> -->
                                <!-- <div class="shop-rgba-red rgba-banner">Out of stock</div> -->
                            </div> 
                            <div class="product-description product-description-brd margin-bottom-30">
                                <div class="overflow-h margin-bottom-5">
                                    <div style="text-align:center;">
                                        <h4 class="title-price korean-font">Cafe O Clock</h4>
                                        <!-- <span class="gender text-uppercase">Men</span>
                                        <span class="gender">Suits - Blazers</span> -->
                                    </div>    
                                    <!-- <div class="product-price">
                                        <span class="title-price">$60.00</span>
                                        <span class="title-price line-through">$95.00</span>
                                    </div> -->
                                </div>    
                                <!-- <ul class="list-inline product-ratings">
                                    <li><i class="rating-selected fa fa-star"></i></li>
                                    <li><i class="rating-selected fa fa-star"></i></li>
                                    <li><i class="rating-selected fa fa-star"></i></li>
                                    <li><i class="rating fa fa-star"></i></li>
                                    <li><i class="rating fa fa-star"></i></li>
                                    <li class="like-icon"><a data-original-title="Add to wishlist" data-toggle="tooltip" data-placement="left" class="tooltips" href="#"><i class="fa fa-heart"></i></a></li>
                                </ul>   -->  
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-img product-img-brd">
                                <a href="#"><img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" alt=""></a>
                                <a class="product-review korean-font" href="#" >즐겨찾기 취소</a>
                                <a class="add-to-cart" href="#"><i class="glyphicon glyphicon-search"></i>Detail Page</a>
                            </div> 
                            <div class="product-description product-description-brd margin-bottom-30">
                                <div class="overflow-h margin-bottom-5">
                                    <div style="text-align:center;">
                                        <h4 class="title-price korean-font">아르시오네</h4>
                                    </div>    
                                </div>    
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-img product-img-brd">
                                <a href="#"><img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" alt=""></a>
                                <a class="product-review korean-font" href="#" >즐겨찾기 취소</a>
                                <a class="add-to-cart" href="#"><i class="glyphicon glyphicon-search"></i>Detail Page</a>
                            </div> 
                            <div class="product-description product-description-brd margin-bottom-30">
                                <div class="overflow-h margin-bottom-5">
                                    <div style="text-align:center;">
                                        <h4 class="title-price korean-font">커피집</h4>
                                    </div>    
                                </div>    
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-img product-img-brd">
                                <a href="#"><img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" alt=""></a>
                                <a class="product-review korean-font" href="#" >즐겨찾기 취소</a>
                                <a class="add-to-cart" href="#"><i class="glyphicon glyphicon-search"></i>Detail Page</a>
                            </div> 
                            <div class="product-description product-description-brd margin-bottom-30">
                                <div class="overflow-h margin-bottom-5">
                                    <div style="text-align:center;">
                                        <h4 class="title-price korean-font">커피볶는남자</h4>
                                    </div>    
                                </div>    
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-img product-img-brd">
                                <a href="#"><img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" alt=""></a>
                                <a class="product-review korean-font" href="#" >즐겨찾기 취소</a>
                                <a class="add-to-cart" href="#"><i class="glyphicon glyphicon-search"></i>Detail Page</a>
                            </div> 
                            <div class="product-description product-description-brd margin-bottom-30">
                                <div class="overflow-h margin-bottom-5">
                                    <div style="text-align:center;">
                                        <h4 class="title-price korean-font">카페25</h4>
                                    </div>    
                                </div>    
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-img product-img-brd">
                                <a href="#"><img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" alt=""></a>
                                <a class="product-review korean-font" href="#" >즐겨찾기 취소</a>
                                <a class="add-to-cart" href="#"><i class="glyphicon glyphicon-search"></i>Detail Page</a>
                            </div> 
                            <div class="product-description product-description-brd margin-bottom-30">
                                <div class="overflow-h margin-bottom-5">
                                    <div style="text-align:center;">
                                        <h4 class="title-price korean-font">아르미오네</h4>
                                    </div>    
                                </div>    
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-img product-img-brd">
                                <a href="#"><img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" alt=""></a>
                                <a class="product-review korean-font" href="#" >즐겨찾기 취소</a>
                                <a class="add-to-cart" href="#"><i class="glyphicon glyphicon-search"></i>Detail Page</a>
                            </div> 
                            <div class="product-description product-description-brd margin-bottom-30">
                                <div class="overflow-h margin-bottom-5">
                                    <div style="text-align:center;">
                                        <h4 class="title-price korean-font">카페인</h4>
                                    </div>    
                                </div>    
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-img product-img-brd">
                                <a href="#"><img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" alt=""></a>
                                <a class="product-review korean-font" href="#" >즐겨찾기 취소</a>
                                <a class="add-to-cart" href="#"><i class="glyphicon glyphicon-search"></i>Detail Page</a>
                            </div> 
                            <div class="product-description product-description-brd margin-bottom-30">
                                <div class="overflow-h margin-bottom-5">
                                    <div style="text-align:center;">
                                        <h4 class="title-price korean-font">개인카페</h4>
                                    </div>    
                                </div>    
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product-img product-img-brd">
                                <a href="#"><img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg" alt=""></a>
                                <a class="product-review korean-font" href="#" >즐겨찾기 취소</a>
                                <a class="add-to-cart" href="#"><i class="glyphicon glyphicon-search"></i>Detail Page</a>
                            </div> 
                            <div class="product-description product-description-brd margin-bottom-30">
                                <div class="overflow-h margin-bottom-5">
                                    <div style="text-align:center;">
                                        <h4 class="title-price korean-font">파란리본고양이</h4>
                                    </div>    
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


