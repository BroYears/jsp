package com.test.java;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		Random rnd = new Random();
		String[] stat = {"당첨!!", "꽝", "다시 한 번 기회를~", "꽝", "다시 한 번 기회를~", "꽝", "다시 한 번 기회를~", "꽝", "다시 한 번 기회를~", "꽝", "다시 한 번 기회를~", "꽝", "다시 한 번 기회를~", "꽝", "다시 한 번 기회를~"};
		
		resp.setCharacterEncoding("UTF-8");
		PrintWriter writer = resp.getWriter();
		
		writer.write("""
				<html>
				<head>
					<meta charset="UTF-8">
				</head>
				<body>
					<h1>추첨 결과</h1>
					<div>%s</div>
				</body>
				</html>
				""".formatted(stat[rnd.nextInt(stat.length)]));
		writer.close();
	}
	
	
}







