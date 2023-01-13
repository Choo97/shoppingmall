package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "fighting";
			String dbPW = "coding";
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPW);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//로그인 함수
	public int login(String userID, String userPW) {
		String SQL = "SELECT USERPW FROM usertable WHERE USERID = ?";
					//사용자로부터 입력 받은 유저 아이디가 가지는 패스워드를 가져와서 다뤄주는 sql문
		//sql문을 성공적으로 실행할 수 있게 해주는코드들
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
		
		try {
			//DatabaseUtil의 getConnection 함수를 이용해서 LectureEvaluation 데이버베이스의 접근한 뒤에 연결된 객체 자체를 반환 연결된 객체는 conn에 담긴다.
//			conn = DatabaseUtil.getConnection();
			//PreparedStatement를 이용해서 conn 객체에서 SQL문장을 실행할 수 있는 형태로 준비시켜줌
			pstmt = conn.prepareStatement(SQL);
			//사용자로 부터 입력받은 id값을 ?안에 넣어주는 코드
			pstmt.setString(1, userID);
			//결과를 rs에 담아줌
			rs = pstmt.executeQuery(); //조회기능
			if(rs.next()) {
				//실제 사용자가 입력한 비밀번호와 userPassword가 일치하면 1을 반환
				if(rs.getString(1).equals(userPW)) 
					return 1; //로그인 성공
				else 
					return 0; //비밀번호 틀립
				
			}
			return -1; //아이디 없음
		}catch (Exception e) {
			e.printStackTrace();
		} finally { //한번 실행 하면 닫아주는 코드 (접근한 자원들을 해제해 줌으로써 서버에 무리가 가지 않게 해준다)
				try {if(conn != null)conn.close();} catch (Exception e) {e.printStackTrace();}
				try {if(pstmt != null)pstmt.close();} catch (Exception e) {e.printStackTrace();}
				try {if(rs != null)rs.close();} catch (Exception e) {e.printStackTrace();}
		}
		return -2; //데이터베이스 오류
	}
	
	
	//회원가입 함수
	public int join(UserDTO user) {
		String SQL = "INSERT INTO USERTABLE VALUES (?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPW());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserAddress());
			pstmt.setString(5, user.getPhonNum());
			return pstmt.executeUpdate(); //회원가입 성공시 1 반환
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
				try {if(conn != null)conn.close();} catch (Exception e) {e.printStackTrace();}
				try {if(pstmt != null)pstmt.close();} catch (Exception e) {e.printStackTrace();}
				try {if(rs != null)rs.close();} catch (Exception e) {e.printStackTrace();}
		}
		return -1; //회원가입 실패
	}
	
}
