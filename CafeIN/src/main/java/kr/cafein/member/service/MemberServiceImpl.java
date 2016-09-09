package kr.cafein.member.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.cafein.member.dao.MemberMapper;
import kr.cafein.member.domain.MemberCommand;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Resource
	private MemberMapper memberMapper;

	
	@Override
	public void insert(MemberCommand member) {
		memberMapper.insert(member);
	}

	@Override
	public MemberCommand selectMember(String u_uid) {
		return memberMapper.selectMember(u_uid);
	}

	@Override
	public void update(MemberCommand member) {
		memberMapper.update(member);
	}

	@Override
	public void delete(String u_uid) {
		/*// id로 작성된 부모글의 번호를 구함
		List <Integer> seq = boardMapper.selectSeqById(id);
		// 해당 id로 작성된 부모글에 달린 댓글 삭제
		if(seq!=null && !seq.isEmpty()){
			boardMapper.deleteReplyBySeqList(seq);
		}
		
		// 해당 id로 작성된 댓글 삭제
		boardMapper.deleteReplyById(id);
		// 해당 id로 작성된 부모글 삭제
		boardMapper.deleteById(id);
		
		// 해당 id 삭제
		*/
		
		memberMapper.delete(u_uid);
	}

	@Override
	public String selectUid(String u_email) {
		// TODO Auto-generated method stub
		return memberMapper.selectUid(u_email);
	}

	@Override
	public int getMemberCount() {
		// TODO Auto-generated method stub
		return memberMapper.getMemberCount();
	}

	@Override
	public List<MemberCommand> getMemberList(Map<String, Object> map) {
		
		return memberMapper.getMemberList(map);
	}

	@Override
	public List<MemberCommand> getAllMemberList() {
		// TODO Auto-generated method stub
		return memberMapper.getAllMemberList();
	}




}
