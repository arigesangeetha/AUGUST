package com.niit.Backend.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Backend.model.Cart;




@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	private SessionFactory sessionFactory;


	public CartDAOImpl(SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Transactional
	public List<Cart> list() {
	List<Cart> listCategory = (List<Cart>)sessionFactory.getCurrentSession()
					.createCriteria(Cart.class)
					.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

			return listCategory;
		}

	public Cart get(int UserId) {
		
		return null;
	}

	@Transactional
	public void saveOrUpdate(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	}

	public void delete(int userId) {
		// TODO Auto-generated method stub
		
	}

}
