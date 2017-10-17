package oct17;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class GameSearchController {

	@Autowired
	private SearchService searchService;

	@ModelAttribute("searchTypeList")
	public List<SearchType> referenceSearchTypeList() {
		List<SearchType> options = new ArrayList<SearchType>();
		options.add(new SearchType(1, "전체"));
		options.add(new SearchType(2, "아이템"));
		options.add(new SearchType(3, "캐릭터"));
		return options;
	}

	@ModelAttribute("popularQueryList")
	public String[] getPopularQueryList() {
		return new String[] {"배그", "주녀크", "뚝배기"};
	}

	@RequestMapping("/search/main.do")
	public String main() {
		return "oct17View/main";
	}

	@RequestMapping("/search/game.do")
	public ModelAndView search(@ModelAttribute("command") SearchCommand command) {

		ModelAndView mav = new ModelAndView("oct17View/game");
		System.out.println("검색어 = " + command.getQuery().toUpperCase());
		SearchResult result = searchService.search(command);
		mav.addObject("searchResult", result);
		return mav;

	}

	@ExceptionHandler(NullPointerException.class)
	public String handleNullPointerException(NullPointerException ex) {
		return "oct17View/nullException";
	}

	public void setSearchService(SearchService searchService) {
		this.searchService = searchService;
	}
}