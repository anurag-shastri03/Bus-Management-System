
package com.servlet;

import com.data_access_object.UserDao;
import com.entities.bus_entry;
import com.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DataServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
          

//            fetch all form data
            
            String bus_no = request.getParameter("bus_no");
            String stop = request.getParameter("stop");
            String time = request.getParameter("time");
            String place = request.getParameter("place");
            
            
            bus_entry uq= new bus_entry(bus_no,stop,time ,place);
            
            UserDao dao=new UserDao(ConnectionProvider.getConnection()); 
            
            if(dao.saveData(uq))
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Updated');");
                
                out.println("location='bus_details.jsp'");
                out.println("</script>");
     
            }
            else
            {
                out.println("error");
            }
//            }
//         
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
