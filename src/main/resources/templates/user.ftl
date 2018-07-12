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
    <script src="https://cdn.bootcss.com/jquery/2.2.3/jquery.min.js"></script>
    <script type="text/javascript">
        var json={user:[{"name":"犬夜叉","age":20,"birthday":"8.19","address":"asdfghjk"}
        , {"name":"杀生丸","age":20,"birthday":"8.19","address":"asdfghjk"}
        ,{"name":"邪见","age":20,"birthday":"8.19","address":"asdfghjk"}]};
        var user=json.user;
        function insert(){
            $("#qr_insert_div").toggle();
        }
        function qr_insert(){
            var name = $('name1').value;
            var age = $('age1').value;
            var birthday = $('birthday1').value;
            var address= $('address1').value;
            for(var i=0;i<user.length;i++){
                if (user[i].name ==name){
                    return;
                }
            }
            user.push({"name":name,"age":age,"birthday":birthday,"address":address});
        }
        function del() {
            var name=$('name').value;
            for(var i=0;i<user.length;i++){
                if(user[i].name == name){
                    user.splice(i,1);
                    break;
                }
            }
        }
        function update() {
            var  name=$('name1').value;
            var  age=$('age1').value;
            var  birthday=$('birthday1').value;
            var  address=$('address1').value;
            for (var i=0;i<user.length;i++){
                if (user[i].name==name){
                    json[i].age=age;
                    json[i].birthday=birthday;
                    json[i].address=address;
                    break;
                }
            }
        }
    </script>
</head>
<body>

<div align="center">
    <h1>用户信息</h1>
    <br/>
    <div><input type="text" value="名字" id="t_select">
    <input type="button" value="查询" onclick="select();">
    <input type="button" value="添加" onclick="insert();"></div>
    <table border="2">

        <tr>
            <td>名字</td>
            <td>年龄</td>
            <td>生日</td>
            <td>地址</td>
            <td>操作</td>
        </tr>
        <#list user as text>
         <tr>
            <td id="name">${text.name}</td>
            <td id="age">${text.age}</td>
            <td id="birthday">${text.birthday}</td>
            <td id="address">${text.address}</td>
            <td>
                <input type="button" value="删除" onclick="del();">
                <input type="button" value="修改" onclick="update();">
            </td>
        </tr>
        </#list>

    </table>
</div>
<div align="center" id="qr_insert_div">
    <table border="1">
        <tr><td>姓名：<input type="text" id="name1"></td></tr>
        <tr><td>年龄：<input type="text" id="age1"></td></tr>
        <tr><td>生日：<input type="text" id="birthday1"></td></tr>
        <tr><td>地址：<input type="text" id="address1"></td></tr>
        <tr><td><input type="button" value="确认添加" onclick="qr_insert();"></td></tr>
    </table>
</div>
</body>
</html>