package atj;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Calculator calc = (Calculator) session.getAttribute("calc");
		if (calc == null){
			calc = new Calculator();
			session.setAttribute("calc", calc);
		}
		
		try {
			String button = request.getParameter("b");
			if (button.equals("0") || button.equals("1") || button.equals("2") || button.equals("3")
					|| button.equals("4") || button.equals("5") || button.equals("6") || button.equals("7")
					|| button.equals("8") || button.equals("9") || button.equals(".")) {
				if (calc.isResultSetted() == false)
					calc.setToShow(calc.getToShow() + button);
				else {
					calc.setToShow(button);
					calc.setResultSetted(false);
				}
			} else if (button.equals("+") || button.equals("-") || button.equals("*") || button.equals("/")) {
				if (!calc.getOperation().equals("") && calc.isaSetted() == true) {
					calc.setOperation(button);
				} else if (calc.getOperation().equals("")) {
					calc.setOperation(button);
					calc.setA(Double.parseDouble(request.getParameter("textfield")));
					calc.setToShow("");
					calc.setaSetted(true);
				}
			} else if (button.equals("=")) {
				calc.setB(Double.parseDouble(request.getParameter("textfield")));
				if (calc.getOperation().equals("+") && calc.isaSetted() == true) {
					calc.setToShow(String.valueOf(calc.addition()));
				} else if (calc.getOperation().equals("-") && calc.isaSetted() == true) {
					calc.setToShow(String.valueOf(calc.subtraction()));
				} else if (calc.getOperation().equals("*") && calc.isaSetted() == true) {
					calc.setToShow(String.valueOf(calc.multiplication()));
				} else if (calc.getOperation().equals("/") && calc.isaSetted() == true) {
					calc.setToShow(String.valueOf(calc.division()));
					if (calc.getToShow().equals("NaN") || calc.getToShow().equals("Infinity"))
						throw new Exception();
				}
				calc.setOperation("");
				calc.setaSetted(false);
				calc.setResultSetted(true);
			} else if (button.equals("C")) {
				calc.setToShow("");
				request.setAttribute("disableButton", 0);
				calc.setOperation("");
				calc.setaSetted(false);
			} else if (button.equals("sqrt") || button.equals("%")) {
				calc.setOperation(button);
				calc.setA(Double.parseDouble(request.getParameter("textfield")));
				calc.setaSetted(true);
				if (calc.getOperation().equals("sqrt") && calc.isaSetted() == true) {
					if (String.valueOf(calc.root()).equals("NaN"))
						throw new Exception();
					calc.setToShow(String.valueOf(calc.root()));
				} else if (calc.getOperation().equals("%") && calc.isaSetted() == true) {
					calc.setToShow(String.valueOf(calc.percent()));
				}
				calc.setaSetted(false);
				calc.setResultSetted(true);
				calc.setOperation("");
			} else if (button.equals("+-")) {
				if (request.getParameter("textfield").startsWith("-"))
					calc.setToShow(
							request.getParameter("textfield").substring(1, request.getParameter("textfield").length()));
				else {
					calc.setResultSetted(false);
					calc.setToShow("-" + request.getParameter("textfield"));
				}
			}
		} catch (Exception e1) {
			System.out.println("ERRRR");
			calc.setToShow("ERR");
			request.setAttribute("disableButton", 1);
		}

		// to send from servlet to jsp
		request.getServletContext().getRequestDispatcher("/calculator.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
