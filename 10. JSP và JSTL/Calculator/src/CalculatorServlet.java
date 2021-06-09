import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculator")
public class CalculatorServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Float firstOperand = Float.parseFloat(request.getParameter("first-operand"));
        Float secondOperand = Float.parseFloat(request.getParameter("second-operand"));

        char operator = request.getParameter("operator").charAt(0);

        Float result = Calculator.calculator(firstOperand, secondOperand, operator);
//        try {
//            request.setAttribute("first-operand", firstOperand);
//            request.setAttribute("second-operand", secondOperand);
//            request.setAttribute("result", result);
//            request.setAttribute("operator",operator);
//        } catch (NullPointerException e) {
//            System.out.println("Exception in TechmasterNPE1()");
//            e.printStackTrace();
//        }

        request.setAttribute("first-operand", firstOperand);
        request.setAttribute("second-operand", secondOperand);
        request.setAttribute("result", result);
        request.setAttribute("operator",operator);
        try {
            request.setAttribute("first-operand", firstOperand);
            request.setAttribute("second-operand", secondOperand);
            request.setAttribute("result", result);
            request.setAttribute("operator",operator);
        } catch (NullPointerException e) {
            System.out.println("Exception in TechmasterNPE1()");
            e.printStackTrace();
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
