<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 7/30/2024
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
<div class="container p-3">
    <h1 style="text-align: center">Cập nhật lớp học</h1>
    <form action="/class-controller" method="post">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Id</th>
                <td><input type="text" name="id" readonly value="${classEdit.classId}"></td>
                <th>Tên lớp học</th>
                <td><input type="text" name="className" value="${classEdit.className}"></td>
                <th colspan="2">Trạng thái</th>
                <td>
                    <input type="radio" name="status" ${classEdit.status ? "checked" : ""} value="true"> <span>Hoạt động</span>
                    <input type="radio" name="status" ${!classEdit.status ? "checked" : ""} value="false"> <span>Không hoạt động</span>
                </td>
            </tr>
            <tr>
                <th colspan="2">
                    <input class="btn btn-primary" type="submit" value="edit" name="action">
                </th>

                <a class="btn btn-info" href="/class-controller">Quay lại</a>

            </tr>
            </thead>
        </table>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
