<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://cdn.bootcss.com/jquery/2.2.3/jquery.min.js"></script>
</head>
<body>

<div align="center">
    <h1>用户信息</h1>
    <br/>
    <div><input type="text" value="名字" id="t_select">
    <input type="button" value="查询" onclick="select">
    <a href="add">添加</a></div>
    <table border="2">

        <tr>
            <td>#</td>
            <td>名字</td>
            <td>年龄</td>
            <td>生日</td>
            <td>地址</td>
            <td>操作</td>
        </tr>
        <forEach items="${users}" var="userMap">
            <tr>
                <td id="id">${userMap.value.id}</td>
                <td id="name">${userMap.value.name}</td>
                <td id="age">${userMap.value.age}</td>
                <td id="birthday">${userMap.value.birthday}</td>
                <td id="address">${userMap.value.address}</td>
                <td>
                    <a href="${userMap.value.id}/delete">删除</a>
                    <a href="${userMap.value.id}/update">修改</a>
                </td>
            </tr>
        </forEach>
    </table>
</div>

</body>
</html>