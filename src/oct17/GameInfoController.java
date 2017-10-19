package oct17;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GameInfoController {

	@RequestMapping("/game/info")
	public String gameInfo() {
		return "oct17View/info";
	}
		
	@RequestMapping("/game/list")
	public String gameList() {
		return "oct17View/list";
	}
}