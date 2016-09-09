$(document).ready(function(){
	var checkIdDuplicated =0;
	
	
	// 아이디 중복 체크
	$('#confirmId').click(function(){
		if($('#u_email').val()==''){
			alert('이메일을 입력하세여');
			$('#u_email').focus();
			return;
		}
		
		
		
		// 이메일 형식 체크
		 var email = document.getElementById('u_email');
		    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		 
		    if (!filter.test(email.value)) {
		    $('#message_id').css('color','red').text('Please enter a VALID email address(영어,숫자)');
		    
		    email.focus;
		    return false;
		 }
		    
		
		    

		$('#message_id').html(''); // 메시지 초기화
		$('#loading').show(); //로딩 이미지 노출
		
		$.ajax({
			url:'confirmId.do',
			type:'post',
			data:{u_email:$('#u_email').val()},
			dataType:'json',
			cache:false, //데이타를 보관 변하지 않으면 저장된 데이터 사용, 하지만 이건 변하는 데이터이기때문에 보관 xx
			timeout:30000,
			success:function(data){
				$('#loading').hide(); // 로딩이미지 감추기
				
				if(data.result == 'idNotFound'){
					$('#message_id').css('color','#000000').text('등록가능ID');
					checkIdDuplicated =1;
					
				}else if(data.result=='idDuplicated'){
					$('#message_id').css('color','red').text('중복된 ID');
					checkIdDuplicated =0;
				}
				
			},
			error:function(){
				$('#loading').hide(); // 로딩 이미지 감추기
				alert('네트워크 오류 발생!');
			}
			
		});
	
	});
	
	
	
	
	
	// 아이디 중복 안내 메시지 초기화 및 아이디 중복 값 초기화
	$('#register_form #u_email').keyup(function(){
		checkIdDuplicated =0;
		$('#message_id').text('');
	});
	
	
	
	// submit 이벤트 발생 시 아이디 중복 체크 여부 확인
	$('#register_form').submit(function(){
		if(checkIdDuplicated ==0){
			alert('아이디 중복 체크 필수!');
			if($('#u_email').val()==''){
				$('#u_email').focus();
			}else{
				$('#confirmId').focus();
			}
			return false;
		}
	});
});