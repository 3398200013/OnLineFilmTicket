package com.hjy.dao.batis;

import java.util.List;

import com.hjy.entity.TCimena;
import com.hjy.entity.TCity;
import com.hjy.entity.TDistrict;

public interface ICimenaMapper {

	public List<TDistrict> getTDistrict();
	public List<TCimena> getTCimena();
}
