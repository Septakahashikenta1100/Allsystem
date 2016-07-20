package e.e.Address;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * Handles requests for the application home page.
 */
@Controller
public class Adlist {

	//一覧だすところ

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@RequestMapping(value = "/addlis", method = RequestMethod.GET)
	public String home(Model model) {
		Addlisname fm = new Addlisname();


		List<Map<String, Object>>  list = jdbcTemplate.queryForList("select * from tbAddress");
		model.addAttribute("list",list);
		model.addAttribute("Addlisname",fm);

		return "addresslist";
	}

	@RequestMapping(value = "/addlis", method = RequestMethod.POST)
	public String formSample(@ModelAttribute Addlisname fm, Model model) {

		String nana = fm.getRadio();
		System.out.print(nana);
		model.addAttribute("wwww",nana);
		List<Map<String, Object>>  listn = jdbcTemplate.queryForList("select * from tbAddress where id = '"+ nana +"'");
		model.addAttribute("oooo",listn);
		return "addupa";

	}

	//更新だすところ

	@RequestMapping(value = "/addren", method = RequestMethod.GET)
	public String nagi(Model model) {
		Addup fm = new Addup();
		model.addAttribute("Addup",fm);

		return "addupa";

	}

	@RequestMapping(value = "/addren", method = RequestMethod.POST)
	public String naginagi(@ModelAttribute Addup fm, Model model) {

		String rere = fm.getSagawa();
		String namaa = fm.getNaaa();
		String zyuuu = fm.getAddd();
		String dennn = fm.getTeee();

	    if (namaa == "" && zyuuu == "" && dennn == "" ) {

				return "adrenfai";

		}  else if (namaa != "" && zyuuu != "" && dennn == "" ) {

			 jdbcTemplate.execute(
				"update tbAddress set name='"+ namaa +"', address='"+ zyuuu +"' where id = "+ rere +"");

			return "adrensuc";

		}  else if (namaa != "" && zyuuu == "" && dennn != "" ) {

			 jdbcTemplate.execute(
				"update tbAddress set name='"+ namaa +"', tel='"+ dennn +"' where id = "+ rere +"");

			return "adrensuc";

		}  else if (namaa == "" && zyuuu != "" && dennn != "" ) {

			 jdbcTemplate.execute(
				"update tbAddress set address='"+ zyuuu +"', tel='"+ dennn +"' where id = "+ rere +"");

			return "adrensuc";

		}  else if (namaa != "" && zyuuu == "" && dennn == "" ) {

			 jdbcTemplate.execute(
				"update tbAddress set name='"+ namaa +"' where id = "+ rere +"");

			return "adrensuc";

		}  else if (namaa == "" && zyuuu != "" && dennn == "" ) {

			 jdbcTemplate.execute(
				"update tbAddress set address='"+ zyuuu +"' where id = "+ rere +"");

			return "adrensuc";

		}  else if (namaa == "" && zyuuu == "" && dennn != "" ) {

			 jdbcTemplate.execute(
				"update tbAddress set tel='"+ dennn +"' where id = "+ rere +"");

			return "adrensuc";

		}  else {

			 jdbcTemplate.execute(
				"update tbAddress set name='"+ namaa +"', address='"+ zyuuu +"', tel='"+ dennn +"' where id = "+ rere +"");

			return "adrensuc";
		}
	}

	//削除だすところ

	@RequestMapping(value = "/addsaku", method = RequestMethod.GET)
	public String fara(Model model) {
		adddeledele fm = new adddeledele();
		model.addAttribute("adddeledele",fm);

		String sasasa = fm.getNakai();
		model.addAttribute("sawara",sasasa);
		List<Map<String, Object>>  listnnn = jdbcTemplate.queryForList("select * from tbAddress where id = '"+ sasasa +"'");
		model.addAttribute("weeee",listnnn);

		return "adddele";

	}

	@RequestMapping(value = "/addsaku", method = RequestMethod.POST)
	public String farafara(@ModelAttribute adddeledele fm, Model model) {

		String sasasa = fm.getNakai();
		model.addAttribute("sawara",sasasa);
		List<Map<String, Object>>  listnnn = jdbcTemplate.queryForList("select * from tbAddress where id = '"+ sasasa +"'");
		model.addAttribute("weeee",listnnn);

		return "adddele";
	}

	//削除するところ

	@RequestMapping(value = "/addsakusaku", method = RequestMethod.GET)
	public String sera(Model model) {
		Addddddddddd fm = new Addddddddddd();
		model.addAttribute("Addddddddddd", fm);

		return "adddelesuc";
	}
	@RequestMapping(value = "/addsakusaku", method = RequestMethod.POST)
	public String serasera(@ModelAttribute Addddddddddd fm, Model model) {

		String kakaka = fm.getWayai();
		 jdbcTemplate.execute(
			"delete from tbAddress where id = "+ kakaka +"");

		return "adddelesuc";
	}
}
