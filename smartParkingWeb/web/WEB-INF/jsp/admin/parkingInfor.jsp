<%-- 
    Document   : parkingInfor
    Created on : Nov 22, 2018, 8:33:32 PM
    Author     : linhph
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width initial-scale=1">
    <title>Parking information</title>

    <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/resources/js/script.js" type="text/javascript"></script>

</head>

<body>

    <jsp:include page="adNavBar.jsp"></jsp:include>
    <jsp:include page="../partition/message.jsp"></jsp:include>
    <!-- Content -->
    <div class="content container">

        <div class="row">
            <div class="col-md-12">
                <hr>
                <div class="titleParking">
                    All your parking information today:
                </div>
                <table class="table table-bordered table-hover table-striped">
                    <thead>
                        <tr>
                            <th>#No</th>
                            <th>Park Code</th>
                            <th>Park Name</th>
                            <th>Total Slot</th>
                            <th>Using Slot</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="park" items="${listPark}">
                            <tr>
                                <td>${park.getId()}</td>
                                <td>${park.getParkCode()}</td>
                                <td>${park.getParkName()}</td>
                                <td class="totalSlot">${park.getTotalSlot()}</td>
                                <td>${park.getUsingSlot()}</td>
                                <td> <a href="parkingDetail?parkid=${park.getId()}"><button class="btn btn-info">Detail</button></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <hr>
            </div>
            <hr>
        </div>
    </div>
    <!-- End container -->
    <script>

        $(".totalSlot").each(function () {
            var totalSlot = $(this).html();
            var usingSlot = $(this).next().html();
            var remainSlot = totalSlot - usingSlot;
            if (remainSlot < 10) {
                $(this).parent().css("color", "red").css("font-weight", "bold");
                $(this).next().css("font-size", "120%");

            }
            else
                $(this).parent().css("color", "blue");
        });

    </script>


</body>

</html>