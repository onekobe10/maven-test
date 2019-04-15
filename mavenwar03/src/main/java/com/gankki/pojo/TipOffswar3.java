package com.gankki.pojo;

import java.math.BigDecimal;

/**
 * 举报实体
 * @author Administrator
 *
 */
public class TipOffswar3 implements java.io.Serializable{
	private static final long serialVersionUID = 1L;

	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 举报编号id
	 */
	private String tipId;
	/**
	 * 举报人姓名
	 */
	private String reportName;
	/**
	 * 举报人身份证号
	 */
	private String reportIdCard;
	/**
	 * 举报人电话
	 */
	private String reportPhone;
	/**
	 * 举报人地址
	 */
	private String reportAdd;
	/**
	 * 是否匿名
	 */
	private String isRealName;
	/**
	 * 举报公司全称
	 */
	private String informantCompany;
	/**
	 * 发现时间
	 */
	private String discoveryTime;
	/**
	 * 涉案金额
	 */
	private BigDecimal crimeMoney;
	/**
	 * 被举报对象所属省级
	 */
	private String informantProvice;
	/**
	 * 被举报对象所属市级
	 */
	private String informantCity;
	/**
	 * 被举报对象所属区级
	 */
	private String informantArea;
	/**
	 * 被举报对象行业
	 */
	private String informantIndustry;
	/**
	 * 详细案发地址
	 */
	private String detailAddress;
	/**
	 * 举报时间
	 */
	private String reportDate;
	/**
	 * 举报来源
	 */
	private String reportSource;
	/**
	 * 举报内容
	 */
	private String reportContent;
	/**
	 * 附件名称
	 */
	private String attact;
	/**
	 * 附件的存储路径
	 */
	private String attactUrl;
	/**
	 * 举报类型
	 *
	 * */
	private String reporttype;
	/**
	 * 举报标签
	 *
	 * */
	private String reportlable;
	/**
	 * 核查状态
	 *
	 * */
	private String reportState;
	/**
	 * 图片地址
	 *
	 * */
	private String reportImages;
	/**
	 * 微信昵称
	 *
	 *
	 * **/
	private String wxNickName;
	/**
	 * 录入人
	 *
	 * **/
	private String recorder;
	/**
	 * 广东省南沙区账号特有风险等级
	 */
	private String riskLevel;
	/**
	 * 微信举报id
	 */
	private String weixinId;
	/**
	 * 街道
	 */
	private String reportStreet;
	/**
	 *接收机构名称
	 */
	private String departName;
	/**
	 * 平台名称
	 */
	private String platformName;
	/**
	 * APP名称
	 */
	private String appName;
	/**
	 * url
	 */
	private String url;

	public String getWeixinId() {
		return weixinId;
	}

	public void setWeixinId(String weixinId) {
		this.weixinId = weixinId;
	}

	public String getReportStreet() {
		return reportStreet;
	}

	public void setReportStreet(String reportStreet) {
		this.reportStreet = reportStreet;
	}

	public String getDepartName() {
		return departName;
	}

	public void setDepartName(String departName) {
		this.departName = departName;
	}

	public String getPlatformName() {
		return platformName;
	}

	public void setPlatformName(String platformName) {
		this.platformName = platformName;
	}

	public String getAppName() {
		return appName;
	}

	public void setAppName(String appName) {
		this.appName = appName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getRiskLevel() {
		return riskLevel;
	}

	public void setRiskLevel(String riskLevel) {
		this.riskLevel = riskLevel;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTipId() {
		return tipId;
	}

	public void setTipId(String tipId) {
		this.tipId = tipId;
	}
	public String getInformantArea() {
		return informantArea;
	}
	public void setInformantArea(String informantArea) {
		this.informantArea = informantArea;
	}
	public String getReportName() {
		return reportName;
	}
	public void setReportName(String reportName) {
		this.reportName = reportName;
	}
	
	public String getReportIdCard() {
		return reportIdCard;
	}
	public void setReportIdCard(String reportIdCard) {
		this.reportIdCard = reportIdCard;
	}
	
	public String getReportPhone() {
		return reportPhone;
	}
	public void setReportPhone(String reportPhone) {
		this.reportPhone = reportPhone;
	}
	
	public String getReportAdd() {
		return reportAdd;
	}
	public void setReportAdd(String reportAdd) {
		this.reportAdd = reportAdd;
	}
	
	public String getInformantCity() {
		return informantCity;
	}
	public void setInformantCity(String informantCity) {
		this.informantCity = informantCity;
	}
	
	public String getInformantIndustry() {
		return informantIndustry;
	}
	public void setInformantIndustry(String informantIndustry) {
		this.informantIndustry = informantIndustry;
	}
	
	public String getReportDate() {
		return reportDate;
	}
	public void setReportDate(String reportDate) {
		this.reportDate = reportDate;
	}
	
	public String getReportSource() {
		return reportSource;
	}
	public void setReportSource(String reportSource) {
		this.reportSource = reportSource;
	}
	
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}
	
	public String getAttact() {
		return attact;
	}
	public void setAttact(String attact) {
		this.attact = attact;
	}
	
	public String getAttactUrl() {
		return attactUrl;
	}
	public void setAttactUrl(String attactUrl) {
		this.attactUrl = attactUrl;
	}
	
	public String getInformantProvice() {
		return informantProvice;
	}
	public void setInformantProvice(String informantProvice) {
		this.informantProvice = informantProvice;
	}

	public String getReporttype() {
		return reporttype;
	}
	public void setReporttype(String reporttype) {
		this.reporttype = reporttype;
	}

	public String getReportlable() {
		return reportlable;
	}
	public void setReportlable(String reportlable) {
		this.reportlable = reportlable;
	}

	public String getReportState() {
		return reportState;
	}
	public void setReportState(String reportState) {
		this.reportState = reportState;
	}

	public String getReportImages() {
		return reportImages;
	}
	public void setReportImages(String reportImages) {
		this.reportImages = reportImages;
	}

	public String getWxNickName() {
		return wxNickName;
	}
	public void setWxNickName(String wxNickName) {
		this.wxNickName = wxNickName;
	}

	public String getIsRealName() {
		return isRealName;
	}
	public void setIsRealName(String isRealName) {
		this.isRealName = isRealName;
	}

	public String getInformantCompany() {
		return informantCompany;
	}

	public void setInformantCompany(String informantCompany) {
		this.informantCompany = informantCompany;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getDiscoveryTime() {
		return discoveryTime;
	}

	public void setDiscoveryTime(String discoveryTime) {
		this.discoveryTime = discoveryTime;
	}
	public BigDecimal getCrimeMoney() {
		return crimeMoney;
	}

	public void setCrimeMoney(BigDecimal crimeMoney) {
		this.crimeMoney = crimeMoney;
	}

	public String getRecorder() {
		return recorder;
	}

	public void setRecorder(String recorder) {
		this.recorder = recorder;
	}
}
