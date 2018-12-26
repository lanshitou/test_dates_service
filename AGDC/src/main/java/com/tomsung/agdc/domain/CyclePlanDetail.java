package com.tomsung.agdc.domain;

import java.math.BigDecimal;
import java.util.Date;

public class CyclePlanDetail {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.ID
	 * @mbg.generated
	 */
	private Integer id;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.PLANID
	 * @mbg.generated
	 */
	private Integer planid;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.DEVICENAME
	 * @mbg.generated
	 */
	private String devicename;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.SYSTEMID
	 * @mbg.generated
	 */
	private Long systemid;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.CTRLID
	 * @mbg.generated
	 */
	private Integer ctrlid;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.EQPTYPE
	 * @mbg.generated
	 */
	private Integer eqptype;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.EQPID
	 * @mbg.generated
	 */
	private Integer eqpid;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.STARTTIME
	 * @mbg.generated
	 */
	private Date starttime;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.ENDTIME
	 * @mbg.generated
	 */
	private Date endtime;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.DURATION
	 * @mbg.generated
	 */
	private Integer duration;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.QUANTITY
	 * @mbg.generated
	 */
	private BigDecimal quantity;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CYCLEPLAN_DETAIL.PERIOD
	 * @mbg.generated
	 */
	private Integer period;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.ID
	 * @return  the value of CYCLEPLAN_DETAIL.ID
	 * @mbg.generated
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.ID
	 * @param id  the value for CYCLEPLAN_DETAIL.ID
	 * @mbg.generated
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.PLANID
	 * @return  the value of CYCLEPLAN_DETAIL.PLANID
	 * @mbg.generated
	 */
	public Integer getPlanid() {
		return planid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.PLANID
	 * @param planid  the value for CYCLEPLAN_DETAIL.PLANID
	 * @mbg.generated
	 */
	public void setPlanid(Integer planid) {
		this.planid = planid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.DEVICENAME
	 * @return  the value of CYCLEPLAN_DETAIL.DEVICENAME
	 * @mbg.generated
	 */
	public String getDevicename() {
		return devicename;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.DEVICENAME
	 * @param devicename  the value for CYCLEPLAN_DETAIL.DEVICENAME
	 * @mbg.generated
	 */
	public void setDevicename(String devicename) {
		this.devicename = devicename == null ? null : devicename.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.SYSTEMID
	 * @return  the value of CYCLEPLAN_DETAIL.SYSTEMID
	 * @mbg.generated
	 */
	public Long getSystemid() {
		return systemid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.SYSTEMID
	 * @param systemid  the value for CYCLEPLAN_DETAIL.SYSTEMID
	 * @mbg.generated
	 */
	public void setSystemid(Long systemid) {
		this.systemid = systemid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.CTRLID
	 * @return  the value of CYCLEPLAN_DETAIL.CTRLID
	 * @mbg.generated
	 */
	public Integer getCtrlid() {
		return ctrlid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.CTRLID
	 * @param ctrlid  the value for CYCLEPLAN_DETAIL.CTRLID
	 * @mbg.generated
	 */
	public void setCtrlid(Integer ctrlid) {
		this.ctrlid = ctrlid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.EQPTYPE
	 * @return  the value of CYCLEPLAN_DETAIL.EQPTYPE
	 * @mbg.generated
	 */
	public Integer getEqptype() {
		return eqptype;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.EQPTYPE
	 * @param eqptype  the value for CYCLEPLAN_DETAIL.EQPTYPE
	 * @mbg.generated
	 */
	public void setEqptype(Integer eqptype) {
		this.eqptype = eqptype;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.EQPID
	 * @return  the value of CYCLEPLAN_DETAIL.EQPID
	 * @mbg.generated
	 */
	public Integer getEqpid() {
		return eqpid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.EQPID
	 * @param eqpid  the value for CYCLEPLAN_DETAIL.EQPID
	 * @mbg.generated
	 */
	public void setEqpid(Integer eqpid) {
		this.eqpid = eqpid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.STARTTIME
	 * @return  the value of CYCLEPLAN_DETAIL.STARTTIME
	 * @mbg.generated
	 */
	public Date getStarttime() {
		return starttime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.STARTTIME
	 * @param starttime  the value for CYCLEPLAN_DETAIL.STARTTIME
	 * @mbg.generated
	 */
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.ENDTIME
	 * @return  the value of CYCLEPLAN_DETAIL.ENDTIME
	 * @mbg.generated
	 */
	public Date getEndtime() {
		return endtime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.ENDTIME
	 * @param endtime  the value for CYCLEPLAN_DETAIL.ENDTIME
	 * @mbg.generated
	 */
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.DURATION
	 * @return  the value of CYCLEPLAN_DETAIL.DURATION
	 * @mbg.generated
	 */
	public Integer getDuration() {
		return duration;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.DURATION
	 * @param duration  the value for CYCLEPLAN_DETAIL.DURATION
	 * @mbg.generated
	 */
	public void setDuration(Integer duration) {
		this.duration = duration;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.QUANTITY
	 * @return  the value of CYCLEPLAN_DETAIL.QUANTITY
	 * @mbg.generated
	 */
	public BigDecimal getQuantity() {
		return quantity;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.QUANTITY
	 * @param quantity  the value for CYCLEPLAN_DETAIL.QUANTITY
	 * @mbg.generated
	 */
	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CYCLEPLAN_DETAIL.PERIOD
	 * @return  the value of CYCLEPLAN_DETAIL.PERIOD
	 * @mbg.generated
	 */
	public Integer getPeriod() {
		return period;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CYCLEPLAN_DETAIL.PERIOD
	 * @param period  the value for CYCLEPLAN_DETAIL.PERIOD
	 * @mbg.generated
	 */
	public void setPeriod(Integer period) {
		this.period = period;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table CYCLEPLAN_DETAIL
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
		CyclePlanDetail other = (CyclePlanDetail) that;
		return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
				&& (this.getPlanid() == null ? other.getPlanid() == null : this.getPlanid().equals(other.getPlanid()))
				&& (this.getDevicename() == null ? other.getDevicename() == null
						: this.getDevicename().equals(other.getDevicename()))
				&& (this.getSystemid() == null ? other.getSystemid() == null
						: this.getSystemid().equals(other.getSystemid()))
				&& (this.getCtrlid() == null ? other.getCtrlid() == null : this.getCtrlid().equals(other.getCtrlid()))
				&& (this.getEqptype() == null ? other.getEqptype() == null
						: this.getEqptype().equals(other.getEqptype()))
				&& (this.getEqpid() == null ? other.getEqpid() == null : this.getEqpid().equals(other.getEqpid()))
				&& (this.getStarttime() == null ? other.getStarttime() == null
						: this.getStarttime().equals(other.getStarttime()))
				&& (this.getEndtime() == null ? other.getEndtime() == null
						: this.getEndtime().equals(other.getEndtime()))
				&& (this.getDuration() == null ? other.getDuration() == null
						: this.getDuration().equals(other.getDuration()))
				&& (this.getQuantity() == null ? other.getQuantity() == null
						: this.getQuantity().equals(other.getQuantity()))
				&& (this.getPeriod() == null ? other.getPeriod() == null : this.getPeriod().equals(other.getPeriod()));
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table CYCLEPLAN_DETAIL
	 * @mbg.generated
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
		result = prime * result + ((getPlanid() == null) ? 0 : getPlanid().hashCode());
		result = prime * result + ((getDevicename() == null) ? 0 : getDevicename().hashCode());
		result = prime * result + ((getSystemid() == null) ? 0 : getSystemid().hashCode());
		result = prime * result + ((getCtrlid() == null) ? 0 : getCtrlid().hashCode());
		result = prime * result + ((getEqptype() == null) ? 0 : getEqptype().hashCode());
		result = prime * result + ((getEqpid() == null) ? 0 : getEqpid().hashCode());
		result = prime * result + ((getStarttime() == null) ? 0 : getStarttime().hashCode());
		result = prime * result + ((getEndtime() == null) ? 0 : getEndtime().hashCode());
		result = prime * result + ((getDuration() == null) ? 0 : getDuration().hashCode());
		result = prime * result + ((getQuantity() == null) ? 0 : getQuantity().hashCode());
		result = prime * result + ((getPeriod() == null) ? 0 : getPeriod().hashCode());
		return result;
	}
}