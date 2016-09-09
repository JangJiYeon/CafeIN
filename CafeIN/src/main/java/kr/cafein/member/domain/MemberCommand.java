package kr.cafein.member.domain;

import java.sql.Date;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class MemberCommand {
	@NotEmpty
	private String u_uid;
	@Email
	@NotEmpty(message="Please enter your email address")
	private String u_email;
	@NotEmpty(message="Please enter your name")
	private String u_name;
	@Size(min=4,max=10,message="Please enter your password(4~10)")
	private String u_password;
	private Date u_reg_date;
	private int u_level;
	@Size(min=4,max=10,message="Please enter your Confirm Password★")
	private String confirmpassword;
	
	


	public String getConfirmpassword() {
		return confirmpassword;
	}



	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}



	//회원가입 _ 비밀번호입력과 비밀번호확인 일치 여부 체크
	public boolean isConfirmPasswd() {
		if(u_password.equals(confirmpassword)) {
			return true; // 비번 일치
		}
		return false;// 비번 불일치
	}


	
		//회원 로그인 _이메일과 비밀번호 일치 여부 체크
		public boolean isCheckedPasswd(String userPasswd) {
			if(u_password.equals(userPasswd)) {
				return true;
			}
			return false;
		}
	
	
	public String getU_uid() {
		return u_uid;
	}
	public void setU_uid(String u_uid) {
		this.u_uid = u_uid;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public Date getU_reg_date() {
		return u_reg_date;
	}
	public void setU_reg_date(Date u_reg_date) {
		this.u_reg_date = u_reg_date;
	}
	public int getU_level() {
		return u_level;
	}
	public void setU_level(int u_level) {
		this.u_level = u_level;
	}
	
	@Override
	public String toString() {
		return "MemberCommand [u_uid=" + u_uid + ", u_email=" + u_email + ", u_name=" + u_name + ", u_password="
				+ u_password + ", u_reg_date=" + u_reg_date + ", u_level=" + u_level + "]";
	}
	
	
}
