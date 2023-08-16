<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>เพิ่มเครื่องดื่ม</title>
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
        /* Add any additional styling for your form elements here */
        /* For example: input, select, table styles */
    </style>
</head>
<body>
    <h2>เพิ่มเครื่องดื่ม</h2>
    <form action="addnewdrinkMySQL">
        <table>
            <tr><td>ชื่อ:</td><td><input type="text" name="drinkName"></td></tr>
            <tr><td>ประเภท:</td>
                <td>
                    <select name="drinkType">
                        <option value="เย็น">เย็น</option>
                        <option value="ร้อน">ร้อน</option>
                        <option value="ปั่น">ปั่น</option>  
                    </select>
                </td>
            </tr>
            <tr><td>เพิ่ม:</td>
                <td>
                    <input type="checkbox" name="adds" value="ไข่มุก">ไข่มุก
                    <input type="checkbox" name="adds" value="บุก">บุก<br>
                    <input type="checkbox" name="adds" value="วุ้นสลัด">วุ้นสลัด
                    <input type="checkbox" name="adds" value="ไม่ใส่">ไม่ใส่<br>
                </td>
            </tr>
            <tr><td>ระดับความหวาน:</td>
                <td>
                    <input type="radio" name="sweet" value="หวานน้อย">หวานน้อย
                    <input type="radio" name="sweet" value="หวานปกติ">หวานปกติ
                    <input type="radio" name="sweet" value="หวานมาก">หวานมาก
                </td>
            </tr>
            <tr><td>ราคา:</td><td><input type="text" name="price"></td></tr>
            <tr><td>&nbsp;</td><td><input type="submit" value="เพิ่มเครื่องดื่ม"></td></tr>
        </table>
    </form>
</body>
</html>
