package com.nagarro.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.dao.TshirtDao;
import com.nagarro.dao.UserDao;
import com.nagarro.entity.Tshirt;
import com.nagarro.entity.Users;
import com.nagarro.utility.FileChangeThread;
import com.nagarro.utility.ReadFromCsv;

@Controller
public class HomeController {
	@Autowired
	TshirtDao tdao;
	
	@Autowired
	UserDao udao;
	
	@Autowired
	FileChangeThread fct;
	
	@RequestMapping("/home")
	public String home() {
		return "login";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/loginCheck")
	public ModelAndView loginCheck(HttpServletRequest req,HttpServletResponse res) {
		HttpSession session=req.getSession();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		if((this.udao.getUserDetailsByEmailAndPassword(req.getParameter("username"), req.getParameter("password")))!=null) {
			
			System.out.println("Successfully logged in");
			ArrayList<Tshirt> al=ReadFromCsv.parseCSVFiles();
			System.out.println(al.size());
			for(Tshirt tee: al) {
				this.tdao.save(tee);
			}
			session.setAttribute("currentUser", req.getParameter("username"));
			mv.setViewName("searchPage");
			mv.addObject("currentUser", req.getParameter("username"));
//			fct.start();
			return mv;
		}
		else return mv;
	}
	
//	@RequestMapping("/addUser")
//	public ModelAndView addUser(HttpServletRequest req,HttpServletResponse res) {
//		Users user=new Users("dummy","dummy");
//		this.udao.save(user);
//		ModelAndView mv=new ModelAndView();
//		mv.setViewName("login");
//		
//		return mv;
//		
//		
//	}
//	
	@RequestMapping("/searchTshirts")
	public ModelAndView searchTshirts() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("searchTshirt");
		return mv;
	}
	
	@RequestMapping("/filterTshirts")
	public ModelAndView getTshirts(HttpServletRequest req,HttpServletResponse res) {
		ArrayList<Tshirt> result=this.tdao.getRequiredTshirts(req.getParameter("colour"),req.getParameter("size"),req.getParameter("gender"), req.getParameter("pref"));
		ModelAndView mv=new ModelAndView();
		mv.addObject("reqTshirts", result);
		mv.setViewName("searchPage");
		return mv;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		session.removeAttribute("username");
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}

}
