<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Private Cafe</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="${pageContext.request.contextPath}/cafein_user/main/main.do">Home</a></li>
                <li class="active">Private Cafe</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->
    
   <!--=== Search Block Version 2 ===-->
    <!-- <div class="search-block-v2">
        <div class="container">
            <div class="col-md-6 col-md-offset-3">
                <h2>Search</h2>
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search words with regular expressions ...">
                    <span class="input-group-btn">
                        <button class="btn-u" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </div>
        </div>    
    </div> --><!--/container-->     
    <!--=== End Search Block Version 2 ===-->

    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row blog-page">    
            <!-- Left Sidebar -->
        	<div class="col-md-12 md-margin-bottom-40">
        	
        		<div class="col-md-12">
        			<!-- 사장 권한으로 방문시 생성 -->
        			<div class="btn-group" style="float: right; padding: 0 0 10px 10px;">
						<button type="button" class="btn-u korean-font" data-toggle="modal" data-target="#responsive" onclick="location.href='#'">
							카페 등록 
						</button>
					</div>
					<!-- END 사장 권한으로 방문시 생성 -->
					<div class="btn-group" style="float: right;">
						<button type="button" class="btn-u dropdown-toggle korean-font"
							data-toggle="dropdown" aria-expanded="false">
							정렬하기 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li class="korean-font"><a href="#">최신순</a></li>
							<li class="korean-font"><a href="#">조회순</a></li>
							<li class="korean-font"><a href="#">좋아요순</a></li>
							<!-- 사장 권한으로 방문시 생성 -->
							<li class="korean-font"><a href="#">내가 등록한 글 보기</a></li>
							<!-- END 사장 권한으로 방문시 생성 -->
						</ul>
					</div>
        			
				</div>
				
				<!-- 카페등록 모달 -->
				<div class="modal fade" id="responsive" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title korean-font" id="myModalLabel4">카페등록</h4>
                            </div>
                            <div class="modal-body">
                                <form action="#" method="post" enctype="multipart/form-data" 
                                		id="sky-form3" class="sky-form" novalidate="novalidate" style="border:0;">
				                   <!--  <header>Contacts form</header> -->
				                    
				                    <fieldset>                  
				                        <div class="row">
				                            <section class="col col-6">
				                                <label class="label">Cafe Name</label>
				                                <label class="input">
				                                    <!-- <i class="icon-append fa fa-user"></i> -->
				                                    <input type="text" name="pcafe_name" id="pcafe_name">
				                                </label>
				                            </section>
				                            <section class="col col-6">
				                                <label class="label">Cafe Phone Number</label>
				                                <label class="input">
				                                    <!-- <i class="icon-append fa fa-envelope-o"></i> -->
				                                    <input type="text" name="pcafe_phone" id="pcafe_phone">
				                                </label>
				                            </section>
				                        </div>
				                        
				                        <section>
				                            <label class="label">Cafe Address</label>
				                            <label class="input">
				                                <!-- <i class="icon-append fa fa-tag"></i> -->
				                                <input type="text" name="pcafe_address" id="pcafe_address">
				                            </label>
				                        </section>
				                        
				                        <div class="row">
				                            <section class="col col-6">
				                                <label class="label">Cafe Home URL</label>
				                                <label class="input">
				                                    <!-- <i class="icon-append fa fa-user"></i> -->
				                                    <input type="text" name="pcafe_url" id="pcafe_url">
				                                </label>
				                            </section>
				                            <section class="col col-6">
				                                <label class="label">Cafe Business Hours</label>
				                                <label class="input">
				                                    <!-- <i class="icon-append fa fa-envelope-o"></i> -->
				                                    <input type="text" name="pcafe_time" id="pcafe_time">
				                                </label>
				                            </section>
				                        </div>
				                        
				                        <section>
				                            <label class="label">Cafe Introduce</label>
				                            <label class="textarea">
				                                <!-- <i class="icon-append fa fa-comment"></i> -->
				                                <textarea rows="4" name="pcafe_introduce" id="pcafe_introduce"></textarea>
				                            </label>
				                        </section>
				                        
				                        <section>
				                            <label class="label">Cafe Tag</label>
				                            <label class="input">
				                                <!-- <i class="icon-append fa fa-tag"></i> -->
				                                <input type="text" name="pcafe_hash_tag" id="pcafe_hash_tag">
				                            </label>
				                        </section>
				                        
				                        <%-- <section>
				                            <label class="label">Cafe Image Upload</label>
				                            <!-- <label for="file" class="input input-captcha"> -->
				                            <label for="file" class="input input-file">
				                                <img src="${pageContext.request.contextPath}/resources/cafein_user/assets/plugins/sky-forms-pro/skyforms/captcha/image.php?<?php echo time(); ?>" width="100" height="32" alt="Captcha image" />
				                                <div class="button">
				                                	<input type="file" multiple onchange="this.parentNode.nextSibling.value = this.value" maxlength="6" name="pcafe_img" id="pcafe_img">"Browse"
				                            	</div>
				                            </label>
				                        </section> --%>
				                        
				                        <section>
											<label class="label">Cafe Image Upload</label>
											<label for="file" class="input input-file">
												<div class="button">
													<input type="file" name="pcafe_img" id="pcafe_img" multiple onchange="this.parentNode.nextSibling.value = this.value">Browse
												</div>
												<input type="text" readonly="">
											</label>
										</section>
				                        
				                        <button type="submit" class="btn-u btn-u-primary" style="float:right;">Register</button>
				                        <button type="button" class="btn-u btn-u-default" data-dismiss="modal" style="float:right;margin-right:5px;">Close</button>
				                    </fieldset>
				                </form>
                            </div>
                            <!-- <div class="modal-footer">
                                <button type="button" class="btn-u btn-u-default" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn-u btn-u-primary">Register</button>
                            </div> -->
                            <!-- <div class="message">
		                        <i class="rounded-x fa fa-check"></i>
		                        <p>Your message was successfully sent!</p>
		                    </div> -->
                        </div>
                    </div>
                </div>
				
				<div class="margin-bottom-10"></div> 
        		
        		<hr class="margin-bottom-60">
        		
        		<!-- Recent Works -->
		        <div class="text-center margin-bottom-50">
	                <h2 class="title-v2 title-center">PRIVATE CAFE</h2>
	                <p class="space-lg-hor korean-font">전국의 개인카페애 대한 정보가 들어있습니다. <span class="color-green">원하는 카드를 선택하여 들어가시면</span>, 더 많은 정보를 보실 수 있습니다.</p>
	            </div>
		        
		        <div class="row margin-bottom-20 news-v1">
		        
		        	<!-- 내글보기 누르면 삭제버튼 나오도록 하기 -->
		            <div class="col-md-4 col-sm-6 easy-block-v1">
		            	<!-- 삭제버튼 관련 소스, 바로 아래 a태그와 바로 위 easy-bolck-v1 클래스 -->
		            	<a href="#" class="easy-block-v1-badge rgba-red" style="left:22px;top:25px;text-decoration:none;">
		            		<i class="fa fa-trash-o"></i> Delete
		            	</a> 
		            	  
		            	<div class="thumbnails thumbnail-style thumbnail-kenburn news-v1-in">
		                <!-- <div class="thumbnails thumbnail-style thumbnail-kenburn news-v1-in bg-color-white"> -->
		                    <div class="thumbnail-img">
		                        <div class="overflow-hidden">
		                            <img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg"/>
		                        </div>
		                        <a class="btn-more hover-effect" href="${pageContext.request.contextPath}/cafein_user/private/private_detail.do" style="text-decoration:none;">read more +</a>                   
		                    </div>
		                    <div class="caption">
		                    	<h3 class="font-normal korean-font">Cafe O Clock</h3>
	                        	<ul class="list-unstyled list-inline blog-info">
		                            <li class='korean-font'>
		                            	<p style="max-height:43px;min-height:43px;overflow:hidden;margin-bottom:0px;">
		                            		<i class="fa fa-tags"></i> 
		                            		사업자가 내글보기를 누르면 카페 삭제하는 버튼 나오도록 하기!
		                            	</p>
		                            </li>
		                        </ul>
		                    </div>
		                    <ul class="list-inline news-v1-info no-margin-bottom" style="margin-top:15px;">
	                            <li><i class="fa fa-clock-o"></i> 2016-08-17</li>
	                            <li>|</li>
	                            <li><i class="fa fa-comments-o"></i> 14</li>
	                            <li>|</li>
	                            <li><i class="fa fa-eye"></i> 10</li>
	                            <li class="pull-right"><i class="fa fa-heart"></i> 239</li>
	                        </ul>
		                </div>
		            </div>
		            
		            <div class="col-md-4 col-sm-6">
		            	<div class="thumbnails thumbnail-style thumbnail-kenburn news-v1-in">
		                    <div class="thumbnail-img">
		                        <div class="overflow-hidden">
		                            <img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg"/>
		                        </div>
		                        <a class="btn-more hover-effect" href="${pageContext.request.contextPath}/cafein_user/private/private_detail.do" style="text-decoration:none;">read more +</a>                   
		                    </div>
		                    <div class="caption">
		                    	<h3 class="font-normal korean-font">Cafe O Clock</h3>
	                        	<ul class="list-unstyled list-inline blog-info">
		                            <li class='korean-font'>
		                            	<p style="max-height:43px;min-height:43px;overflow:hidden;margin-bottom:0px;">
		                            		<i class="fa fa-tags"></i> 
		                            		강서구, 우장산, 분위기짱, 스터디
		                            	</p>
		                            </li>
		                        </ul>
		                    </div>
		                    <ul class="list-inline news-v1-info no-margin-bottom" style="margin-top:15px;">
	                            <li><i class="fa fa-clock-o"></i> 2016-08-17</li>
	                            <li>|</li>
	                            <li><i class="fa fa-comments-o"></i> 14</li>
	                            <li>|</li>
	                            <li><i class="fa fa-eye"></i> 10</li>
	                            <li class="pull-right"><i class="fa fa-heart"></i> 239</li>
	                        </ul>
		                </div>
		            </div>
		            
		            <div class="col-md-4 col-sm-6">
		            	<div class="thumbnails thumbnail-style thumbnail-kenburn news-v1-in">
		                    <div class="thumbnail-img">
		                        <div class="overflow-hidden">
		                            <img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg"/>
		                        </div>
		                        <a class="btn-more hover-effect" href="${pageContext.request.contextPath}/cafein_user/private/private_detail.do" style="text-decoration:none;">read more +</a>                   
		                    </div>
		                    <div class="caption">
		                    	<h3 class="font-normal korean-font">Cafe O Clock</h3>
	                        	<ul class="list-unstyled list-inline blog-info">
		                            <li class='korean-font'>
		                            	<p style="max-height:43px;min-height:43px;overflow:hidden;margin-bottom:0px;">
		                            		<i class="fa fa-tags"></i> 
		                            		강서구, 우장산, 분위기짱, 스터디
		                            	</p>
		                            </li>
		                        </ul>
		                    </div>
		                    <ul class="list-inline news-v1-info no-margin-bottom" style="margin-top:15px;">
	                            <li><i class="fa fa-clock-o"></i> 2016-08-17</li>
	                            <li>|</li>
	                            <li><i class="fa fa-comments-o"></i> 14</li>
	                            <li>|</li>
	                            <li><i class="fa fa-eye"></i> 10</li>
	                            <li class="pull-right"><i class="fa fa-heart"></i> 239</li>
	                        </ul>
		                </div>
		            </div>
		            
		            <div class="col-md-4 col-sm-6">
		            	<div class="thumbnails thumbnail-style thumbnail-kenburn news-v1-in">
		                    <div class="thumbnail-img">
		                        <div class="overflow-hidden">
		                            <img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg"/>
		                        </div>
		                        <a class="btn-more hover-effect" href="${pageContext.request.contextPath}/cafein_user/private/private_detail.do" style="text-decoration:none;">read more +</a>                   
		                    </div>
		                    <div class="caption">
		                    	<h3 class="font-normal korean-font">Cafe O Clock</h3>
	                        	<ul class="list-unstyled list-inline blog-info">
		                            <li class='korean-font'>
		                            	<p style="max-height:43px;min-height:43px;overflow:hidden;margin-bottom:0px;">
		                            		<i class="fa fa-tags"></i> 
		                            		강서구, 우장산, 분위기짱, 스터디
		                            	</p>
		                            </li>
		                        </ul>
		                    </div>
		                    <ul class="list-inline news-v1-info no-margin-bottom" style="margin-top:15px;">
	                            <li><i class="fa fa-clock-o"></i> 2016-08-17</li>
	                            <li>|</li>
	                            <li><i class="fa fa-comments-o"></i> 14</li>
	                            <li>|</li>
	                            <li><i class="fa fa-eye"></i> 10</li>
	                            <li class="pull-right"><i class="fa fa-heart"></i> 239</li>
	                        </ul>
		                </div>
		            </div>
		            
		            <div class="col-md-4 col-sm-6">
		            	<div class="thumbnails thumbnail-style thumbnail-kenburn news-v1-in">
		                    <div class="thumbnail-img">
		                        <div class="overflow-hidden">
		                            <img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg"/>
		                        </div>
		                        <a class="btn-more hover-effect" href="${pageContext.request.contextPath}/cafein_user/private/private_detail.do" style="text-decoration:none;">read more +</a>                   
		                    </div>
		                    <div class="caption">
		                    	<h3 class="font-normal korean-font">Cafe O Clock</h3>
	                        	<ul class="list-unstyled list-inline blog-info">
		                            <li class='korean-font'>
		                            	<p style="max-height:43px;min-height:43px;overflow:hidden;margin-bottom:0px;">
		                            		<i class="fa fa-tags"></i> 
		                            		강서구, 우장산, 분위기짱, 스터디
		                            	</p>
		                            </li>
		                        </ul>
		                    </div>
		                    <ul class="list-inline news-v1-info no-margin-bottom" style="margin-top:15px;">
	                            <li><i class="fa fa-clock-o"></i> 2016-08-17</li>
	                            <li>|</li>
	                            <li><i class="fa fa-comments-o"></i> 14</li>
	                            <li>|</li>
	                            <li><i class="fa fa-eye"></i> 10</li>
	                            <li class="pull-right"><i class="fa fa-heart"></i> 239</li>
	                        </ul>
		                </div>
		            </div>
		            
		            <div class="col-md-4 col-sm-6">
		            	<div class="thumbnails thumbnail-style thumbnail-kenburn news-v1-in">
		                    <div class="thumbnail-img">
		                        <div class="overflow-hidden">
		                            <img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg"/>
		                        </div>
		                        <a class="btn-more hover-effect" href="${pageContext.request.contextPath}/cafein_user/private/private_detail.do" style="text-decoration:none;">read more +</a>                   
		                    </div>
		                    <div class="caption">
		                    	<h3 class="font-normal korean-font">Cafe O Clock</h3>
	                        	<ul class="list-unstyled list-inline blog-info">
		                            <li class='korean-font'>
		                            	<p style="max-height:43px;min-height:43px;overflow:hidden;margin-bottom:0px;">
		                            		<i class="fa fa-tags"></i> 
		                            		강서구, 우장산, 분위기짱, 스터디
		                            	</p>
		                            </li>
		                        </ul>
		                    </div>
		                    <ul class="list-inline news-v1-info no-margin-bottom" style="margin-top:15px;">
	                            <li><i class="fa fa-clock-o"></i> 2016-08-17</li>
	                            <li>|</li>
	                            <li><i class="fa fa-comments-o"></i> 14</li>
	                            <li>|</li>
	                            <li><i class="fa fa-eye"></i> 10</li>
	                            <li class="pull-right"><i class="fa fa-heart"></i> 239</li>
	                        </ul>
		                </div>
		            </div>
		            
		            <div class="col-md-4 col-sm-6">
		            	<div class="thumbnails thumbnail-style thumbnail-kenburn news-v1-in">
		                    <div class="thumbnail-img">
		                        <div class="overflow-hidden">
		                            <img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg"/>
		                        </div>
		                        <a class="btn-more hover-effect" href="${pageContext.request.contextPath}/cafein_user/private/private_detail.do" style="text-decoration:none;">read more +</a>                   
		                    </div>
		                    <div class="caption">
		                    	<h3 class="font-normal korean-font">Cafe O Clock</h3>
	                        	<ul class="list-unstyled list-inline blog-info">
		                            <li class='korean-font'>
		                            	<p style="max-height:43px;min-height:43px;overflow:hidden;margin-bottom:0px;">
		                            		<i class="fa fa-tags"></i> 
		                            		강서구, 우장산, 분위기짱, 스터디
		                            	</p>
		                            </li>
		                        </ul>
		                    </div>
		                    <ul class="list-inline news-v1-info no-margin-bottom" style="margin-top:15px;">
	                            <li><i class="fa fa-clock-o"></i> 2016-08-17</li>
	                            <li>|</li>
	                            <li><i class="fa fa-comments-o"></i> 14</li>
	                            <li>|</li>
	                            <li><i class="fa fa-eye"></i> 10</li>
	                            <li class="pull-right"><i class="fa fa-heart"></i> 239</li>
	                        </ul>
		                </div>
		            </div>
		            
		            <div class="col-md-4 col-sm-6">
		            	<div class="thumbnails thumbnail-style thumbnail-kenburn news-v1-in">
		                    <div class="thumbnail-img">
		                        <div class="overflow-hidden">
		                            <img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg"/>
		                        </div>
		                        <a class="btn-more hover-effect" href="${pageContext.request.contextPath}/cafein_user/private/private_detail.do" style="text-decoration:none;">read more +</a>                   
		                    </div>
		                    <div class="caption">
		                    	<h3 class="font-normal korean-font">Cafe O Clock</h3>
	                        	<ul class="list-unstyled list-inline blog-info">
		                            <li class='korean-font'>
		                            	<p style="max-height:43px;min-height:43px;overflow:hidden;margin-bottom:0px;">
		                            		<i class="fa fa-tags"></i> 
		                            		강서구, 우장산, 분위기짱, 스터디
		                            	</p>
		                            </li>
		                        </ul>
		                    </div>
		                    <ul class="list-inline news-v1-info no-margin-bottom" style="margin-top:15px;">
	                            <li><i class="fa fa-clock-o"></i> 2016-08-17</li>
	                            <li>|</li>
	                            <li><i class="fa fa-comments-o"></i> 14</li>
	                            <li>|</li>
	                            <li><i class="fa fa-eye"></i> 10</li>
	                            <li class="pull-right"><i class="fa fa-heart"></i> 239</li>
	                        </ul>
		                </div>
		            </div>
		            
		            <div class="col-md-4 col-sm-6">
		            	<div class="thumbnails thumbnail-style thumbnail-kenburn news-v1-in">
		                    <div class="thumbnail-img">
		                        <div class="overflow-hidden">
		                            <img class="img-responsive" src="${pageContext.request.contextPath}/resources/cafein_user/assets/img/main/img2.jpg"/>
		                        </div>
		                        <a class="btn-more hover-effect" href="${pageContext.request.contextPath}/cafein_user/private/private_detail.do" style="text-decoration:none;">read more +</a>                   
		                    </div>
		                    <div class="caption">
		                    	<h3 class="font-normal korean-font">Cafe O Clock</h3>
	                        	<ul class="list-unstyled list-inline blog-info">
		                            <li class='korean-font'>
		                            	<p style="max-height:43px;min-height:43px;overflow:hidden;margin-bottom:0px;">
		                            		<i class="fa fa-tags"></i> 
		                            		강서구, 우장산, 분위기짱, 스터디
		                            	</p>
		                            </li>
		                        </ul>
		                    </div>
		                    <ul class="list-inline news-v1-info no-margin-bottom" style="margin-top:15px;">
	                            <li><i class="fa fa-clock-o"></i> 2016-08-17</li>
	                            <li>|</li>
	                            <li><i class="fa fa-comments-o"></i> 14</li>
	                            <li>|</li>
	                            <li><i class="fa fa-eye"></i> 10</li>
	                            <li class="pull-right"><i class="fa fa-heart"></i> 239</li>
	                        </ul>
		                </div>
		            </div>
		            
		        </div>
		        <!-- END Recent Works -->   

                
                <!--Pagination-->
                <!-- <div class="text-center">
                    <ul class="pagination">
                        <li><a href="#">«</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li class="active"><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li><a href="#">7</a></li>
                        <li><a href="#">8</a></li>
                        <li><a href="#">»</a></li>
                    </ul>                                                            
                </div> -->
                <br><br>
        		<button type="button" class="btn-u btn-block">Load More</button>
                <!-- End Pagination -->
            </div>
            <!-- End Left Sidebar -->

        </div><!--/row-->        
    </div><!--/container-->		
    <!--=== End Content Part ===-->
