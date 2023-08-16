<%-- 
    Document   : updateFood
    Created on : Jan 21, 2019, 7:50:23 PM
    Author     : Wasana Ngaogate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="model.Drink" %>

<h2>แก้ไขเครื่องดื่ม</h2>

<%
    Drink drink = (Drink) session.getAttribute("drink");
    out.println("ข้อมูลเดิม: " + drink.getName() + ", " + drink.getType());
    for(String n : drink.getAdds()){
        out.print(n + " ");
    }
    out.println(drink.getSweet() + "," + drink.getPrice() + "<br/>");
%>

<form action="addnewdrink">
    <table>
        <tr><td>ชื่อ:</td>
            <td><input type="text" name="drinkName" value="<%= drink.getName() %>"></td>
        <tr><td>ประเภท:</td>
            <td>
                <select name="drinkType">
                    <option value="ร้อน">ร้อน</option>
                    <option value="เย็น">เย็น</option>
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
        <tr><td>ราคา:</td><td><input type="text" name="price" value="<%= drink.getPrice() %>"></td></tr>
        <tr><td>&nbsp;</td><td><input type="submit" value="เพิ่มเครื่องดื่ม"></td></tr>
    </table>
</form>
        
<% session.removeAttribute("drink"); %>