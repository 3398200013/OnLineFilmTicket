package com.hjy.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hjy.dao.batis.ICimenaMapper;
import com.hjy.entity.TCimena;
import com.hjy.entity.TDistrict;

@Repository("cimenaDao")
public class CimenaDao {
	@Autowired
	private ICimenaMapper cimenaMapper;
	/**
	 * 查询所有区
	 * @return
	 */
	public List<TDistrict> getTDistrict(){
		return cimenaMapper.getTDistrict();	
	}
	/**
	 * 查询所有影院
	 * @return
	 */
	public List<TCimena> getTCimena(){
		return cimenaMapper.getTCimena();	
	}
}
