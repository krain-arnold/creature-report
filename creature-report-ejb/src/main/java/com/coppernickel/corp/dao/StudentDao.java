package com.coppernickel.corp.dao;
import java.util.List;
import com.coppernickel.corp.domain.Student;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class StudentDao {
	private static final String PERSISTENCE_UNIT_NAME = "testjpa";
	private static EntityManagerFactory factory;
	
	public String getStudents(){
		factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
		EntityManager em = factory.createEntityManager();
		Query q = em.createQuery("SELECT s FROM Student s");
		Student s = (Student)q.getSingleResult();
		String result = s.toString();
		return result;
	}
}

