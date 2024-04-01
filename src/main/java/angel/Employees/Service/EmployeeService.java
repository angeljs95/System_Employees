package angel.Employees.Service;

import angel.Employees.Entity.Employee;
import angel.Employees.Repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService implements IEmployeesService {

    @Autowired
    private EmployeeRepository employeeRepository;

    @Override
    public Employee findEmployeeById(Integer idEmployee) {
        Employee employee = employeeRepository.findById(idEmployee).orElse(null);
        return employee;
    }

    @Override
    public List<Employee> listAllEmployees() {
        return employeeRepository.findAll();
    }

    @Override
    public void saveEmployee(Employee employee) {
        employeeRepository.save(employee);
    }

    @Override
    public void deleteEmployee(Employee employee) {
        employeeRepository.delete(employee);
    }
}
