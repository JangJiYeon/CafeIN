<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Q &amp; A</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="${pageContext.request.contextPath}/cafein_user/main/main.do">Home</a></li>
                <li class="active">Contacts</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->
    
    
    <!--=== Content Part ===-->

    <div class="container content">     
        <div class="row margin-bottom-30">
            <div class="col-md-9 mb-margin-bottom-30">
                <!-- Google Map -->
                <div id="map" class="map map-box map-box-space margin-bottom-40"></div>
                <!-- End Google Map -->

                <!-- General Unify Forms -->
                <form action="#" class="sky-form" style="border:0;">                    
                    <section>
                        <div class="inline-group">
                            <label class="radio korean-font"><input type="radio" name="radio-inline" checked><i class="rounded-x"></i>프랜차이즈카페 문의</label>
                            <label class="radio korean-font"><input type="radio" name="radio-inline"><i class="rounded-x"></i>개인카페 문의</label>
                            <label class="radio korean-font"><input type="radio" name="radio-inline"><i class="rounded-x"></i>커스터마이징 문의</label>
                            <label class="radio korean-font"><input type="radio" name="radio-inline"><i class="rounded-x"></i>이벤트 문의</label>
                            <label class="radio korean-font"><input type="radio" name="radio-inline"><i class="rounded-x"></i>건의사항</label>
                        </div>
                    </section>
                </form>
                <!-- <form action="#" class="sky-form" style="border:0;"> -->
                
                <form action="${pageContext.request.contextPath}/resources/cafein_user/assets/php/sky-forms-pro/demo-contacts-process.php" method="post" id="sky-form3" class="sky-form contact-style">
                    <fieldset class="no-padding">

                        <label>이메일 <span class="color-red">*</span></label>
                        <div class="row sky-space-20">
                            <div class="col-md-7 col-md-offset-0">
                                <div>
                                    <input type="email" name="email" id="email" class="form-control">
                                </div>
                            </div>                
                        </div>
                        
                        <label>제목 <span class="color-red">*</span></label>
                        <div class="row sky-space-20">
                            <div class="col-md-7 col-md-offset-0">
                                <div>
                                    <input type="text" name="title" id="title" class="form-control">
                                </div>
                            </div>                
                        </div>
                        
                        <label>내용 <span class="color-red">*</span></label>
                        <div class="row sky-space-20">
                            <div class="col-md-11 col-md-offset-0">
                                <div>
                                    <textarea rows="8" name="message" id="message" class="form-control"></textarea>
                                </div>
                            </div>                
                        </div>

                        <label>비밀번호 <span class="color-red">*</span></label>
                        <div class="row sky-space-20">
                            <div class="col-md-7 col-md-offset-0">
                                <div>
                                    <input type="password" name="password" id="password" class="form-control">
                                </div>
                            </div>                
                        </div>
                        
                        <p><button type="submit" class="btn-u">Send Message</button></p>
                    </fieldset>

                    <div class="message">
                        <i class="rounded-x fa fa-check"></i>
                        <p>Your message was successfully sent!</p>
                    </div>
                </form>
            </div><!--/col-md-9-->
            
            <div class="col-md-3">
                <!-- Contacts -->
                <div class="headline"><h2>Contacts</h2></div>
                <ul class="list-unstyled who margin-bottom-30">
                    <li><a href="#"><i class="fa fa-home"></i>5B Streat, City 50987 New Town US</a></li>
                    <li><a href="#"><i class="fa fa-envelope"></i>info@example.com</a></li>
                    <li><a href="#"><i class="fa fa-phone"></i>1(222) 5x86 x97x</a></li>
                    <li><a href="#"><i class="fa fa-globe"></i>http://www.example.com</a></li>
                </ul>

                <!-- Business Hours -->
                <div class="headline"><h2>Business Hours</h2></div>
                <ul class="list-unstyled margin-bottom-30">
                    <li><strong>Monday-Friday:</strong> 10am to 8pm</li>
                    <li><strong>Saturday:</strong> 11am to 3pm</li>
                    <li><strong>Sunday:</strong> Closed</li>
                </ul>

                <!-- Why we are? -->
                <div class="headline"><h2>Why we are?</h2></div>
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum.</p>
                <ul class="list-unstyled">
                    <li><i class="fa fa-check color-green"></i> Odio dignissimos ducimus</li>
                    <li><i class="fa fa-check color-green"></i> Blanditiis praesentium volup</li>
                    <li><i class="fa fa-check color-green"></i> Eos et accusamus</li>
                </ul>
            </div><!--/col-md-3-->
        </div><!--/row-->
    </div><!--/container-->     
    <!--=== End Content Part ===-->

