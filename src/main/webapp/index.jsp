<%--
  Created by IntelliJ IDEA.
  User: 牛壮
  Date: 2023/2/24
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.min.css">
    <script src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
</head>

<body>
<div id="chart-container"></div>

</body>
<script>
    // 数据源
    const dataSource = {
        "chart": {
            "caption": "每月销售报告",
            "yAxisName": "销售额",
            "xAxisName": "月份",
            "numberPrefix": "$",
            "theme": "fusion",
        },
        "data": [
            {"label": "一月", "value": "420000"},
            {"label": "二月", "value": "810000"},
            {"label": "三月", "value": "720000"},
            {"label": "四月", "value": "550000"},
            {"label": "五月", "value": "910000"},
            {"label": "六月", "value": "510000"},
            {"label": "七月", "value": "680000"},
            {"label": "八月", "value": "620000"},
            {"label": "九月", "value": "610000"},
            {"label": "十月", "value": "490000"},
            {"label": "十一月", "value": "900000"},
            {"label": "十二月", "value": "730000"},
        ]
    };

    // 创建图表
    const chart = new FusionCharts({
        type: 'column2d',
        renderAt: 'chart-container',
        width: '100%',
        height: '400',
        dataFormat: 'json',
        dataSource: dataSource
    });

    // 渲染图表
    chart.render();

</script>
</html>
