package com.szmw.dao.tbcard;


/**
 * 卡劵
 * @author mush
 */
public class TBCardModel {
	private int    id;
	private int    userid;         //用户关联Id
	private String createtime;     //创建时间
	private String color;          //颜色
	private String title;          //标题
	private String description;
	private String canshare;
	private String canreward;   
	private int    confirmmode;    //消券方式，卡号，二维码，条形码
	private String stock;          //消券方式，库存量
	private String permax;         //一个人最多可以领取几张
	private String starttime;
	private String endtime;
	private String consumeshopid;  //可消费的门店
	private String instruction;
	private String servicemobile;  //店铺电话
	private String consumedetail;  //消费详情，包含礼品券，团购券，优惠券
	private int    cardtype;       //折扣券，代金券，礼品券，团购券，优惠券
	private float  discount;       //折扣券，折扣比例
	private float  cashcoupon;     //代金券，代多少
	private float  enablequtoa;    //代金券的启用额度
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCanshare() {
		return canshare;
	}
	public void setCanshare(String canshare) {
		this.canshare = canshare;
	}
	public String getCanreward() {
		return canreward;
	}
	public void setCanreward(String canreward) {
		this.canreward = canreward;
	}
	public int getConfirmmode() {
		return confirmmode;
	}
	public void setConfirmmode(int confirmmode) {
		this.confirmmode = confirmmode;
	}
	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}
	public String getPermax() {
		return permax;
	}
	public void setPermax(String permax) {
		this.permax = permax;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getConsumeshopid() {
		return consumeshopid;
	}
	public void setConsumeshopid(String consumeshopid) {
		this.consumeshopid = consumeshopid;
	}
	public String getInstruction() {
		return instruction;
	}
	public void setInstruction(String instruction) {
		this.instruction = instruction;
	}
	public String getServicemobile() {
		return servicemobile;
	}
	public void setServicemobile(String servicemobile) {
		this.servicemobile = servicemobile;
	}
	public String getConsumedetail() {
		return consumedetail;
	}
	public void setConsumedetail(String consumedetail) {
		this.consumedetail = consumedetail;
	}
	public int getCardtype() {
		return cardtype;
	}
	public void setCardtype(int cardtype) {
		this.cardtype = cardtype;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public float getCashcoupon() {
		return cashcoupon;
	}
	public void setCashcoupon(float cashcoupon) {
		this.cashcoupon = cashcoupon;
	}
	public float getEnablequtoa() {
		return enablequtoa;
	}
	public void setEnablequtoa(float enablequtoa) {
		this.enablequtoa = enablequtoa;
	}
	
}
