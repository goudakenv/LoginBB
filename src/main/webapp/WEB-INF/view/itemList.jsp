
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>掲示板</title>
</head>
<body>
    <h1>掲示板</h1>
    <form action="post" method="post">
        ユーザー名: <input type="text" name="username" required><br>
        メッセージ: <textarea name="message" rows="4" cols="50" required></textarea><br>
        <input type="submit" value="投稿">
    </form>
    <hr>
    <h2>投稿一覧</h2>
    
</body>
</html>
