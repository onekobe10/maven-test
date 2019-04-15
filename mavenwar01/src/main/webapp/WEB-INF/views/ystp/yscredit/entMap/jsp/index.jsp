<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>企业图谱</title>
    <link rel="icon" href="/yscredit/comfavico.ico">
    <link rel="stylesheet" href="/yscredit/entMap/dist/css/entMap.css">
</head>
<body>
    <div class="group-input">
        <p class="index-title">有数企业图谱DEMO</p>
        <span>企业名称:</span>
        <div class="input-outer">
            <input type="text" id="entname" placeholder="请输入完整的企业名称" autocomplete="on"/>
        </div>
        <botton class="query-btn">查看图谱</botton>
    </div>

    <script src="/yscredit/entMap/dist/js/lib/jquery/jquery-1.11.3.min.js"></script>
    <script>
        $(function() {
            $('.query-btn').on('click', function() {
                var val = $('#entname').val();
                if(val) {
                    window.open('/entMap/getEntNameMap?entname=' + val, '_blank');
                } else {
                    alert('请输入企业名称');
                }
            });
        });
    </script>
</body>
</html>
