<%@ include file="fragments/head.jsp"%>
<%@ include file="fragments/navbar.jsp"%>

<div class="container">
    <div class="text-center" style="margin: 30px ">
        <h2> Update Employee</h2>
    </div>
    <form class=" row g-3" action="${urlUpdate}" modelAttribute="employeeUpdate" method="POST">
        <input hidden="idEmployee" value="${employee.idEmployee}" />
        <div class="mb-3">
            <label for="name" class="form-label">Enter name: </label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Johnson..." required="true" value="${employee.name}">
        </div>
        <div class="mb-3">
            <label for="department" class="form-label">Enter departament: </label>
            <input type="text" class="form-control" id="department" name="department" placeholder="Finance..." value="${employee.department}" >
        </div>
        <div class="mb-3">
            <label for="salary" class="form-label">Enter mensual salary: </label>
            <input type="number" step="any" class="form-control" id="salary" name="salary" placeholder="1000..." value="${employee.salary}">
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Update</button>
            <a href="${urlInicio}" class="btn btn-danger btn-sm">return</a>
        </div>
    </form>

</div>

<%@ include file="fragments/pie.jsp"%>