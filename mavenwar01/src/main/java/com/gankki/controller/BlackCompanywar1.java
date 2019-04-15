package com.gankki.controller;


/**
 * 黑名单企业
 * @author Administrator
 *
 */
public class BlackCompanywar1 implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;//编号
	private String companyName;//公司名字
	private String creditId;//社会信用码
	private String	organizId;//组织机构代码
	private String	businesRegistId;//工商注册码
	private String legalPersonName;//法定代表人姓名
	private String legalPersonIdCard;//法定代表人身份证
	private String financePersonName;//财务负责人姓名
	private String financePersonIdCard;//财务负责人身份证
	private Integer cid;//关联的案件的id
	private String sourcepro;//来源省份

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	
	
	public String getCompanyName() {
		return companyName;
	}
	
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	public String getCreditId() {
		return creditId;
	}
	public void setCreditId(String creditId) {
		this.creditId = creditId;
	}
	
	public String getOrganizId() {
		return organizId;
	}
	public void setOrganizId(String organizId) {
		this.organizId = organizId;
	}
	
	public String getBusinesRegistId() {
		return businesRegistId;
	}
	public void setBusinesRegistId(String businesRegistId) {
		this.businesRegistId = businesRegistId;
	}
	
	public String getLegalPersonName() {
		return legalPersonName;
	}
	public void setLegalPersonName(String legalPersonName) {
		this.legalPersonName = legalPersonName;
	}
	
	public String getLegalPersonIdCard() {
		return legalPersonIdCard;
	}
	public void setLegalPersonIdCard(String legalPersonIdCard) {
		this.legalPersonIdCard = legalPersonIdCard;
	}
	
	public String getFinancePersonName() {
		return financePersonName;
	}
	public void setFinancePersonName(String financePersonName) {
		this.financePersonName = financePersonName;
	}
	
	public String getFinancePersonIdCard() {
		return financePersonIdCard;
	}
	public void setFinancePersonIdCard(String financePersonIdCard) {
		this.financePersonIdCard = financePersonIdCard;
	}
	public String getSourcepro() {
		return sourcepro;
	}

	public void setSourcepro(String sourcepro) {
		this.sourcepro = sourcepro;
	}
}
