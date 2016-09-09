$(document).ready(function(){
	
	
	
	// submit 이벤트 발생 시 아이디 중복 체크 여부 확인
	$('#admin_registerform').submit(function(){
	
	// return{
	 // Validation       
    $("#admin_registerform").validate({                   
        // Rules for form validation
        rules:
        {
        	u_name:
            {
                required: true
            },
            u_email:
            {
                required: true,
                email: true
            },
            u_password:
            {
                required: true,
                minlength: 4,
                maxlength: 10
            }
        },
        
        // Messages for form validation
        messages:
        {
        	u_name:
            {
        		 required: 'Please enter your UserName(등록)'
            },
        	u_email:
            {
                required: 'Please enter your email address(등록)',
                email: 'Please enter a VALID email address(등록)'
            },
            u_password:
            {
                required: 'Please enter your password(등록)'
            }
        },                  
        
        
        
        // Ajax form submition                  
        submitHandler: function(form)
        {
            $(form).ajaxSubmit(
            {
                beforeSend: function()
                {
                    $('#admin_registerform button[type="submit"]').attr('disabled', true);
                   
                },
                success: function(data)
                {
                	if(data.result == 'success'){
    					$('#message_1').css('color','red').text('가입되었습니다.');
    					   location.reload();
    				}else if(data.result=='failure'){
    					$('#message_2').css('color','red').text('가입 실패.');
    					location.reload();
    				}
                	
                }
            });
        },
        
        
        
        
        // Do not change code below
        errorPlacement: function(error, element)
        {
            error.insertAfter(element.parent());
            alert("error_Validation : return false!!!");
          
        }
    });
	
	//}; //return
	
    

    
    
	});  //submit
	
	
	
	
});