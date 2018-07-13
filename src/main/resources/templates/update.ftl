<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://cdn.bootcss.com/jquery/2.2.3/jquery.min.js"></script>
</head>
<body>
<form method="post" modelAttribute="users" action="update">
    <div align="center" >
        <h1>修改用户列表</h1>
        <table border="1">
            <tr><td>id：<input type="text" path="id"></td></tr>
            <tr><td>姓名：<input type="text" path="name"></td></tr>
            <tr><td>年龄：<input type="text" path="age"></td></tr>
            <tr><td>生日：<input type="text" path="birthday"></td></tr>
            <tr><td>地址：<input type="text" path="address"></td></tr>
            <tr>
                <td>
                    <input type="submit" value="修改" >
                    <a href="user">返回</a>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>