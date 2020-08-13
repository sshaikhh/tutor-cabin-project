package bao;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.Student;
import dao.Tutor;
import template.Datahelper;

@Controller
public class AdminController {

	@RequestMapping("admindash")
	public ModelAndView admindash(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		if(session.getAttribute("uadmin")!=null)
		return new ModelAndView("admin/admindash");
		else
		return new ModelAndView("redirect:MainAdmin.html");	
	}
	
	@RequestMapping("MainAdmin")
	public String adminlogin()
	{
		return "admin/MainAdmin";
	}
	



	@RequestMapping("adminlogout")
	public ModelAndView adminlogout(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		session.removeAttribute("uadmin");
		session.invalidate();
		return new ModelAndView("redirect:MainAdmin.html");
	}


	@RequestMapping("managestatus")
	 public ModelAndView managestatus(HttpServletRequest request,HttpServletResponse response)
	 {
		
		String emailid = request.getParameter("q");
		Datahelper.configureFile();
		Query q=Datahelper.getRecord("from Student s where s.emailid=:a");
		q.setString("a",emailid);
		List lst = q.list();
		Iterator it = lst.iterator();
		int f=0;
		if(it.hasNext())
		{
		    Student st = (Student)(it.next());
		    if(st.getStatus()==0)
		    {
		    	f=1;
		    }
		    else
		    {
		    	f=0;
		    }
		    st.setStatus(f);;
			Datahelper.insertQuery(st);
			Datahelper.closeConn();
		}
		HttpSession session = request.getSession();
		 if(session.getAttribute("uadmin")!=null)
		   return new ModelAndView("admin/View_Students");
		 else
			 return new ModelAndView("redirect:MainAdmin.html");		 
	 }
	
	
	
	@RequestMapping("viewreg")
	 public ModelAndView viewreg(HttpServletRequest request,HttpServletResponse response)
	 {
		
		 HttpSession session = request.getSession();
		 if(session.getAttribute("uadmin")!=null)
		   return new ModelAndView("admin/View_Students");
		 else
			 return new ModelAndView("redirect:MainAdmin.html");		 
	 }	
	

	
	
	
	@RequestMapping("managetutorstatus")
	 public ModelAndView managetutorstatus(HttpServletRequest request,HttpServletResponse response)
	 {
		
		String emailid = request.getParameter("q");
		Datahelper.configureFile();
		Query q=Datahelper.getRecord("from Tutor t where t.emailid=:a");
		q.setString("a",emailid);
		List lst = q.list();
		Iterator it = lst.iterator();
		int f=0;
		if(it.hasNext())
		{
		    Tutor tu = (Tutor)(it.next());
		    if(tu.getStatus()==0)
		    {
		    	f=1;
		    }
		    else
		    {
		    	f=0;
		    }
		    tu.setStatus(f);
			Datahelper.insertQuery(tu);
			Datahelper.closeConn();
		}
		HttpSession session = request.getSession();
		 if(session.getAttribute("uadmin")!=null)
		   return new ModelAndView("admin/View_Tutors");
		 else
			 return new ModelAndView("redirect:MainAdmin.html");		 
	 }
		
	
	
	@RequestMapping("viewtutors")
	 public ModelAndView viewtutors(HttpServletRequest request,HttpServletResponse response)
	 {
		
		 HttpSession session = request.getSession();
		 if(session.getAttribute("uadmin")!=null)
		   return new ModelAndView("admin/View_Tutors");
		 else
			 return new ModelAndView("redirect:MainAdmin.html");		 
	 }	
	
	
	
}
