<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<script src="https://cdn.bootcss.com/jquery/2.2.3/jquery.min.js"></script>
<body>
<form action="add" method="post" modelAttribute="users">
    <div align="center" >
        <h1>添加用户</h1>
        <table border="1">
            <tr><td>id：<input type="text" id="id" name="id"></td></tr>
            <tr><td>姓名：<input type="text" id="name" name="name"></td></tr>
            <tr><td>年龄：<input type="text" id="age" name="age"></td></tr>
            <tr><td>生日：<input type="text" id="birthday" name="birthday"></td></tr>
            <tr><td>地址：<input type="text" id="address" name="address"></td></tr>
            <tr>
                <td>
                    <input type="submit" value="添加" >
                    <a href="list">返回</a>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>