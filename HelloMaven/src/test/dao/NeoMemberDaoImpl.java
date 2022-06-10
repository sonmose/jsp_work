package test.dao;

public class NeoMemberDaoImpl implements MemberDao{

	@Override
	public void insert() {
		System.out.println("네오 회원 정보를 추가 합니다.");
		
	}

	@Override
	public void delete() {
		System.out.println("네오 회원 정보를 삭제 합니다.");
		
	}

}
