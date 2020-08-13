package bao;

import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;

import dao.Admin;
import dao.Student;
import dao.Tutor;
import template.Datahelper;

@Controller
public class GuestController {

	@RequestMapping("dashboard")
	public ModelAndView reg_tutor1(HttpServletRequest request,HttpServletResponse response)
	{
		return new ModelAndView("Dashboard");
	}
	
	@RequestMapping("Login")
	public String Login()
	{
		return "Login";
	}
	
	
	
	/* this method is used for register user(Student)*/
	
	@RequestMapping("reglogic")
	public ModelAndView reg1(HttpServletRequest request , HttpServletResponse response)
	   {
		 Datahelper.configureFile();;
		 Student st = new Student();
		 st.setUsername(request.getParameter("student_name"));
		 st.setMobileno(request.getParameter("student_number"));
		 st.setPassword(request.getParameter("student_password"));
		 st.setUserclass(request.getParameter("student_class"));
		 st.setSubject(request.getParameter("student_subject"));
		 st.setEmailid(request.getParameter("student_email"));
		 Datahelper.insertQuery(st);
		 Datahelper.closeConn();
		 
		return new ModelAndView("Dashboard","msg","Registration - successfully");
	   }
	
	
	
	
	/*these two methods will login User(Student) */
	@RequestMapping("loginlogic")
	public ModelAndView login1(HttpServletRequest request , HttpServletResponse response)
	 {
		String error="";
		Datahelper.configureFile();
		Query q=Datahelper.getRecord("from Student s where s.emailid=:a and s.password=:b");
		q.setString("a",request.getParameter("email"));
		q.setString("b",request.getParameter("password"));
		List lst = q.list();
		Iterator it = lst.iterator();
		if(it.hasNext())
		{
			Student st = (Student)(it.next());
			HttpSession  session = request.getSession();
			session.setAttribute("uemail",st.getEmailid());
			session.setAttribute("uname",st.getUsername());
			return new ModelAndView("redirect:studenthome.html");
		}
		else
		{
			error = "invalid user id and password";
		}
		
		Datahelper.closeConn();
		
		return new ModelAndView("Login","msg1",error);
	 }
	
	@RequestMapping("studenthome")
	public ModelAndView studenthome(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		if(session.getAttribute("uemail")!=null)
		return new ModelAndView("Dashboard");
		else
		return new ModelAndView("redirect:Dashboard.html");	
	}

	
	/* This is the method for registering tutor */
	@RequestMapping("reg_tutor")
	public ModelAndView reg_tutor(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		MultipartRequest obj = new MultipartRequest(request,"E:\\Internship Project\\TutorCabin\\WebContent\\images",1058471 ); 
		Tutor t=new Tutor();
		Datahelper.configureFile();
		
		t.setT_name(obj.getParameter("t_name"));
		t.setEmailid(obj.getParameter("emailid"));
		t.setPassword(obj.getParameter("password"));
		t.setContact(obj.getParameter("contact"));
		t.setEducation(obj.getParameter("education"));
		t.setExperience(obj.getParameter("experience"));
		t.setBoardtoTeach(obj.getParameter("board"));
		t.setDob(obj.getParameter("dob"));
		t.setSubjecttoTeach(obj.getParameter("subject"));
		t.setAddress(obj.getParameter("address"));
		t.setCity(obj.getParameter("city"));
		t.setPhoto(obj.getOriginalFileName("Photo"));
		
		Datahelper.insertQuery(t);
		Datahelper.closeConn();
		
		return new ModelAndView("Dashboard","msg","successfully registered");
		
	}
	
	/* this method will check the user's mobile number is repeated or not */
	@RequestMapping("checkmobile")
	public ModelAndView  checkmobile(HttpServletRequest req,HttpServletResponse res)
	{
		String s = req.getParameter("q");
		String chk = req.getParameter("q1");
		String q1="";
		if(chk.equals("1"))
		{
			q1="from Tutor s where s.contact=:a";
		}
		else
		{
			q1="from Tutor s where s.emailid=:a";
		}
		Datahelper.configureFile();
		Query q=Datahelper.getRecord(q1);
		q.setString("a",s);
		List lst = q.list();
		if(lst.size()>0)
			s= "Already exist";
		else
			s="";
		return new ModelAndView("checkmobile","msg",s);
	}

	
	
	
	
	
	/*here we are creating a method which will be used for log in the teacher by his email id and password */
	
	@RequestMapping("TutorloginPage")
	public ModelAndView userloginTutorTodash(HttpServletRequest request,HttpSession session)
	{
		
		String error="";
		Datahelper.configureFile();
		Query q =Datahelper.getRecord("from Tutor s where s.emailid =:a and s.password =:b");
		q.setString("a",request.getParameter("useremail"));
		q.setString("b", request.getParameter("userpass"));
		
		List lst = q.list();
		Iterator it = lst.iterator();
		
		if(it.hasNext())
		{
			Tutor t = (Tutor) it.next();
			session.setAttribute("tutorEmail",request.getParameter("useremail"));
			session.setAttribute("tutorID",t.getTutorid());
			session.setAttribute("tutorName",t.getT_name());
			session.setAttribute("tutorContact",t.getContact());
			session.setAttribute("tutorAddress",t.getAddress());
			session.setAttribute("tutorTeachingBoard",t.getBoardtoTeach());
			session.setAttribute("tutorCity",t.getCity());
			session.setAttribute("tutorDOB",t.getDob());
			session.setAttribute("tutorEducation",t.getEducation());
			session.setAttribute("tutorExperience",t.getExperience());
			session.setAttribute("tutorTeachingSub",t.getSubjecttoTeach());
			session.setAttribute("tphoto",t.getPhoto());
			System.out.println("tutor id is " + session.getAttribute("tutorID") + session.getAttribute("tphoto"));
			return new ModelAndView("redirect:loginTutorCheck.html");
		}
		else
		{
			error = "invalid userid and password";
		}
		
		Datahelper.s.close();
		
		System.out.println("tutor id is " + session.getAttribute("tutorID"));
		
		return new ModelAndView("UserLogin","msg1",error);
	}
	@RequestMapping("loginTutorCheck")
	public ModelAndView adminTutordash(HttpServletRequest req,HttpServletResponse res)
	{
		HttpSession session=req.getSession();
		if(session.getAttribute("tutor")!=null)
		{
			return new ModelAndView("Dashboard");
		}
		return new ModelAndView("redirect:dashboard.html");
	}
	
	/* this method will logout users*/
	@RequestMapping("logout")
	public ModelAndView logout(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		session.removeAttribute("uemail");
		session.removeAttribute("uname");
		session.invalidate();
		return new ModelAndView("redirect:dashboard.html");
	}
	@RequestMapping("updatePass")
	public String updatePass()
	{
		return "passwordChange";
	}
	
	@RequestMapping("changePass")
	public ModelAndView changePass(HttpServletRequest request,HttpSession session)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.configureFile();
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.get(Tutor.class, (Serializable) id);
		 t.setPassword(request.getParameter("changePas"));
	       
		 Datahelper.s.update(t);
		  Datahelper.tx.commit();
		  Datahelper.s.close();
	
		return new ModelAndView("passwordChange","Updatemsg","changed password is " + t.getPassword());	
	}
	
	@RequestMapping("adminLogin")
	public ModelAndView adminLogin(HttpServletRequest request,HttpServletResponse response,HttpSession  session)
	{
		Admin admin = new Admin();
		String error="";
		Datahelper.configureFile();
		Query q= Datahelper.getRecord("from Admin s where s.username=:a and s.password=:b");
		q.setString("a",request.getParameter("username"));
		q.setString("b",request.getParameter("password"));
		
		List lst = q.list();
		Iterator it = lst.iterator();
		
		if(it.hasNext())
		{
			Admin t = (Admin) it.next();
			session.setAttribute("uadmin",request.getParameter("username"));
			return new ModelAndView("redirect:admindash.html");
		}
		else
		{
			error = "invalid userid and password";
		}
		
		Datahelper.closeConn();
		return new ModelAndView("admin/Admin","msg",error);
	}
}
