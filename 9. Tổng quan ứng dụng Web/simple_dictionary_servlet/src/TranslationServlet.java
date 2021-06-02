import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "TranslationServlet", urlPatterns = "/translate")
public class TranslationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> dictionarry = new HashMap<>();
        dictionarry.put("hello","Xin chào");
        dictionarry.put("how", "thế nào");
        dictionarry.put("book", "quyển vở");
        dictionarry.put("computer", "máy tính");

        String search  = request.getParameter("txtSearch");

        PrintWriter writer =response.getWriter();
        writer.println("<html>");

        String result = dictionarry.get(search);
        if(result != null) {
            writer.println("Word :" + search);
            writer.println("Result :" + result);
        }else{
            writer.println("not found");
        }
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
