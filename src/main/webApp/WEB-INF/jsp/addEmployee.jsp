<%@ include file="fragments/head.jsp"%>
<%@ include file="fragments/navbar.jsp"%>

<div class="container">
    <div class="text-center" style="margin: 30px ">
        <h2> Add Employee</h2>
    </div>
    <form class=" row g-3" action="${urlAdd}" modelAttribute="employeeForm" method="POST">
        <div class="mb-3">
            <label for="name" class="form-label">Enter name: </label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Johnson..." required="true">
        </div>
        <div class="mb-3">
            <label for="department" class="form-label">Enter departament: </label>
            <input type="text" class="form-control" id="department" name="department" placeholder="Finance..." >
        </div>
        <div class="mb-3">
            <label for="salary" class="form-label">Enter mensual salary: </label>
            <input type="number" step="any" class="form-control" id="salary" name="salary" placeholder="1000..." >
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-warning btn-sm me-3">Save</button>
            <a href="/employees" class="btn btn-danger btn-sm">return</a>
        </div>
    </form>

</div>

<%@ include file="fragments/pie.jsp"%>