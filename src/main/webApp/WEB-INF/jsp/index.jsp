<%@ include file="fragments/head.jsp"%>
<%@ include file="fragments/navbar.jsp"%>

<div class="container">
    <div class="text-center" style="margin:30px">
        <h2>   Employees System </h2> <br>
     </div>
    <div class="container">

<table class="table table-striped table-hover table-bordered align-middle">
    <thead class="table-dark text-center">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name Employee</th>
        <th scope="col">Department</th>
        <th scope="col">Salary</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="employee" items="${employees}">
    <tr>
        <th scope="row">${employee.idEmployee}</th>
        <td>${employee.name}</td>
        <td>${employee.department}</td>
        <td> ${employee.salary}</td>
        <td class="text-center">
            <c:set var="urlUpdate">
                <c:url value="${application.contextPath}/update">
            <c:param name="idEmployee" value="${employee.idEmployee}"/>

                </c:url>
            </c:set>
            <a href="${urlUpdate}" class="btn btn-primary btn-sm me-3"> Update</a>

            <c:set var="urlDelete">
                <c:url value="${application.contextPath}/delete">
                    <c:param name="idEmployee" value="${employee.idEmployee}"/>
                </c:url>
            </c:set>
             <a href="${urlDelete}" class="btn btn-danger btn-sm me-3"> Delete</a>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
    </div>
</div>

<%@ include file="fragments/pie.jsp"%>