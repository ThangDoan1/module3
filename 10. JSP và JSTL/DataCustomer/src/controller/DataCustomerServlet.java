package controller;

import model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DataCustomerServlet",urlPatterns = "/customer")
public class DataCustomerServlet extends HttpServlet {
    private static List<Customer> customerList;

    static {
        customerList = new ArrayList<>();
        customerList.add(new Customer("Doan Manh Thang", "20/6/1996", "Da Nang", "1.jpg"));
        customerList.add(new Customer("Nguyen Van A", "1/1/2001", "Quang Nam", "2.jpg"));
        customerList.add(new Customer("Hello", "2/2/2222", "Ha Noi", "3.jpg"));
        customerList.add(new Customer("Hi", "3/3/3333", "Da Nang", "4.jpg"));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("DataCustomer", customerList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        dispatcher.forward(request, response);
    }
}
