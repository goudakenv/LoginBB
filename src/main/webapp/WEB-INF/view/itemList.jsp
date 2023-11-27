<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="domain.Post"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>掲示板</title>
</head>
<body>
	<h1>掲示板</h1>
	<form action="" method="post">
		ユーザー名: <input type="text" name="username" required><br>
		メッセージ:
		<textarea name="message" rows="4" cols="50" required></textarea>
		<br> <input type="submit" value="投稿">
	</form>
	
	<hr>
	
	${user.loginId }
		<form action="/jdbp10-2/item/out" method="post">
		<input type="submit" value="ログアウト" />
	</form>
	
	<h2>投稿一覧</h2>



	<%
	// リクエスト属性から投稿データのリストを取得
	Object attribute = request.getAttribute("postList");

	// もしも attribute が List<Post> であることが確定している場合
	if (attribute instanceof List<?>) {
		List<Post> postList = (List<Post>) attribute;

		// 投稿データを表示
		for (Post post : postList) {
	%>
	<p>
		番号:
		<%=post.getId()%></p>
			<p>
		ユーザーネーム:
		<%=post.getUsername()%></p>
	<p>
		メッセージ:
		<%=post.getMessage()%></p>
		
		<p>
		投稿時刻:
		<%=post.getCreatedAt()%></p>
	<hr>
	<%
	}
	} else {
	// もしも attribute が List<Post> でない場合のエラーハンドリングなど
	}
	%>

</body>
</html>