package com.OA.mainsite.aop;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

@Aspect
@Component
@Order(-5)
public class UserIncludeAspect {

	@Pointcut("execution(public * com.OA.mainsite.controller.OAController.*("
			+ "javax.servlet.http.HttpServletRequest,org.springframework.ui.Model,..))")
	public void Things(){}
	
	@Before("Things()")
	public void  includeUser(JoinPoint joinpoint){
		  System.out.println("before");
		  HttpServletRequest request =(HttpServletRequest) joinpoint.getArgs()[0];
		  Model model=(Model)joinpoint.getArgs()[1];
		  
		   		  
	}
}
