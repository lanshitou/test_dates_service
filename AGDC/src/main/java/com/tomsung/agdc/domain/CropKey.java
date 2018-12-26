package com.tomsung.agdc.domain;

public class CropKey {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CROP.CROP_ID
	 * @mbg.generated
	 */
	private Integer cropId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column CROP.CROP_TYPE
	 * @mbg.generated
	 */
	private Integer cropType;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CROP.CROP_ID
	 * @return  the value of CROP.CROP_ID
	 * @mbg.generated
	 */
	public Integer getCropId() {
		return cropId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CROP.CROP_ID
	 * @param cropId  the value for CROP.CROP_ID
	 * @mbg.generated
	 */
	public void setCropId(Integer cropId) {
		this.cropId = cropId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column CROP.CROP_TYPE
	 * @return  the value of CROP.CROP_TYPE
	 * @mbg.generated
	 */
	public Integer getCropType() {
		return cropType;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column CROP.CROP_TYPE
	 * @param cropType  the value for CROP.CROP_TYPE
	 * @mbg.generated
	 */
	public void setCropType(Integer cropType) {
		this.cropType = cropType;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table CROP
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
		CropKey other = (CropKey) that;
		return (this.getCropId() == null ? other.getCropId() == null : this.getCropId().equals(other.getCropId()))
				&& (this.getCropType() == null ? other.getCropType() == null
						: this.getCropType().equals(other.getCropType()));
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table CROP
	 * @mbg.generated
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((getCropId() == null) ? 0 : getCropId().hashCode());
		result = prime * result + ((getCropType() == null) ? 0 : getCropType().hashCode());
		return result;
	}
}