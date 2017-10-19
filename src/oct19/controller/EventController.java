package oct19.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {
	
	@RequestMapping("/event/list.do")
	public String list() {
		return "oct19/event/list";
	}
	
	@RequestMapping("/event/eventExpired.do")
	public String expired() {
		return "oct19/event/eventExpired";
	}

}
