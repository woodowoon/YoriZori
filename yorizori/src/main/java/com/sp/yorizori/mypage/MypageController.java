package com.sp.yorizori.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sp.yorizori.common.MyUtil;
import com.sp.yorizori.member.SessionInfo;

@Controller("mypage.mypageController")
@RequestMapping("/mypage/*")
public class MypageController {
	
	@Autowired
	private MypageService service;
	@Autowired
	private MyUtil myUtil;
	
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public String main(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam String userId,
			HttpSession session, HttpServletRequest req, Model model) throws Exception {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 9;
		int total_page = 0;
		int dataCountMyrecipe = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		dataCountMyrecipe = service.dataCountMyrecipe(userId);
		if (dataCountMyrecipe != 0) {
			total_page = myUtil.pageCount(rows, dataCountMyrecipe);
		}
		
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		map.put("userId", userId);
		map.put("sessionId", info.getUserId());
		
		Mypage dto = service.readMypage(map);
		List<Mypage> list = service.listMyrecipe(map);
		List<Mypage> listFollower = service.listFollower(userId);
		List<Mypage> listFollowing = service.listFollowing(userId);
		
		String listUrl = cp + "/mypage/main";
		String articleUrl = cp + "/recipe/article?page=1";
		String paging = myUtil.paging(current_page, total_page, listUrl);
				
		model.addAttribute("dto", dto);
		model.addAttribute("list", list);
		model.addAttribute("listFollower", listFollower);
		model.addAttribute("listFollowing", listFollowing);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCountMyrecipe);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		return ".mypage.main";
	}
	
	@RequestMapping(value = "follow", method = RequestMethod.POST)
	@ResponseBody
	public String follow(@RequestParam String userId, 
			@RequestParam String sessionId) throws Exception {
		
		String state = "true";
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("sessionId", sessionId);
		
		try {
			service.insertFollow(map);
		} catch (Exception e) {
			state = "false";
		}
		
		return state;
	}
	
	@RequestMapping(value = "unfollow", method = RequestMethod.POST)
	@ResponseBody
	public String unfollow(@RequestParam String userId, 
			@RequestParam String sessionId) throws Exception {
		
		String state = "true";
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("sessionId", sessionId);
		
		try {
			service.deleteFollow(map);
		} catch (Exception e) {
			state = "false";
		}
		
		return state;
	}
	
	@RequestMapping(value = "like", method = RequestMethod.GET)
	public String like(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			HttpSession session, HttpServletRequest req, Model model) throws Exception {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 9;
		int total_page = 0;
		int dataCountLike = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		dataCountLike = service.dataCountLike(info.getUserId());
		if (dataCountLike != 0) {
			total_page = myUtil.pageCount(rows, dataCountLike);
		}
		
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		map.put("userId", info.getUserId());
		map.put("sessionId", info.getUserId());
		
		Mypage dto = service.readMypage(map);
		List<Mypage> list = service.listLike(map);
		List<Mypage> listFollower = service.listFollower(info.getUserId());
		List<Mypage> listFollowing = service.listFollowing(info.getUserId());
		
		String listUrl = cp + "/mypage/main";
		String articleUrl = cp + "/recipe/article?page=1";
		String paging = myUtil.paging(current_page, total_page, listUrl);
				
		model.addAttribute("dto", dto);
		model.addAttribute("list", list);
		model.addAttribute("listFollower", listFollower);
		model.addAttribute("listFollowing", listFollowing);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCountLike);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		return ".mypage.like";
	}
	
	@RequestMapping(value = "wish", method = RequestMethod.GET)
	public String wish(@RequestParam(value = "page", defaultValue = "1") int current_page,
			HttpSession session, HttpServletRequest req, Model model) throws Exception {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 9;
		int total_page = 0;
		int dataCountWish = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		dataCountWish = service.dataCountWish(info.getUserId());
		if (dataCountWish != 0) {
			total_page = myUtil.pageCount(rows, dataCountWish);
		}
		
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		map.put("userId", info.getUserId());
		map.put("sessionId", info.getUserId());
		
		Mypage dto = service.readMypage(map);
		List<Mypage> list = service.listWish(map);
		List<Mypage> listFollower = service.listFollower(info.getUserId());
		List<Mypage> listFollowing = service.listFollowing(info.getUserId());
		
		String listUrl = cp + "/mypage/wish";
		String articleUrl = cp + "/class/article?category=0&page=1";
		String paging = myUtil.paging(current_page, total_page, listUrl);
				
		model.addAttribute("dto", dto);
		model.addAttribute("list", list);
		model.addAttribute("listFollower", listFollower);
		model.addAttribute("listFollowing", listFollowing);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCountWish);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		return ".mypage.wish";
	}
	
	@RequestMapping(value = "favorite", method = RequestMethod.GET)
	public String favorite(@RequestParam(value = "page", defaultValue = "1") int current_page,
			HttpSession session, HttpServletRequest req, Model model) throws Exception {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 9;
		int total_page = 0;
		int dataCountFavorite = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		dataCountFavorite = service.dataCountFavorite(info.getUserId());
		if (dataCountFavorite != 0) {
			total_page = myUtil.pageCount(rows, dataCountFavorite);
		}
		
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		map.put("userId", info.getUserId());
		map.put("sessionId", info.getUserId());
		
		Mypage dto = service.readMypage(map);
		List<Mypage> list = service.listFavorite(map);
		List<Mypage> listFollower = service.listFollower(info.getUserId());
		List<Mypage> listFollowing = service.listFollowing(info.getUserId());
		
		String listUrl = cp + "/mypage/favorite";
		String articleUrl = cp + "/festival/article?menu=ing&page=1";
		String paging = myUtil.paging(current_page, total_page, listUrl);
				
		model.addAttribute("dto", dto);
		model.addAttribute("list", list);
		model.addAttribute("listFollower", listFollower);
		model.addAttribute("listFollowing", listFollowing);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCountFavorite);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		return ".mypage.favorite";
	}
	
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public String order() throws Exception {
		
		return ".mypage.order";
	}
	
	@RequestMapping(value = "refund", method = RequestMethod.GET)
	public String refund() throws Exception {
		
		return ".mypage.refund";
	}
	
	@RequestMapping(value = "sell", method = RequestMethod.GET)
	public String sell() throws Exception {
		
		return ".mypage.sell";
	}
	
	@RequestMapping(value = "contest", method = RequestMethod.GET)
	public String contest(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			HttpSession session, HttpServletRequest req, Model model) throws Exception {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 10;
		int total_page = 0;
		int dataCountContest = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		dataCountContest = service.dataCountContest(info.getUserId());
		if (dataCountContest != 0) {
			total_page = myUtil.pageCount(rows, dataCountContest);
		}
		
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		map.put("userId", info.getUserId());
		
		List<MyEvent> list = service.listContest(map);
		
		String listUrl = cp + "/mypage/contest";
		// String articleUrl = cp + "/contest/article?page=1";
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		// model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCountContest);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		return ".mypage.contest";
	}
	
	@RequestMapping(value = "coupon", method = RequestMethod.GET)
	public String coupon(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			@RequestParam(defaultValue = "usable") String tab,
			HttpSession session, HttpServletRequest req, Model model) throws Exception {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 6;
		int total_page = 0;
		int dataCount = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		if (tab == "usable") {
			dataCount = service.dataCountUsable(info.getUserId());
			if (dataCount != 0) {
				total_page = myUtil.pageCount(rows, dataCount);
			}
		} else {
			dataCount = service.dataCountUseless(info.getUserId());
			if (dataCount != 0) {
				total_page = myUtil.pageCount(rows, dataCount);
			}
		}
		
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		map.put("userId", info.getUserId());
		
		List<MyEvent> list = null;
		
		if (tab == "usable") {
			list = service.listUsable(map);
		} else {
			list = service.listUseless(map);
		}
		
		String listUrl = cp + "/mypage/coupon";
		// String articleUrl = cp + "/coupon/article?page=1";
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		// model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		model.addAttribute("tab", tab);
		
		return ".mypage.coupon";
	}
	
	@RequestMapping(value = "qna", method = RequestMethod.GET)
	public String qna(
			@RequestParam(value = "page", defaultValue = "1") int current_page,
			HttpSession session, HttpServletRequest req, Model model) throws Exception {
		
		SessionInfo info = (SessionInfo)session.getAttribute("member");
		String cp = req.getContextPath();
		
		int rows = 10;
		int total_page = 0;
		int dataCount = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		dataCount = service.dataCountQna(info.getUserId());
		if (dataCount != 0) {
			total_page = myUtil.pageCount(rows, dataCount);
		}
		
		if (total_page < current_page) {
			current_page = total_page;
		}
		
		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);
		map.put("userId", info.getUserId());
		
		List<MyQna> list = service.listQna(map);
		
		for (MyQna dto : list) {
			dto.setState(service.answerState(dto.getNum()));
		}
		
		String listUrl = cp + "/mypage/qna";
		String articleUrl = cp + "/qna/article?page=1";
		String paging = myUtil.paging(current_page, total_page, listUrl);
		
		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		model.addAttribute("paging", paging);
		
		return ".mypage.qna";
	}
}
