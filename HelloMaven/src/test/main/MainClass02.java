package test.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import test.dao.MemberDao;

public class MainClass02 {
   public static void main(String[] args) {
      // 회원 정보를 추가하고 삭제하려면 ??  MemberDaoImpl 클래스를 import 하지 않고 할수 있을까?
      
      //불가능 하지 않을까? 만약 성공한다면? 
      
	   //init.xml 문서를 읽어들여서 객체를 생성할것들은 생성하고 spring 이 관리한다.
      ApplicationContext context=new ClassPathXmlApplicationContext("test/main/init.xml");
      //spring 이 관리하고 있는 객체중에서 MemberDao type 을 찾아서 가지고 온다.
      MemberDao dao=context.getBean(MemberDao.class);
      
      dao.insert();
      dao.delete();
   }
}