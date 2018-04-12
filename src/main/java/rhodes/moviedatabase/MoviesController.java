package rhodes.moviedatabase;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MoviesController {
	@Autowired
	MoviesDao dao;
	
	@RequestMapping(value = "/form")
	public ModelAndView movies() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("moviesForm");
		modelAndView.addObject("movies", new Movies());
		

		return modelAndView;
	}

	@RequestMapping(value = "/result")
	public ModelAndView processMovies(Movies movies) {
		System.out.println("In ProcessMovies");
		ModelAndView modelAndView = new ModelAndView();
		dao.insertMovies(movies);
		System.out.println("Value in getName" + movies.getTitle());
		modelAndView.setViewName("moviesResult");
		modelAndView.addObject("m", movies);
		return modelAndView;
	}

	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Movies> allMovies = dao.getAllMovies();
		modelAndView.setViewName("viewAllMovies");
		modelAndView.addObject("all", allMovies);
		return modelAndView;

	}

	@Bean
	public MoviesDao dao() {
		MoviesDao bean = new MoviesDao();
		return bean;
	}
}


