package prod;

import java.io.FileReader;
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class ProdDAO {
	private Connection conn = getConnect();
	
//	싱글턴 패턴
	private static ProdDAO dao = new ProdDAO();
	
	private ProdDAO() { }
	
	public static ProdDAO getInstance() {
		return dao;
	}
public List<ProdDTO> lst;
	
//	oracle데이터베이스에 접속
	private Connection getConnect() {
		try {
			Properties prop = new Properties();
			String path = ProdDAO.class.getResource("db.properties")
					.getPath();
			
			path = URLDecoder.decode(path, "utf-8");
			prop.load(new FileReader(path));
			
			String driver = prop.getProperty("driver");
			String url = prop.getProperty("url");
			String user = prop.getProperty("user");
			String pw = prop.getProperty("pw");
	
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url, user, pw);
			return conn;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	 public int insertProd(ProdDTO prod) {
	      String sql = "insert into Prod(maker, prodname, discrip, amount, price, cate, FileFullPath, FileName ) "
	            + "values (?,?,?,?,?,?,?,?)";
	      try {
	         PreparedStatement pstm = conn.prepareStatement(sql);
	         pstm.setString(1, prod.getMaker());
	         pstm.setString(2, prod.getProdName());
	         pstm.setString(3, prod.getDiscrip());
	         pstm.setInt(4, prod.getAmount());
	         pstm.setInt(5, prod.getPrice());
	         pstm.setString(6, prod.getCate());
	         pstm.setString(7, prod.getFileFullPath());
	         pstm.setString(8, prod.getFileName());
	         //pstm.setInt(8, prod.getNum());
	         int res = pstm.executeUpdate();
	         pstm.close();
	         return res;
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return 0;
	   }

	
	public List<ProdDTO> selectProdAll() {
		lst = new ArrayList<>();
		String sql = "select * from prod";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				
				String maker = rs.getString("maker");
				String prodName = rs.getString("prodname");
				String discrip = rs.getString("discrip");
				int amount = rs.getInt("amount");
				int price = rs.getInt("price");
				String cate = rs.getString("cate");
				int num = rs.getInt("num");
				String fileFullPath = rs.getString("fileFullPath");
				String fileName = rs.getString("fileName");
				
				ProdDTO prod = new ProdDTO(maker, prodName, discrip,
						amount, price, cate, num, fileFullPath, fileName);
				lst.add(prod);
				
			}
			pstmt.close();
			rs.close();
			return lst;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}
	
	public ProdDTO selectProduct(int num) {
		String sql = "select maker, prodname, discrip, amount, "
				+ " price, cate, num, fileFullPath, fileName "
				+ " from prod where num = ?";
		ProdDTO prod = null;
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, num);
			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {
				String maker = rs.getString("maker");
				String prodname = rs.getString("prodname");
				String discrip = rs.getString("discrip");
				int amount = rs.getInt("amount");
				int price = rs.getInt("price");
				String cate = rs.getString("cate");
				int pnum = rs.getInt("num");
				String fileFullPath = rs.getString("fileFullPath");
				String fileName = rs.getString("fileName");
				prod = new ProdDTO(maker, prodname, discrip, amount, price, cate, pnum, fileFullPath, fileName);
			}
			rs.close();
			pstm.close();
			return prod;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) {
		ProdDAO dao = getInstance();
		
//		List<Product> plst = dao.selectProdAll();
//		
//		for (Product product : plst) {
//			System.out.println(product);
//		}
		
		ProdDTO prod = dao.selectProduct(1);
		System.out.println(prod);
		
	}
}
