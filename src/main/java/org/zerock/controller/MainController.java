package org.zerock.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.MainService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/book/*")
public class MainController {
	
	@Inject
	private MainService service;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		
		log.info("list: "+cri);
		model.addAttribute("list", service.getList(cri));
		
		int total = service.getTotal(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
	}		
	
	@GetMapping({"/get"})
	public void get(@RequestParam("bnum") Long bnum, @ModelAttribute("cri") Criteria cri, Model model ) {
		
		log.info("/get");
		model.addAttribute("book", service.get(bnum));
	}
			
	
}
