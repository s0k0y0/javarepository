package com.stone.simple.member.presentation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.stone.simple.member.회원관리자;
import com.stone.simple.member.common.Member;

@Controller
public class 회원컨트롤러 {

	@Autowired
	회원관리자 회원관리자;

	@GetMapping("/id") // get방식으로만 들어와야지 메소드 실행 localhost:8080/id로 url전송되게끔
	public String id중복검사준비하다() {// id라는 매핑을 받으면 아이디중복검사창을 반환해줌

		return "아이디중복검사창";
	}

	@PostMapping("/id")
	ModelAndView id중복검사하다(String id) {

		System.out.println("1" + id);
		boolean 아이디사용가능여부 = 회원관리자.아이디사용가능여부를판단하다(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("아이디중복검사창");
		mv.addObject("id", id);
		mv.addObject("usable", 아이디사용가능여부);

		return mv;
	}

	@PostMapping("/member")
	public ModelAndView 회원등록하다(Member 새회원) {

		회원관리자.저장하다(새회원);

		ModelAndView mv = new ModelAndView();
		mv.addObject("name", 새회원.getName());
		mv.setViewName("회원등록알림창");
		return mv;
	}

}
