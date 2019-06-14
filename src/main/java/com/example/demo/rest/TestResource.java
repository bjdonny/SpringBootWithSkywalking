/**
 * TestResource.java 2019年6月14日
 *
 * Copyright (c) 2018, DEEPEXI Inc. All rights reserved.
 * DEEPEXI PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.example.demo.rest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author tanjie
 *
 */
@RestController
@RequestMapping("api/v1")
public class TestResource {
	private static final Logger log = LoggerFactory.getLogger(TestResource.class);

	@RequestMapping("hello")
	public String hello() {
		log.info("Hello ,world");
		return "hello,world";
	}
}
