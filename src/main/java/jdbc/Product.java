package jdbc;

public class Product {
	private String maker;
	private String prodName;
	private String discrip;
	private int amount;
	private int price;
	private int cateNo;
	private int num;
	private String imageUrl;

	public Product(String maker, String prodName, String discrip, int amount, int price, int cateNo, int num,
			String imageUrl) {
		super();
		this.maker = maker;
		this.prodName = prodName;
		this.discrip = discrip;
		this.amount = amount;
		this.price = price;
		this.cateNo = cateNo;
		this.num = num;
		this.imageUrl = imageUrl;
	}

	public Product(String maker, String prodName, String discrip, int amount, int price, int cateNo, int num) {
		super();
		this.maker = maker;
		this.prodName = prodName;
		this.discrip = discrip;
		this.amount = amount;
		this.price = price;
		this.cateNo = cateNo;
		this.num = num;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getDiscrip() {
		return discrip;
	}

	public void setDiscrip(String discrip) {
		this.discrip = discrip;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Override
	public String toString() {
		return "Product [maker=" + maker + ", prodName=" + prodName + ", discrip=" + discrip + ", amount=" + amount
				+ ", price=" + price + ", cateNo=" + cateNo + ", num=" + num + ", imageUrl=" + imageUrl + "]";
	}
	
}
