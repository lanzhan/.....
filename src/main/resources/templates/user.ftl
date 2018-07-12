<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        #qr_insert_div{
            display: none;
        }
    </style>
    <script type="text/javascript">
        $("#delete")
        $("#insert")
        $("#select")
        $("#update")
    </script>
</head>
<body>

<div align="center">
    <h1>用户信息</h1>
    <br/>
    <table border="2">
        <div><input type="text" id="t_select">
        <input type="button" value="查询" id="select">
        <input type="button" value="添加" id="insert"></div>
        <tr>
            <td>名字</td>
            <td>年龄</td>
            <td>生日</td>
            <td>地址</td>
            <td>操作</td>
        </tr>
        <tr>
            <td id="name">${user.name}</td>
            <td id="age">${user.age}</td>
            <td id="birthday">${user.birthday}</td>
            <td id="address">${user.address}</td>
            <td><input type="button" value="删除" id="delete">
                <input type="button" value="修改" id="update"> </td>
        </tr>
    </table>
</div>
<div align="center" id="qr_insert_div">
    <table border="1">
        <tr><td>姓名：<input type="text" name="name"></td></tr>
        <tr><td>年龄：<input type="text" name="age"></td></tr>
        <tr><td>生日：<input type="text" name="birthday"></td></tr>
        <tr><td>地址：<input type="text" name="address"></td></tr>
        <tr><td><input type="button" value="确认添加" id="qr_insert"></td></tr>
    </table>
</div>
</body>
<script>
    console.log("dddd")
</script>
</html>