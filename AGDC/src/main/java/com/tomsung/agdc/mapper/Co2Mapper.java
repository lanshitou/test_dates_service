package com.tomsung.agdc.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.tomsung.agdc.domain.Co2;
@Mapper
@Component
public interface Co2Mapper {
    /**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table CO2
	 * @mbg.generated
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table CO2
	 * @mbg.generated
	 */
	int insert(Co2 record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table CO2
	 * @mbg.generated
	 */
	int insertSelective(Co2 record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table CO2
	 * @mbg.generated
	 */
	Co2 selectByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table CO2
	 * @mbg.generated
	 */
	int updateByPrimaryKeySelective(Co2 record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table CO2
	 * @mbg.generated
	 */
	int updateByPrimaryKey(Co2 record);

	List<Co2> selectCo2(
			@Param(value = "farmlandid")Integer farmlandId,
			@Param(value = "beginTime")Date beginTime, 
			@Param(value = "endTime")Date endTime);
}