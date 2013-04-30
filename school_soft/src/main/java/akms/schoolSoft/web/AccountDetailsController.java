package akms.schoolSoft.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountDetailsController {

	@RequestMapping("/accounts")
	public String accountMenu(){
		return "account_menu";
	}
}
