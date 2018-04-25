<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
    <style type="text/css">
        table {
            width:80%;
            height:300px;
            margin:0 auto;
            text-align:center;
        }
        table thead {
            background:black;
            color:white;
        }
        thead tr {
            height:50px;
        }
        thead th {
            border:1px solid black
        }
    </style>
    <script type="text/javascript">
        function xlh(){
            var tbl = document.getElementById("tbl");
            var rows = tbl.rows.length;
            for(var i=1;i<rows;i++){
                if(i%2 != 0){
                    tbl.rows[i].style.backgroundColor = "#EEEEEE";
                }
            }
        }
    </script>
</head>
<body onload="xlh()">
<div>
    <table id="tbl" border="1" cellspacing="0">
        <thead>
            <tr>
                <th>编号</th>
                <th>姓名</th>
                <th>年龄</th>
                <th>性别</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${employees }">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.age}</td>
                    <td>${item.gender}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
