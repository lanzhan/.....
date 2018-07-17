<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div align="center">
    <h1>用户信息</h1>
    <br/>
    <div><a href="add">添加</a></div>
    <table border="2">
        <tr>
            <td>#</td>
            <td>名字</td>
            <td>年龄</td>
            <td>生日</td>
            <td>地址</td>
            <td>操作</td>
        </tr>
        <#list users as b,a>
            <tr>
                <td id="id">${a.id}</td>
                <td id="name">${a.name}</td>
                <td id="age">${a.age}</td>
                <td id="birthday">${a.birthday}</td>
                <td id="address">${a.address}</td>
                <td>
                    <a href="${a.id}/delete">删除</a>
                    <a href="${a.id}/update">修改</a>
                </td>
            </tr>
        </#list>
    </table>
</div>
</body>
</html>