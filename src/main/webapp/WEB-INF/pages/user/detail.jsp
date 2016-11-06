<%--
  Created by IntelliJ IDEA.
  User: ruiqizhang
  Date: 1/19/16
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>detail</title>
    <script type="text/javascript">
        window.onload = function() {
          document.getElementById('add').addEventListener('click', function(e) {
              e.preventDefault();
              var url = "/user/toAdd";
              window.location.href = url;
          })
        };
    </script>

</head>
<body>
${message}
</body>
</html>
