package com.bill.notification.system;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class AddBills extends HttpServlet {

	private List<SaveBills> bills = new ArrayList<SaveBills>();
	
	public List<SaveBills> getBills() {
		return bills;
	}

	public void setBills(List<SaveBills> bills) {
		this.bills = bills;
	}
	
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
    	SaveBills saveBills = new SaveBills();
		saveBills.setBillName(request.getParameter("billName"));
		saveBills.setDueDate(request.getParameter("dueDate"));
		bills.add(saveBills);
		System.out.println(getBills().size());
		System.out.println(getBills());
        request.getRequestDispatcher("/welcome.jsp").forward(request, response);
    }

}