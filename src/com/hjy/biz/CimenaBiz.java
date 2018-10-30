package com.hjy.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hjy.dao.CimenaDao;
import com.hjy.entity.TCimena;
import com.hjy.entity.TDistrict;

@Repository("cimenaBiz")
public class CimenaBiz {
	@Autowired
	private CimenaDao cimenaDao;
	/**
	 * 查询所有区
	 * @return
	 */
	public List<TDistrict> getTDistrict(){
		return cimenaDao.getTDistrict();	
	}
	/**
	 * 查询所有影院
	 * @return
	 */
	public List<TCimena> getTCimena(){
		return cimenaDao.getTCimena();	
	}
}
