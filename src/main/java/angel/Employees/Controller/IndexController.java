package angel.Employees.Controller;

import angel.Employees.Entity.Employee;
import angel.Employees.Service.EmployeeService;
import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
//@RequestMapping("/")
public class IndexController {

    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
    @Autowired
    EmployeeService employeeService;

    @GetMapping("/")
    public String start(ModelMap model) {
        List<Employee> employeesList = employeeService.listAllEmployees();
        employeesList.forEach(employee -> logger.info(employee.toString()));
        // compartimos el modelo con la lista
        model.put("employees", employeesList);
        return "index";
    }

    @GetMapping("/newEmployee")
    public String showAddEmployee() {

        return "addEmployee";
    }

    @RequestMapping(value = "/newEmployee", method = RequestMethod.POST)
    public String addEmployee(@ModelAttribute("employeeForm") Employee employee) {
        logger.info("****************************");
        logger.info("empleado a agregar" + employee.toString());
        employeeService.saveEmployee(employee);
        logger.info("*************************");
        return "redirect:/";
    }

    @GetMapping("/update")
    public String update(@RequestParam("idEmployee") int idEmployee, ModelMap model) {
        model.put("employee", employeeService.findEmployeeById(idEmployee));
        return "updateForm";
    }
    @PostMapping("/update")
    public String updateTrue(@ModelAttribute("employeeUpdate") Employee employee) {
        try {
            if (employee != null) {
                employeeService.saveEmployee(employee);
                logger.info("Employee was been update: " + employee.toString());
            }
            return "redirect:/";
        } catch (RuntimeException e) {
            logger.info("An error was ocurred: " + e.getMessage());
        }
        return "updateForm";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("idEmployee")int idEmployee){
        try {
            Employee employee= employeeService.findEmployeeById(idEmployee);
            if (employee != null) {
                employeeService.deleteEmployee(employee);
                logger.info("Employee was been delete: " + employee.toString());
            }
            return "redirect:/";
        } catch (RuntimeException e) {
            logger.info("An error was ocurred: " + e.getMessage());
        }
        return "redirect:/";
    }

}
