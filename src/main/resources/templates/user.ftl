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
    <div><input type="text" value="名字" id="t_select">
    <input type="button" value="查询" onclick="select();">
    <a href="/add">添加</a></div>
    <table border="2">

        <tr>
            <td>#</td>
            <td>名字</td>
            <td>年龄</td>
            <td>生日</td>
            <td>地址</td>
            <td>操作</td>
        </tr>
        <#list user as text>
         <tr>
            <td id="id">${text.id}</td>
            <td id="name">${text.name}</td>
            <td id="age">${text.age}</td>
            <td id="birthday">${text.birthday}</td>
            <td id="address">${text.address}</td>
            <td>
                <input type="button" value="删除" onclick="del();">
                <a href="/update">修改</a>
            </td>
        </tr>
        </#list>

    </table>
</div>

</body>
</html>