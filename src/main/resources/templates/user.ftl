<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript">
        // $(function() {
        //     $('#test').click(function() {
        //         $.ajax({
        //             url: 'user/getUser',
        //             type: 'post',
        //             dataType: 'json',
        //             success: function(json) {
        //                 var item;
        //                 $.each(json, function(i, result) {
        //                     item = "<tr><td>" + result['name'] + "</td><td>" + result['age'] + "</td><td>" +
        //                         result['birthday']+ "</td><td>" + result['address']+ "</td></tr>";
        //                     $('.table').append(item);
        //                 });
        //             }
        //         })
        //     })
        // });

        //页面加载   获取全部信息
        $(function(){
            $.ajax({
                type: "POST",//请求方式
                url: "http://localhost:8080/user/getUser",//地址，就是json文件的请求路径
                dataType: "json",//数据类型可以为 text xml json  script  jsonp
                success: function(result){//返回的参数就是 action里面所有的有get和set方法的参数
                    addBox(result);
                }
            });
            /*$.get("item.json",function(result){
                //result数据添加到box容器中;
                addBox(result);
            });*/
        });
        function addBox(result){
            //result是一个集合,所以需要先遍历
            $.each(result,function(index,obj){
                $("#box").append(
                    "<div>"+obj['name']+"</div>"+
                    //获得名字
                    "<div >"+obj['age']+"</div>"+
                    //获得性别
                    "<div >"+obj['birthday']+"</div>"+
                    //获得邮箱地址
                    "<div >"+obj['address']+"</div>");
            });
        }
    </script>
</head>
<body>
<table id="box">

</table>
</body>
</html>