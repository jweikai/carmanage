package com.ouyan.car;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ouyan.model.Userinfo;

public class SpringTest {
	@Test
	public void test() {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
		SessionFactory  factory = (SessionFactory) context.getBean("sessionFactory");
		int size = factory.openSession().createQuery("from Userinfo u").list().size();
		
	}
}
