<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<%@ include file="../layout/header.jsp"%>
<script src="https://kit.fontawesome.com/983b1b1bfd.js"
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
<link rel="stylesheet" href="/css/solution.css">


<div id="solution_head">
	<h1>
		<i class="fa-solid fa-grip-lines"></i>&nbsp;시험결과&nbsp;<i
			class="fa-solid fa-grip-lines"></i>
	</h1>
</div>

<!-- 오답 문제 번호 -->

<div class="chart_wrap">
	<div class="solution_chart">
		<canvas id="myChart" width="400" height="400"></canvas>
	</div>
	<div id="data_len" style="display: none;">${data_len}</div>
	<div class="question_wrong_wrap">
		<div class="question_wrong_header">
			<p class="header_text">
				오답 번호 <span class="header_text_ex">(번호를 클릭하면 해당 문제 해설로 이동)</span>
			</p>
		</div>
			<div class="question_wrong">
				<a class="solution_move" href="#question_${data}">${data}</a>
			</div>
	</div>
</div>


<!-- 시험 결과 -->


		<div class="exam_result">
			<div class="exam_pass">
				최종 ${100-data_len}점으로 정보처리기사 시험 결과는<span class="exam_pass_span">
					"합격" </span>입니다.
			</div>
		</div>


<!-- 정답 및 해설 -->
<div class="solution_total">
	<p class="solution_head">
		<i class="fa-solid fa-book"></i> 정답과 해설
	</p>
	<div class="solution_box">
		<c:forEach var="status" items="${status}">
			<c:choose>
				<c:when test="${status % 2 != 0}">
					<c:forEach var="exam1" items="${exam1.content}">
						<c:choose>
							<c:when test="${status == exam1.id}">
								<div class="question_box_solution" id="question_${exam1.id}">
									<div class="solution_question">${exam1.id}.
										${exam1.question}</div>
									<br>
									<div>
										<img src="${exam1.question_content}">
									</div>
									<br>
									<c:choose>
										<c:when
											test="${exam1.id == 44 || exam1.id == 57 || exam1.id == 77 || exam1.id == 79}">
											<div>
												① <img src="${exam1.num1}">
											</div>
											<br>
											<div>
												② <img src="${exam1.num2}">
											</div>
											<br>
											<div>
												③ <img src="${exam1.num3}">
											</div>
											<br>
											<div>
												④ <img src="${exam1.num4}">
											</div>
											<br>
										</c:when>
										<c:otherwise>
											<div>① ${exam1.num1 }</div>
											<br>
											<div>② ${exam1.num2 }</div>
											<br>
											<div>③ ${exam1.num3 }</div>
											<br>
											<div>④ ${exam1.num4 }</div>
											<br>
										</c:otherwise>
									</c:choose>
									<div class="solution_wrap">
										<div class="solution_answer">정답
											: ${exam1.answer}</div>
										<br>
										<div class="solution_content">
											<i class="fa-solid fa-pencil"></i>문제 해설<br> <br>${exam1.solution}</div>
										<br>
									</div>
								</div>
							</c:when>
						</c:choose>
					</c:forEach>
				</c:when>
				<c:when test="${status % 2 == 0}">
					<c:forEach var="exam2" items="${exam2.content}">
						<c:choose>
							<c:when test="${status == exam2.id}">
								<div class="question_box_solution" id="question_${exam2.id}">
									<div class="solution_question">${exam2.id}.
										${exam2.question}</div>
									<br>
									<div>
										<img src="${exam2.question_content}">
									</div>
									<br>
									<div>① ${exam2.num1}</div>
									<br>
									<div>② ${exam2.num2}</div>
									<br>
									<div>③ ${exam2.num3}</div>
									<br>
									<div>④ ${exam2.num4}</div>
									<br>
									<div class="solution_wrap">
										<div class="solution_answer">정답
											: ${exam2.answer}</div>
										<br>
										<div class="solution_content">
											<i class="fa-solid fa-pencil"></i>문제 해설<br> <br>${exam2.solution}</div>
										<br>
									</div>
								</div>
							</c:when>
						</c:choose>
					</c:forEach>
				</c:when>
			</c:choose>
		</c:forEach>
	</div>
</div>

<script type="text/javascript" src="/js/chart.js"></script>
<%@ include file="../layout/footer.jsp"%>