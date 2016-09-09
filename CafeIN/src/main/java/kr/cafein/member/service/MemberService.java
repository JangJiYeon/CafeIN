package kr.cafein.member.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.transaction.annotation.Transactional;

import kr.cafein.member.domain.MemberCommand;

//모든 메소드에 트랜잭션 처리 가능
@Transactional
public interface MemberService {

	public void insert(MemberCommand member);
	// 읽기전용
	@Transactional(readOnly = true)
	public MemberCommand selectMember(String u_uid);

	
	@Transactional(readOnly = true)
	public String selectUid(String u_email);
	
	public void update(MemberCommand member);
	public void delete(String u_uid);
	
	// 관리자 페이지 회원정보 테이블
	public List<MemberCommand> getMemberList(Map<String,Object> map);
	public int getMemberCount();
	
	public List<MemberCommand> getAllMemberList();

}
