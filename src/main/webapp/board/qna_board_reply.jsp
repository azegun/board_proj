<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC게시판 답변</title>
<link rel="stylesheet"	href="/board_proj/board/css/reply.css">
</head>
<body>
<%-- ${article }<br>${page } --%>
board_re_ref : ${article.board_re_ref }
board_re_lev : ${article.board_re_lev }
board_re_seq : ${article.board_re_seq }
	<section id = "writeForm">
		<h2>게시판 글 등록</h2>
		<form action="boardReplyPro.do" name = "boardform" method="post" >
			<input type = "hidden" name = "page" value = "${page }"/>
			<input type = "hidden" name = "board_num" value = "${article.board_num }"/>
			<input type = "hidden" name= "board_re_ref" value = "${article.board_re_ref }"/>
			<input type = "hidden" name = "board_re_lev" value = "${article.board_re_lev }"/>
			<input type = "hidden" name = "board_re_seq" value = "${article.board_re_seq }"/>
		
			<table>
				<tr>
					<td class = "td_left"><label for = "board_name">글쓴이</label></td>
					<td class= "td_right"><input type = "text" name = "board_name" id = "board_name"/></td>
				</tr>
				<tr>
					<td class ="td_left"><label for = "board_pass">비밀번호</label></td>
					<td class = "td_right"><input type ="password" name = "board_pass" id = "board_pass"/></td>
				</tr>	
				<tr>
					<td class ="td_left"><label for = "board_subject">제목</label></td>
					<td class ="td_right"><input type = "text" name = "board_subject" id = "board_subject"/></td>
				 </tr>
				 <tr>
				 	<td class = "td_left"><label for = "board_content">내용</label></td>
				 	<td class = "td_right"><textarea name = "board_content" id = "board_content" rows="15" cols="40"></textarea></td>
				 </tr>									 
			</table>
				<section id = "commandCell">
					<input type = "submit" value = "답변 글 등록"/>&nbsp;&nbsp;
					<input type = "reset" value = "다시 작성"/>				
				</section>			
		</form>
	</section>
</body>
</html>