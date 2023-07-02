/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DAO.HRDao;
import model.DTO.EmployeeDto;
import model.DTO.UserDto;

/**
 *
 * @author ADMIN
 */
public class DropDownServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = "HR/CreateReport.jsp";

        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("user");
        String username = userDto.getUsername();
        String roleName = userDto.getRoleName();
        try {
            HRDao dao = new HRDao();

            switch (roleName) {
                // Get department id
                case "LEADER":
                    EmployeeDto e_departmentid = dao.getDepartmentID(username);
                    session.setAttribute("DEPARTMENT_ID", e_departmentid);
                    EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("DEPARTMENT_ID");
                    String departmentID = employeeDto.getDepartment_id();

                    // Get employee of each department
                    dao.getEmployeeOfEachDepartment(departmentID);
                    List<EmployeeDto> list = dao.getEmployeeList();
                    request.setAttribute("LIST_DEPARTMENT_EMPLOYEE", list);
                    break;

                case "HRM":
                    // Get employee of each department
                    dao.getEmployee();
                    List<EmployeeDto> list2 = dao.getEmployeeList();
                    request.setAttribute("LIST_DEPARTMENT_EMPLOYEE2", list2);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
