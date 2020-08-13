package bao;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.Tutor;
import template.Datahelper;

@Controller
public class DashBoardController {
	
	@RequestMapping("Dashboard")
	public String dashboard()
	{
		return "Dashboard";
	}
	@RequestMapping("About")
	public String about()
	{
		return "About";
	}
	@RequestMapping("Admin")
	public String admin()
	{
		return "Admin";
	}
	@RequestMapping("Blogs")
	public String blogs()
	{
		return "Blogs";
	}
	
	@RequestMapping("Contact")
	public String contact()
	{
		return "Contact";
	}
	
	@RequestMapping("Faculty_Dashboard")
	public String faculty_Dashboard()
	{
		return "Faculty_Dashboard";
	}
	
	@RequestMapping("Find_Tutor")
	public ModelAndView find_Tutor()
	{
		return new ModelAndView("Find_Tutor");
	}
	
	@RequestMapping("Join_As_A_Tutor")
	public String join_As_A_Tutor()
	{
		return "Join_As_A_Tutor";
	}
	
	@RequestMapping("Solved_Materials")
	public String solved_Materials()
	{
		return "Solved_Materials";
	}
	
	@RequestMapping("Validation")
	public String validation()
	{
		return "Validation";
	}
	
	@RequestMapping("searchTutor")
	public ModelAndView searchTutor(HttpServletRequest request,HttpServletResponse response)
	{
		return new ModelAndView("Find_Tutor","search",1);
	}
	@RequestMapping("teacherProfile")
	public String teacherProfile()
	{
		return "TeacherProfile";
	}
	@RequestMapping("ChangePic")
	public String ChangePic()
	{
		return "ChangePic";
	}
	
	@RequestMapping("changeName")
	public ModelAndView changename(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.load(Tutor.class, (Serializable) id);
		 t.setT_name(request.getParameter("newName"));
	     
		 session.setAttribute("tutorName",t.getT_name());
		 Datahelper.s.update(t);
		 Datahelper.tx.commit();
		 /*Datahelper.s.close();*/
		return new ModelAndView("redirect:teacherProfile.html");
	}
	
	@RequestMapping("changeEmail")
	public ModelAndView changeEmail(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.get(Tutor.class, (Serializable) id);
		 t.setEmailid(request.getParameter("newEmail"));
	     
		 session.setAttribute("tutorEmail",t.getEmailid());
		 Datahelper.updateCommitClose(t);
		return new ModelAndView("redirect:teacherProfile.html");
	}
	
	@RequestMapping("changeContact")
	public ModelAndView changeContact(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.get(Tutor.class, (Serializable) id);
		 t.setContact(request.getParameter("newContact"));
	     
		 session.setAttribute("tutorContact",t.getContact());
		 Datahelper.updateCommitClose(t);
		return new ModelAndView("redirect:teacherProfile.html");
	}
	
	@RequestMapping("changeEducation")
	public ModelAndView changeEducation(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.get(Tutor.class, (Serializable) id);
		 t.setEducation(request.getParameter("newEducation"));
	     
		 session.setAttribute("tutorEducation",t.getEducation());
		 Datahelper.updateCommitClose(t);
		return new ModelAndView("redirect:teacherProfile.html");
	}
	
	@RequestMapping("changeTeachingEx")
	public ModelAndView changeTeachingEx(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.get(Tutor.class, (Serializable) id);
		 t.setExperience(request.getParameter("newExperience"));
	     
		 session.setAttribute("tutorExperience",t.getExperience());
		 Datahelper.updateCommitClose(t);
		return new ModelAndView("redirect:teacherProfile.html");
	}
	
	@RequestMapping("changeBoard")
	public ModelAndView changeBoard(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.get(Tutor.class, (Serializable) id);
		 t.setBoardtoTeach(request.getParameter("newBoard"));
	     
		 session.setAttribute("tutorTeachingBoard",t.getBoardtoTeach());
		 Datahelper.updateCommitClose(t);
		return new ModelAndView("redirect:teacherProfile.html");
	}
	
	@RequestMapping("changeDOB")
	public ModelAndView changeDOB(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.get(Tutor.class, (Serializable) id);
		 t.setDob(request.getParameter("newDOB"));
	     
		 session.setAttribute("tutorDOB",t.getDob());
		 Datahelper.updateCommitClose(t);
		return new ModelAndView("redirect:teacherProfile.html");
	}
	
	@RequestMapping("changeTeachingSub")
	public ModelAndView changeTeachingSub(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.get(Tutor.class, (Serializable) id);
		 t.setSubjecttoTeach(request.getParameter("newSubject"));
	     
		 session.setAttribute("tutorTeachingSub",t.getSubjecttoTeach());
		 Datahelper.updateCommitClose(t);
		return new ModelAndView("redirect:teacherProfile.html");
	}
	
	@RequestMapping("changeResAddress")
	public ModelAndView changeResAddress(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.get(Tutor.class, (Serializable) id);
		 t.setAddress(request.getParameter("newResAddress"));
	     
		 session.setAttribute("tutorAddress",t.getAddress());
		 Datahelper.updateCommitClose(t);
		return new ModelAndView("redirect:teacherProfile.html");
	}
	
	@RequestMapping("changeCity")
	public ModelAndView changeCity(ModelMap model,HttpSession session,HttpServletRequest request)
	{
		Object id = session.getAttribute("tutorID");
		Datahelper.tx = Datahelper.s.beginTransaction();
		Tutor t = (Tutor) Datahelper.s.get(Tutor.class, (Serializable) id);
		 t.setCity(request.getParameter("newCity"));
	     
		 session.setAttribute("tutorCity",t.getCity());
		 Datahelper.updateCommitClose(t);
		return new ModelAndView("redirect:teacherProfile.html");
	}

}
