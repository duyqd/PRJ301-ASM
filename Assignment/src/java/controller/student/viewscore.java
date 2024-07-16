/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.student;

import dal.StudentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Grade;
import model.User;

/**
 *
 * @author Admin
 */
public class viewscore extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       User user = (User) request.getSession().getAttribute("user");
        if (user == null || user.getStudent() == null) {
            response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "User not logged in or invalid session");
            return;
        }

        int sid = user.getStudent().getId();

        StudentDBContext db = new StudentDBContext();
        ArrayList<Grade> grades = db.getGradesByStudentId(sid);
        request.setAttribute("grades", grades);
        request.getRequestDispatcher("/view/student/viewscore.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
