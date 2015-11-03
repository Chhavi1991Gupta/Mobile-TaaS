package mtaas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loadBalancerMain extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String region=request.getParameter("region");
		String ram=request.getParameter("ram");
		//String algo=request.getParameter("algo");
		String os=request.getParameter("os");
		String bit=request.getParameter("bit");
		//String cpu=request.getParameter("cpu");
		String instance=request.getParameter("instance");
		String cpumemory=request.getParameter("cpumemory");
		//String storage=request.getParameter("storage");
		
		/*response.getWriter().println("<html>");
		response.getWriter().println("<head>");
		response.getWriter().println("<head>");
		response.getWriter().println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">");
		response.getWriter().println("<title>Team 19</title>");
response.getWriter().println("</head>");
response.getWriter().println("<body bgcolor=grey>");
response.getWriter().println("Hello Welcome to Cloudlets,<br>");
response.getWriter().println("Let me tell you the configuration of virtual machine your ordered.<br>");
response.getWriter().println("<br>==========================================================================================================<br>");

response.getWriter().println("<br>Your choose the configuration that has :<br>" );
response.getWriter().println("<br> Region: "+region);
response.getWriter().println("<br> Ram(in GB): "+ram);
response.getWriter().println("<br> Operating System : "+os);
response.getWriter().println("<br> bit(32/64) : "+bit);
//response.getWriter().println("<br> CPU (Single/dual core) : "+cpu);
response.getWriter().println("<br> No of instance : "+instance);
response.getWriter().println("<br> Storage Memory : "+cpumemory);

response.getWriter().println("<br><br>==========================================================================================================<br>");

//response.getWriter().println("<br> You choose to use"+algo+" as a resource allocation Algorithm");
response.getWriter().println("<br> Now, click below button to create the instance in Amazon Web Services<br>");


response.getWriter().println("<form method=\"post\"  action=\"testmain\">");
response.getWriter().println("<tr>");
		response.getWriter().println("<td colspan=\"2\">");
				response.getWriter().println("<input type=\"submit\" value=\"Launch Instance\">");
						response.getWriter().println("</td>");
								response.getWriter().println("</tr>");
								response.getWriter().println("</form>");*/
		
		request.setAttribute("region", region);
		request.setAttribute("ram", ram);
		request.setAttribute("os", os);
		request.setAttribute("bit", bit);
		request.setAttribute("instance", instance);
		request.setAttribute("cpumemory", cpumemory);
		
		
		response.sendRedirect("LauncInstance.jsp");

		
}
}

