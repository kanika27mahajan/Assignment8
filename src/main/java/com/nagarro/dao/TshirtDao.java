package com.nagarro.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.nagarro.entity.Tshirt;
import com.nagarro.utility.Sorter;

@Component
public class TshirtDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	
	@Transactional
	public void save(Tshirt t) {
//		int i= (Integer)this.hibernateTemplate.save(t);
		this.hibernateTemplate.saveOrUpdate(t);
	}
	
	public ArrayList<Tshirt> getRequiredTshirts(String color,String size, String gender, String pref){
		DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(Tshirt.class);
		detachedCriteria.add(Restrictions.eq("colour", color));
		detachedCriteria.add(Restrictions.eq("gender", gender));
		detachedCriteria.add(Restrictions.eq("size", size));
		List<Tshirt> reqTshirts = (List<Tshirt>) hibernateTemplate.findByCriteria(detachedCriteria);
		System.out.println(reqTshirts.size());
		Collections.sort(reqTshirts,new Sorter(pref));
		return (ArrayList<Tshirt>) reqTshirts;
	}
}
