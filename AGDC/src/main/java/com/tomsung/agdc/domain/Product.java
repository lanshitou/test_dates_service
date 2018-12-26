package com.tomsung.agdc.domain;

import java.math.BigDecimal;
import java.util.Date;

public class Product {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.PRODUCT_ID
	 * @mbg.generated
	 */
	private Integer productId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.CATEGORY_ID
	 * @mbg.generated
	 */
	private Integer categoryId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.COMPANY_ID
	 * @mbg.generated
	 */
	private Integer companyId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.PRODUCT_SN
	 * @mbg.generated
	 */
	private String productSn;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.NAME
	 * @mbg.generated
	 */
	private String name;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.SUBTITLE
	 * @mbg.generated
	 */
	private String subtitle;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.MAIN_IMAGE
	 * @mbg.generated
	 */
	private String mainImage;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.PRICE
	 * @mbg.generated
	 */
	private BigDecimal price;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.WEIGHT
	 * @mbg.generated
	 */
	private BigDecimal weight;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.CREATE_TIME
	 * @mbg.generated
	 */
	private Date createTime;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column PRODUCT.UPDATE_TIME
	 * @mbg.generated
	 */
	private Date updateTime;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.PRODUCT_ID
	 * @return  the value of PRODUCT.PRODUCT_ID
	 * @mbg.generated
	 */
	public Integer getProductId() {
		return productId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.PRODUCT_ID
	 * @param productId  the value for PRODUCT.PRODUCT_ID
	 * @mbg.generated
	 */
	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.CATEGORY_ID
	 * @return  the value of PRODUCT.CATEGORY_ID
	 * @mbg.generated
	 */
	public Integer getCategoryId() {
		return categoryId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.CATEGORY_ID
	 * @param categoryId  the value for PRODUCT.CATEGORY_ID
	 * @mbg.generated
	 */
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.COMPANY_ID
	 * @return  the value of PRODUCT.COMPANY_ID
	 * @mbg.generated
	 */
	public Integer getCompanyId() {
		return companyId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.COMPANY_ID
	 * @param companyId  the value for PRODUCT.COMPANY_ID
	 * @mbg.generated
	 */
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.PRODUCT_SN
	 * @return  the value of PRODUCT.PRODUCT_SN
	 * @mbg.generated
	 */
	public String getProductSn() {
		return productSn;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.PRODUCT_SN
	 * @param productSn  the value for PRODUCT.PRODUCT_SN
	 * @mbg.generated
	 */
	public void setProductSn(String productSn) {
		this.productSn = productSn == null ? null : productSn.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.NAME
	 * @return  the value of PRODUCT.NAME
	 * @mbg.generated
	 */
	public String getName() {
		return name;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.NAME
	 * @param name  the value for PRODUCT.NAME
	 * @mbg.generated
	 */
	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.SUBTITLE
	 * @return  the value of PRODUCT.SUBTITLE
	 * @mbg.generated
	 */
	public String getSubtitle() {
		return subtitle;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.SUBTITLE
	 * @param subtitle  the value for PRODUCT.SUBTITLE
	 * @mbg.generated
	 */
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle == null ? null : subtitle.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.MAIN_IMAGE
	 * @return  the value of PRODUCT.MAIN_IMAGE
	 * @mbg.generated
	 */
	public String getMainImage() {
		return mainImage;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.MAIN_IMAGE
	 * @param mainImage  the value for PRODUCT.MAIN_IMAGE
	 * @mbg.generated
	 */
	public void setMainImage(String mainImage) {
		this.mainImage = mainImage == null ? null : mainImage.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.PRICE
	 * @return  the value of PRODUCT.PRICE
	 * @mbg.generated
	 */
	public BigDecimal getPrice() {
		return price;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.PRICE
	 * @param price  the value for PRODUCT.PRICE
	 * @mbg.generated
	 */
	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.WEIGHT
	 * @return  the value of PRODUCT.WEIGHT
	 * @mbg.generated
	 */
	public BigDecimal getWeight() {
		return weight;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.WEIGHT
	 * @param weight  the value for PRODUCT.WEIGHT
	 * @mbg.generated
	 */
	public void setWeight(BigDecimal weight) {
		this.weight = weight;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.CREATE_TIME
	 * @return  the value of PRODUCT.CREATE_TIME
	 * @mbg.generated
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.CREATE_TIME
	 * @param createTime  the value for PRODUCT.CREATE_TIME
	 * @mbg.generated
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column PRODUCT.UPDATE_TIME
	 * @return  the value of PRODUCT.UPDATE_TIME
	 * @mbg.generated
	 */
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column PRODUCT.UPDATE_TIME
	 * @param updateTime  the value for PRODUCT.UPDATE_TIME
	 * @mbg.generated
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table PRODUCT
	 * @mbg.generated
	 */
	@Override
	public boolean equals(Object that) {
		if (this == that) {
			return true;
		}
		if (that == null) {
			return false;
		}
		if (getClass() != that.getClass()) {
			return false;
		}
		Product other = (Product) that;
		return (this.getProductId() == null ? other.getProductId() == null
				: this.getProductId().equals(other.getProductId()))
				&& (this.getCategoryId() == null ? other.getCategoryId() == null
						: this.getCategoryId().equals(other.getCategoryId()))
				&& (this.getCompanyId() == null ? other.getCompanyId() == null
						: this.getCompanyId().equals(other.getCompanyId()))
				&& (this.getProductSn() == null ? other.getProductSn() == null
						: this.getProductSn().equals(other.getProductSn()))
				&& (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()))
				&& (this.getSubtitle() == null ? other.getSubtitle() == null
						: this.getSubtitle().equals(other.getSubtitle()))
				&& (this.getMainImage() == null ? other.getMainImage() == null
						: this.getMainImage().equals(other.getMainImage()))
				&& (this.getPrice() == null ? other.getPrice() == null : this.getPrice().equals(other.getPrice()))
				&& (this.getWeight() == null ? other.getWeight() == null : this.getWeight().equals(other.getWeight()))
				&& (this.getCreateTime() == null ? other.getCreateTime() == null
						: this.getCreateTime().equals(other.getCreateTime()))
				&& (this.getUpdateTime() == null ? other.getUpdateTime() == null
						: this.getUpdateTime().equals(other.getUpdateTime()));
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table PRODUCT
	 * @mbg.generated
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((getProductId() == null) ? 0 : getProductId().hashCode());
		result = prime * result + ((getCategoryId() == null) ? 0 : getCategoryId().hashCode());
		result = prime * result + ((getCompanyId() == null) ? 0 : getCompanyId().hashCode());
		result = prime * result + ((getProductSn() == null) ? 0 : getProductSn().hashCode());
		result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
		result = prime * result + ((getSubtitle() == null) ? 0 : getSubtitle().hashCode());
		result = prime * result + ((getMainImage() == null) ? 0 : getMainImage().hashCode());
		result = prime * result + ((getPrice() == null) ? 0 : getPrice().hashCode());
		result = prime * result + ((getWeight() == null) ? 0 : getWeight().hashCode());
		result = prime * result + ((getCreateTime() == null) ? 0 : getCreateTime().hashCode());
		result = prime * result + ((getUpdateTime() == null) ? 0 : getUpdateTime().hashCode());
		return result;
	}


}