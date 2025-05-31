@WebServlet("/PostItemServlet")
public class PostItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String desc = request.getParameter("description");
        String type = request.getParameter("type");
        String user = (String) request.getSession().getAttribute("username");

        boolean status = ItemDAO.insertItem(name, desc, type, user);

        if (status) {
            response.sendRedirect("index.jsp");
        } else {
            response.getWriter().println("Error while posting item.");
        }
    }
}
