package angel.Employees.Service;

import angel.Employees.Entity.Employee;
import jakarta.persistence.criteria.CriteriaBuilder;

import java.util.List;

public interface IEmployeesService {
    public Employee findEmployeeById(Integer idEmployee);
    public List<Employee> listAllEmployees();
    public void saveEmployee(Employee employee);
    public void deleteEmployee(Employee employee);
}
