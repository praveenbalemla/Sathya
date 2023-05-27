<%@page import="com.sathya.login.UserData"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style >
table{
margin: auto;
text-align: center;
}
.container{
  width: 100%;
    background:linear-gradient(to top,rgba(0,0,0,0.5)50%,rgba(0,0,0,0.5)50%),url(websiteimage.jpg)50%;
    background-position: center;
    background-size: cover;
    height: 109vh;
    color: white;
    text-align: center;
    margin-top: 20px; 
    }
</style>
</head>
<body>
<div class="container">
<h1>List of Users</h1>
<table border="1">
<tr>
<th>User Name</th>
 <th>Password</th>
<th>Gender</th>
<th>email</th>
<th>country</th>
<th>Qualification</th>
<th>Technologies</th>
<th>Address</th>
<th>comments</th>
<th>Action</th>
</tr>

<%


List<UserData> users= (List<UserData>)request.getAttribute("users");
%>


<c:forEach  items="${users}"  var="user" >
<tr>

<td> ${user.username}</td>
 <td> ${user.password}</td> 
<td> ${user.email}</td>
<td> ${user.country}</td>
<td> ${user.qualification}</td>
<td> ${user.technologies}</td>
<td> ${user.gender}</td>
<td> ${user.address}</td>
<td> ${user.comments}</td>
<td> 
 <a href="EditServlet"><button>Edit</button> </a>
<a href="DeleteServlet?user=${ user.username}&linkname='delete'"><button>Delete</button> </a>
 </td>

</tr>
</c:forEach>
</table>
<h1 ><a href="index.html"><button> Home </button></a></h1>
</div>
</body>
</html>




