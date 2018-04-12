package rhodes.moviedatabase;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Component;

@Component

public class MoviesDao {
	EntityManagerFactory emfactory= Persistence.createEntityManagerFactory("RhodesMovieDatabase");
	
	public void insertMovies(Movies moviesToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(moviesToAdd);
		em.getTransaction().commit();
		em.close();
	}
	public List<Movies> getAllMovies(){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select m from User m";
		TypedQuery<Movies>typedQuery = em.createQuery(q, Movies.class);
		List<Movies>all = typedQuery.getResultList();
		return all;
	}
}
