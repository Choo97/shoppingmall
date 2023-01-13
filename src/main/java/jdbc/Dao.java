package jdbc;

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

public class Dao {
	private Connection conn = getConnect();
	
//	싱글턴 패턴
	private static Dao dao = new Dao();
	
	private Dao() { }
	
	public static Dao getInstance() {
		return dao;
	}
public List<Product> lst;
	
//	oracle데이터베이스에 접속
	private Connection getConnect() {
		try {
			Properties prop = new Properties();
			String path = Dao.class.getResource("db.properties")
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
	
	 public int insertProd(Product prod) {
	      String sql = "insert into Prod(maker, prodname, discrip, amount, price, cateno, imageurl ) "
	            + "values (?,?,?,?,?,?,?)";
	      try {
	         PreparedStatement pstm = conn.prepareStatement(sql);
	         pstm.setString(1, prod.getMaker());
	         pstm.setString(2, prod.getProdName());
	         pstm.setString(3, prod.getDiscrip());
	         pstm.setInt(4, prod.getAmount());
	         pstm.setInt(5, prod.getPrice());
	         pstm.setInt(6, prod.getCateNo());
	         pstm.setString(7, prod.getImageUrl());
	         //pstm.setInt(8, prod.getNum());
	         int res = pstm.executeUpdate();
	         pstm.close();
	         return res;
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return 0;
	   }

	
	public List<Product> selectProdAll() {
		
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
				int cateNo = rs.getInt("cateno");
				int num = rs.getInt("num");
				String imageUrl = rs.getString("imageurl");
				
				Product prod = new Product(maker, prodName, discrip,
						amount, price, cateNo, num, imageUrl);
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
	
	public Product selectProduct(int num) {
		String sql = "select maker, prodname, discrip, amount, "
				+ " price, cateno, num, imageurl "
				+ " from prod where num = ?";
		Product prod = null;
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
				int cateno = rs.getInt("cateno");
				int pnum = rs.getInt("num");
				String imageurl = rs.getString("imageurl");
				prod = new Product(maker, prodname, discrip, amount, price, cateno, pnum, imageurl);
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
		Dao dao = getInstance();
		
//		List<Product> plst = dao.selectProdAll();
//		
//		for (Product product : plst) {
//			System.out.println(product);
//		}
		
		Product prod = dao.selectProduct(1);
		System.out.println(prod);
		
	}
}
