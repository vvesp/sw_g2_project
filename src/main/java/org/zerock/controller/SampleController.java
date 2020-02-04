package org.zerock.controller;


import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.SampleVO;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/sample")
@Log4j
public class SampleController {

		@GetMapping(value = "/getText", produces = "text/palin; charset=UTF-8")
		public String getText() {
			
			log.info("MYME TYPE: " + MediaType.TEXT_PLAIN_VALUE);
			
			return "안녕하세요.";
		}
		
		@GetMapping(value = "/getSample", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,
				MediaType.APPLICATION_XML_VALUE})
		public SampleVO getSample() {
			
			return new SampleVO(112, "스타", "로드");
		}
}
