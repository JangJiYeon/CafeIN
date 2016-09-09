var ContactForm = function () {

    return {
        
        //Contact Form
        initContactForm: function () {
	        // Validation
	        $("#sky-form3").validate({
	            // Rules for form validation
	            rules:
	            {
	                name:
	                {
	                    required: true
	                },
	                title:
                	{
	                	required: true
                	},
	                email:
	                {
	                    required: true,
	                    email: true
	                },
	                password:
	                {
	                    required: true,
	                    minlength: 3,
	                    maxlength: 20
	                },
	                message:
	                {
	                    required: true,
	                    minlength: 10
	                },
	                captcha:
	                {
	                    required: true,
	                    remote: '/CafeIN/resources/cafein_user/assets/plugins/sky-forms-pro/skyforms/captcha/process.php'
	                },
	                /*pcafe_img:
	                {
	                	required: true,
	                    remote: '/CafeIN/resources/cafein_user/assets/plugins/sky-forms-pro/skyforms/captcha/process.php'
	                },*/
	                pcafe_name:
	                {
	                	required: true
	                },
	                pcafe_phone:
	                {
	                	required: true
	                },
	                pcafe_address:
	                {
	                	required: true
	                },
	                pcafe_url:
	                {
	                	required: true
	                },
	                pcafe_time:
	                {
	                	required: true
	                },
	                pcafe_introduce:
	                {
	                	required: true
	                },
	                pcafe_hash_tag:
	                {
	                	required: true
	                }                
	            },
	                                
	            // Messages for form validation
	            messages:
	            {
	                name:
	                {
	                    required: 'Please enter your name',
	                },
	                title:
	                {
	                	reauired: 'Please enter yout title',
	                },
	                email:
	                {
	                    required: 'Please enter your email address',
	                    email: 'Please enter a VALID email address'
	                },
	                password:
	                {
	                    required: 'Please enter your password'
	                },
	                message:
	                {
	                    required: 'Please enter your message'
	                },
	                captcha:
	                {
	                    required: 'Please enter characters',
	                    remote: 'Correct captcha is required'
	                },
	                /*pcafe_img:
	                {
	                	required: 'Please enter Image',
	                    remote: 'Correct Image is required'
	                },*/
	                pcafe_name:
	                {
	                	required: 'Please enter your name',
	                },
	                pcafe_phone:
	                {
	                	required: 'Please enter your phone number',
	                },
	                pcafe_address:
	                {
	                	required: 'Please enter your address',
	                },
	                pcafe_url:
	                {
	                	required: 'Please enter your url',
	                },
	                pcafe_time:
	                {
	                	required: 'Please enter your time',
	                },
	                pcafe_introduce:
	                {
	                	required: 'Please enter your introduce',
	                },
	                pcafe_hash_tag:
	                {
	                	required: 'Please enter your tag',
	                }  
	            },
	                                
	            // Ajax form submition                  
	            submitHandler: function(form)
	            {
	                $(form).ajaxSubmit(
	                {
	                    beforeSend: function()
	                    {
	                        $('#sky-form3 button[type="submit"]').attr('disabled', true);
	                    },
	                    success: function()
	                    {
	                        $("#sky-form3").addClass('submited');
	                    }
	                });
	            },
	            
	            // Do not change code below
	            errorPlacement: function(error, element)
	            {
	                error.insertAfter(element.parent());
	            }
	        });
        }

    };
    
}();