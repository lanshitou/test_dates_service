package com.tomsung.agdc.domain;

public class Device extends DeviceKey {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DEVICE.FARMLANDID
	 * @mbg.generated
	 */
	private Integer farmlandid;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DEVICE.DEVICEDN
	 * @mbg.generated
	 */
	private String devicedn;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column DEVICE.NAME
	 * @mbg.generated
	 */
	private String name;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DEVICE.FARMLANDID
	 * @return  the value of DEVICE.FARMLANDID
	 * @mbg.generated
	 */
	public Integer getFarmlandid() {
		return farmlandid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DEVICE.FARMLANDID
	 * @param farmlandid  the value for DEVICE.FARMLANDID
	 * @mbg.generated
	 */
	public void setFarmlandid(Integer farmlandid) {
		this.farmlandid = farmlandid;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DEVICE.DEVICEDN
	 * @return  the value of DEVICE.DEVICEDN
	 * @mbg.generated
	 */
	public String getDevicedn() {
		return devicedn;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DEVICE.DEVICEDN
	 * @param devicedn  the value for DEVICE.DEVICEDN
	 * @mbg.generated
	 */
	public void setDevicedn(String devicedn) {
		this.devicedn = devicedn == null ? null : devicedn.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column DEVICE.NAME
	 * @return  the value of DEVICE.NAME
	 * @mbg.generated
	 */
	public String getName() {
		return name;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column DEVICE.NAME
	 * @param name  the value for DEVICE.NAME
	 * @mbg.generated
	 */
	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table DEVICE
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
		Device other = (Device) that;
		return (this.getSystemid() == null ? other.getSystemid() == null
				: this.getSystemid().equals(other.getSystemid()))
				&& (this.getCtrlid() == null ? other.getCtrlid() == null : this.getCtrlid().equals(other.getCtrlid()))
				&& (this.getDeviceid() == null ? other.getDeviceid() == null
						: this.getDeviceid().equals(other.getDeviceid()))
				&& (this.getDevicetype() == null ? other.getDevicetype() == null
						: this.getDevicetype().equals(other.getDevicetype()))
				&& (this.getFarmlandid() == null ? other.getFarmlandid() == null
						: this.getFarmlandid().equals(other.getFarmlandid()))
				&& (this.getDevicedn() == null ? other.getDevicedn() == null
						: this.getDevicedn().equals(other.getDevicedn()))
				&& (this.getName() == null ? other.getName() == null : this.getName().equals(other.getName()));
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table DEVICE
	 * @mbg.generated
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((getSystemid() == null) ? 0 : getSystemid().hashCode());
		result = prime * result + ((getCtrlid() == null) ? 0 : getCtrlid().hashCode());
		result = prime * result + ((getDeviceid() == null) ? 0 : getDeviceid().hashCode());
		result = prime * result + ((getDevicetype() == null) ? 0 : getDevicetype().hashCode());
		result = prime * result + ((getFarmlandid() == null) ? 0 : getFarmlandid().hashCode());
		result = prime * result + ((getDevicedn() == null) ? 0 : getDevicedn().hashCode());
		result = prime * result + ((getName() == null) ? 0 : getName().hashCode());
		return result;
	}
}