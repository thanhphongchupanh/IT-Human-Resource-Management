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
import model.DTO.DayLeaveDto;
import model.DTO.EmployeeDto;
import model.DTO.UserDto;

/**
 *
 * @author ADMIN
 */
public class DayLeavePendingServlet extends HttpServlet {

    private static final String DAY_LEAVE_PAGE = "HR/DayLeave.jsp";

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
        String url = DAY_LEAVE_PAGE;

        HttpSession session = request.getSession();
        UserDto userDTO = (UserDto) session.getAttribute("user");
        String username = userDTO.getUsername();

        try {
            HRDao dao = new HRDao();

            // Get department ID
            EmployeeDto e_departmentid = dao.getDepartmentID(username);

            session.setAttribute("DEPARTMENT_ID", e_departmentid);
            EmployeeDto employeeDto = (EmployeeDto) session.getAttribute("DEPARTMENT_ID");
            String departmentID = employeeDto.getDepartment_id();

            // Get dayleave
            DayLeaveDto dto = new DayLeaveDto();
            dao.getDayLeavePending(dto, departmentID);
            List<DayLeaveDto> pending = dao.getDayLeaveList();
            request.setAttribute("PENDING_LIST", pending);
            url = DAY_LEAVE_PAGE;
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
