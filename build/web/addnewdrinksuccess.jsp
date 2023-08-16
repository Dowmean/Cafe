<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Drink, java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
    <title>เพิ่มอาหารสำเร็จ</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('https://i.pinimg.com/originals/bd/51/82/bd5182412b64f53265e5dd3b21f44a99.jpg');
            background-size: 100% 100%;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        h2 {
            text-align: center;
        }
        /* Additional styling for the content area */
        .content {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            margin: 20px auto;
            max-width: 600px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="content">
        <h2>เพิ่มอาหารสำเร็จ</h2>
        <%
           Drink drink = (Drink) session.getAttribute("drink");
        %>
        ชื่อ: <%= drink.getName() %><br/>
        ประเภท: <%= drink.getType() %><br/>
        เพิ่ม: <%= Arrays.toString(drink.getAdds()) %><br/>
        ระดับความหวาน: <%= drink.getSweet() %><br/>
        ราคา: <%= drink.getPrice() %><br/>
    </div>
</body>
</html>

