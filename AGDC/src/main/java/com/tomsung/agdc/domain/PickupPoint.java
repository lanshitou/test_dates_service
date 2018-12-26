package com.tomsung.agdc.domain;

import java.util.Date;

public class PickupPoint {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column PICKUP_POINT.ID
     *
     * @mbg.generated
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column PICKUP_POINT.USERID
     *
     * @mbg.generated
     */
    private String  name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column PICKUP_POINT.PROVINCE_ID
     *
     * @mbg.generated
     */
    private Integer provinceName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column PICKUP_POINT.CITY_ID
     *
     * @mbg.generated
     */
    private Integer cityName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column PICKUP_POINT.DISTRICT_ID
     *
     * @mbg.generated
     */
    private Integer districtName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column PICKUP_POINT.ADDRESS
     *
     * @mbg.generated
     */
    private String address;

    private Date createTime;

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column PICKUP_POINT.ID
     *
     * @return the value of PICKUP_POINT.ID
     *
     * @mbg.generated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column PICKUP_POINT.ID
     *
     * @param id the value for PICKUP_POINT.ID
     *
     * @mbg.generated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column PICKUP_POINT.USERID
     *
     * @return the value of PICKUP_POINT.USERID
     *
     * @mbg.generated
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column PICKUP_POINT.USERID
     *
     * @param userid the value for PICKUP_POINT.USERID
     *
     * @mbg.generated
     */
    public void setName(String userid) {
        this.name = name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column PICKUP_POINT.PROVINCE_ID
     *
     * @return the value of PICKUP_POINT.PROVINCE_ID
     *
     * @mbg.generated
     */
    public Integer getProvinceName() {
        return provinceName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column PICKUP_POINT.PROVINCE_ID
     *
     * @param provinceName the value for PICKUP_POINT.PROVINCE_ID
     *
     * @mbg.generated
     */
    public void setProvinceName(Integer provinceName) {
        this.provinceName = provinceName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column PICKUP_POINT.CITY_ID
     *
     * @return the value of PICKUP_POINT.CITY_ID
     *
     * @mbg.generated
     */
    public Integer getCityName() {
        return cityName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column PICKUP_POINT.CITY_ID
     *
     * @param cityName the value for PICKUP_POINT.CITY_ID
     *
     * @mbg.generated
     */
    public void setCityName(Integer cityName) {
        this.cityName = cityName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column PICKUP_POINT.DISTRICT_ID
     *
     * @return the value of PICKUP_POINT.DISTRICT_ID
     *
     * @mbg.generated
     */
    public Integer getDistrictName() {
        return districtName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column PICKUP_POINT.DISTRICT_ID
     *
     * @param districtName the value for PICKUP_POINT.DISTRICT_ID
     *
     * @mbg.generated
     */
    public void setDistrictName(Integer districtName) {
        this.districtName = districtName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column PICKUP_POINT.ADDRESS
     *
     * @return the value of PICKUP_POINT.ADDRESS
     *
     * @mbg.generated
     */
    public String getAddress() {
        return address;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column PICKUP_POINT.ADDRESS
     *
     * @param address the value for PICKUP_POINT.ADDRESS
     *
     * @mbg.generated
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table PICKUP_POINT
     *
     * @mbg.generated
     */
    
	private User user;
	private Province province;
	private City city;
	private District district;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Province getProvince() {
		return province;
	}

	public void setProvince(Province province) {
		this.province = province;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public District getDistrict() {
		return district;
	}

	public void setDistrict(District district) {
		this.district = district;
	}
	
}