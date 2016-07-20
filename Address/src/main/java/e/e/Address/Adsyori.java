package e.e.Address;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Adsyori {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@RequestMapping(value = "/address", method = RequestMethod.GET)
	public String firstSamplePage(Model model) {
		Address fm = new Address();

		model.addAttribute("Address", fm);
		model.addAttribute("テキトー", "猫姫様");

		return "Adview";
	}

	@Transactional
	@RequestMapping(value = "/address", method = RequestMethod.POST)
	public String formSample(@ModelAttribute Address fm, Model model) {

		String namae = fm.getName();
		String zyusyo = fm.getAddress();
		String denwa = fm.getTel();

	    if (namae == "" || zyusyo == "" || denwa == "" ) {

			return "addresssucfai";

		} else {

			 jdbcTemplate.execute(
				"insert into tbAddress(name, address, tel) values('"+ namae +"', '"+ zyusyo +"', '"+ denwa +"')"
				);

		return "addresssucsuc";
		}
	}
}