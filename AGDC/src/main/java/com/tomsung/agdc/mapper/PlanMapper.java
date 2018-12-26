package com.tomsung.agdc.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.tomsung.agdc.domain.Plan;
@Mapper
@Component
public interface PlanMapper {
    /**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table PLAN
	 * @mbg.generated
	 */
	int deleteByPrimaryKey(Integer planid);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table PLAN
	 * @mbg.generated
	 */
	int insert(Plan record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table PLAN
	 * @mbg.generated
	 */
	int insertSelective(Plan record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table PLAN
	 * @mbg.generated
	 */
	Plan selectByPrimaryKey(Integer planid);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table PLAN
	 * @mbg.generated
	 */
	int updateByPrimaryKeySelective(Plan record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table PLAN
	 * @mbg.generated
	 */
	int updateByPrimaryKey(Plan record);

	List<Plan> selectPlans(@Param(value="farmlandId")Integer farmlandId);
}