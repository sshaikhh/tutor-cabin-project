 <%@page import="template.Datahelper"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="dao.Tutor"%>
<%@page import="javax.sound.sampled.DataLine"%>
<%@ include file = "Header.jsp" %>

<!-- Middle content start-->

<div class="Search_box_conatiner" style="background-color: #0da8d6; border-radius: 5px; margin-top: 50px; height:125px; margin-left: 170px; margin-right: 170px;">

<form action="searchTutor.html">    
<div class="col-md-3 col-sm-3">
<select id="tutor_subject" name="tutor_subject" class="chosen-select" style="margin-top: 48px; margin-left: 18px;height: 38px;
 border-radius: 6px;">
<option data-attr-id="" value="">Enter Subject</option>
<optgroup label="College Level">
<option value="Accountancy" data-attr-id="226">Accountancy</option>
<option value="Anthropology" data-attr-id="245">Anthropology</option>
<option value="Bio Chemistry" data-attr-id="281">Bio Chemistry</option>
<option value="Bio-informatics" data-attr-id="283">Bio-informatics</option>
<option value="Botany" data-attr-id="287">Botany</option>
<option value="Business Maths" data-attr-id="289">Business Maths</option>
<option value="Chemistry" data-attr-id="297">Chemistry</option>
<option value="Computer Science" data-attr-id="47">Computer Science</option>
<option value="Economics" data-attr-id="52">Economics</option>
<option value="Financial Management" data-attr-id="54">Financial Management</option>
<option value="Food &amp; Nutrition" data-attr-id="56">Food &amp; Nutrition</option>
<option value="Geography" data-attr-id="59">Geography</option>
<option value="History" data-attr-id="65">History</option>
<option value="Hotel Management" data-attr-id="66">Hotel Management</option>
<option value="Indirect Tax" data-attr-id="68">Indirect Tax</option>
<option value="Mass communication" data-attr-id="103">Mass communication</option>
<option value="MicroBiology" data-attr-id="111">MicroBiology</option>
<option value="Philosophy" data-attr-id="142">Philosophy</option>
<option value="Physiology" data-attr-id="143">Physiology</option>
<option value="Political Science" data-attr-id="146">Political Science</option>
<option value="Psychology" data-attr-id="148">Psychology</option>
<option value="Sociology" data-attr-id="186">Sociology</option>
<option value="Zoology" data-attr-id="224">Zoology</option></optgroup>
<optgroup label="Engineering Subjects"><option value="Aeronautical" data-attr-id="227">Aeronautical</option>
<option value="AutoCAD Training" data-attr-id="253">AutoCAD Training</option>
<option value="Bio Technology" data-attr-id="282">Bio Technology</option>
<option value="Chemical" data-attr-id="296">Chemical</option>
<option value="Civil" data-attr-id="300">Civil</option>
<option value="Computer" data-attr-id="301">Computer</option>
<option value="Drawing" data-attr-id="314">Drawing</option>
<option value="Electrical" data-attr-id="315">Electrical</option>
<option value="Electronics" data-attr-id="316">Electronics</option>
<option value="Instrumentation" data-attr-id="72">Instrumentation</option>
<option value="IT" data-attr-id="73">IT</option>
<option value="Mathematics" data-attr-id="105">Mathematics</option>
<option value="Mechanical" data-attr-id="108">Mechanical</option>
<option value="Production" data-attr-id="147">Production</option>
<option value="Thermodynamics" data-attr-id="195">Thermodynamics</option></optgroup>
<optgroup label="MBA and BBA"><option value="BBA Entrance" data-attr-id="270">BBA Entrance</option>
<option value="BBA Subjects" data-attr-id="271">BBA Subjects</option>
<option value="CAT (MBA Entrance)" data-attr-id="290">CAT (MBA Entrance)</option>
<option value="Management Subjects" data-attr-id="348">Management Subjects</option></optgroup>
<optgroup label="Test Preparation"><option value="AIEEE" data-attr-id="230">AIEEE</option>
<option value="AIPMT" data-attr-id="232">AIPMT</option>
<option value="BITSAT" data-attr-id="285">BITSAT</option>
<option value="CET" data-attr-id="291">CET</option>
<option value="GMAT" data-attr-id="324">GMAT</option>
<option value="GRE" data-attr-id="327">GRE</option>
<option value="IIT JEE" data-attr-id="331">IIT JEE</option></optgroup>
<optgroup label="maths"><option value="primary" data-attr-id="367">primary</option></optgroup>
<optgroup label="chemistry, biology"><option value="Biology" data-attr-id="380">Biology</option>
<option value="Chemistry" data-attr-id="379">Chemistry</option></optgroup>
<optgroup label="Class 1-5"><option value="All Subjects" data-attr-id="370">All Subjects</option>
<option value="Computer" data-attr-id="511">Computer</option>
<option value="English" data-attr-id="371">English</option>
<option value="EVS" data-attr-id="508">EVS</option>
<option value="French" data-attr-id="512">French</option>
<option value="Hindi" data-attr-id="509">Hindi</option>
<option value="Mathematics" data-attr-id="522">Mathematics</option>
<option value="Sanskrit" data-attr-id="513">Sanskrit</option>
<option value="Social science" data-attr-id="510">Social science</option></optgroup>
<optgroup label="English Language"><option value="competitive Exam Level" data-attr-id="601">competitive Exam Level</option>
<option value="Grammar" data-attr-id="598">Grammar</option>
<option value="Group Discussion" data-attr-id="600">Group Discussion</option>
<option value="Interview Skills Preparation" data-attr-id="603">Interview Skills Preparation</option>
<option value="Personality Development" data-attr-id="602">Personality Development</option>
<option value="Presentation Skills Preparation" data-attr-id="604">Presentation Skills Preparation</option>
<option value="Spoken English" data-attr-id="599">Spoken English</option></optgroup>
<optgroup label="Foreign Languages"><option value="American accent" data-attr-id="503">American accent</option>
<option value="American English" data-attr-id="501">American English</option>
<option value="British English" data-attr-id="502">British English</option>
<option value="Canadian accent" data-attr-id="504">Canadian accent</option>
<option value="English" data-attr-id="500">English</option>
<option value="French" data-attr-id="499">French</option>
<option value="Spanish" data-attr-id="498">Spanish</option>
<option value="Spoken English" data-attr-id="505">Spoken English</option></optgroup>
<optgroup label="Class 6-8"><option value="All subjects" data-attr-id="516">All subjects</option>
<option value="Computer" data-attr-id="521">Computer</option>
<option value="English" data-attr-id="520">English</option>
<option value="Hindi" data-attr-id="519">Hindi</option>
<option value="Mathematics" data-attr-id="518">Mathematics</option>
<option value="Science" data-attr-id="517">Science</option>
<option value="Social science" data-attr-id="515">Social science</option></optgroup>
<optgroup label="Class 9-10"><option value="All subjects" data-attr-id="525">All subjects</option>
<option value="English" data-attr-id="534">English</option>
<option value="French" data-attr-id="535">French</option>
<option value="Hindi" data-attr-id="529">Hindi</option>
<option value="Home science" data-attr-id="530">Home science</option>
<option value="IT (Information Technology)" data-attr-id="533">IT (Information Technology)</option>
<option value="Mathematics" data-attr-id="526">Mathematics</option>
<option value="Music" data-attr-id="531">Music</option>
<option value="Painting" data-attr-id="536">Painting</option>
<option value="Sanskrit" data-attr-id="532">Sanskrit</option>
<option value="Science" data-attr-id="527">Science</option>
<option value="Social science" data-attr-id="528">Social science</option></optgroup>
<optgroup label="Class 11"><option value="Accountancy" data-attr-id="542">Accountancy</option>
<option value="Biology" data-attr-id="541">Biology</option>
<option value="Biotechnology" data-attr-id="556">Biotechnology</option>
<option value="Business Studies" data-attr-id="544">Business Studies</option>
<option value="Chemistry" data-attr-id="539">Chemistry</option>
<option value="Computer Science" data-attr-id="545">Computer Science</option>
<option value="Economics" data-attr-id="543">Economics</option>
<option value="Engineering Graphics" data-attr-id="551">Engineering Graphics</option>
<option value="English" data-attr-id="561">English</option>
<option value="Entrepreneurship" data-attr-id="553">Entrepreneurship</option>
<option value="Financial Market Management" data-attr-id="558">Financial Market Management</option>
<option value="Geography" data-attr-id="549">Geography</option>
<option value="Hindi" data-attr-id="562">Hindi</option>
<option value="History" data-attr-id="547">History</option>
<option value="Home Science" data-attr-id="552">Home Science</option>
<option value="Informatics Practices" data-attr-id="546">Informatics Practices</option>
<option value="Legal Studies" data-attr-id="557">Legal Studies</option>
<option value="Mathematics" data-attr-id="540">Mathematics</option>
<option value="Multimedia and Webtech" data-attr-id="559">Multimedia and Webtech</option>
<option value="Philosophy" data-attr-id="555">Philosophy</option>
<option value="Physical Education" data-attr-id="563">Physical Education</option>
<option value="Physics" data-attr-id="538">Physics</option>
<option value="Political Science" data-attr-id="548">Political Science</option>
<option value="Psychology" data-attr-id="554">Psychology</option>
<option value="Sanskrit" data-attr-id="560">Sanskrit</option>
<option value="Sociology" data-attr-id="550">Sociology</option></optgroup>
<optgroup label="Class 12"><option value="Accountancy" data-attr-id="570">Accountancy</option>
<option value="Biology" data-attr-id="569">Biology</option>
<option value="Biotechnology" data-attr-id="586">Biotechnology</option>
<option value="Business Studies" data-attr-id="572">Business Studies</option>
<option value="Chemistry" data-attr-id="567">Chemistry</option>
<option value="Computer Science" data-attr-id="573">Computer Science</option>
<option value="Economics" data-attr-id="571">Economics</option>
<option value="Engineering Graphics" data-attr-id="580">Engineering Graphics</option>
<option value="English" data-attr-id="590">English</option>
<option value="Entrepreneurship" data-attr-id="583">Entrepreneurship</option>
<option value="Financial Market Management" data-attr-id="588">Financial Market Management</option>
<option value="Geography" data-attr-id="578">Geography</option>
<option value="Hindi" data-attr-id="589">Hindi</option>
<option value="History" data-attr-id="576">History</option>
<option value="Home Science" data-attr-id="581">Home Science</option>
<option value="Informatics Practices" data-attr-id="575">Informatics Practices</option>
<option value="Legal Studies" data-attr-id="587">Legal Studies</option>
<option value="Mathematics" data-attr-id="568">Mathematics</option>
<option value="Multimedia and Webtech" data-attr-id="582">Multimedia and Webtech</option>
<option value="Philosophy" data-attr-id="585">Philosophy</option>
<option value="Physical Education" data-attr-id="565">Physical Education</option>
<option value="Physics" data-attr-id="566">Physics</option>
<option value="Political Science" data-attr-id="577">Political Science</option>
<option value="Psychology" data-attr-id="584">Psychology</option>
<option value="Sanskrit" data-attr-id="591">Sanskrit</option>
<option value="Sociology" data-attr-id="579">Sociology</option></optgroup>
<optgroup label="Pre-school"><option value="English" data-attr-id="594">English</option>
<option value="EVS" data-attr-id="593">EVS</option>
<option value="Hindi" data-attr-id="595">Hindi</option>
<option value="Mathematics" data-attr-id="596">Mathematics</option></optgroup>                        
</select>
</div>

<div class="col-md-3 col-sm-3">
<select id="tutor_city" name="tutor_city" class="chosen-select" style="margin-top: -38px; margin-left: 325px; height: 38px; width: 255px; border-radius: 6px;">
<option value="">Select City</option>
<option value="Bhopal" data-attr-id="35">Bhopal</option>
<option value="Gwalior" data-attr-id="62">Gwalior</option>
<option value="Indore" data-attr-id="69">Indore</option>
<option value="Pune" data-attr-id="149">Pune</option>
<option value="Raipur" data-attr-id="364">Raipur</option>
<option value="Mumbai" data-attr-id="466">Mumbai</option>
<option value="Chennai" data-attr-id="467">Chennai</option>
<option value="Kolkata" data-attr-id="468">Kolkata</option>
<option value="Bengaluru" data-attr-id="469">Bengaluru</option>
<option value="Hyderabad" data-attr-id="470">Hyderabad</option>
<option value="Varanasi" data-attr-id="471">Varanasi</option>
<option value="Kochi" data-attr-id="472">Kochi</option>
<option value="Agra" data-attr-id="473">Agra</option>
<option value="Chandigarh" data-attr-id="474">Chandigarh</option>
<option value="Surat" data-attr-id="475">Surat</option>
<option value="Jaipur" data-attr-id="476">Jaipur</option>
<option value="Jabalpur" data-attr-id="477">Jabalpur</option>
<option value="Kanpur" data-attr-id="478">Kanpur</option>
<option value="Vadodara" data-attr-id="479">Vadodara</option>
<option value="Guwahati" data-attr-id="480">Guwahati</option>
<option value="Allahabad" data-attr-id="481">Allahabad</option>
<option value="Lucknow" data-attr-id="482">Lucknow</option>
<option value="Madurai" data-attr-id="483">Madurai</option>
<option value="Mangalore" data-attr-id="484">Mangalore</option>
<option value="Gurgaon" data-attr-id="485">Gurgaon</option>
<option value="Delhi" data-attr-id="486">Delhi</option>
<option value="Mysore" data-attr-id="487">Mysore</option>
<option value="Ahmedabad" data-attr-id="488">Ahmedabad</option>
<option value="Nagpur" data-attr-id="489">Nagpur</option>
<option value="Patna" data-attr-id="490">Patna</option>
<option value="Ranchi" data-attr-id="491">Ranchi</option>
<option value="Ratlam" data-attr-id="492">Ratlam</option>
<option value="Ujjain" data-attr-id="493">Ujjain</option>
<option value="Udaipur" data-attr-id="494">Udaipur</option>
<option value="Jalgaon" data-attr-id="495">Jalgaon</option>
<option value="Mathura" data-attr-id="496">Mathura</option>   
<option value="Harda" data-attr-id="496">Harda</option>                        
</select>
</div>

<div class="col-md-3 col-sm-3">

 <button id="tutor_search_button" class="search-button" style="height: 38px; margin-top:-40px; width: 255px; margin-left: 800px; color: white; background-color: #964a96 " >Search Tutor</button> 

 </div>



</form>
</div>







<div style="height: auto;" class="container">

<!-- <div style="margin-left: 150px;height:300px;overflow:scroll;width:500px;" class="col-sm-6 float-left ">       -->

 <div class="table-responsive">
   <table align = "center" class= "table" width="1200px" height="300px"  style ="background:white; margin-top:125px; overflow:scroll;">
<%
Datahelper.configureFile();
Query q;
if(request.getAttribute("search")!=null)
{	
	q=Datahelper.getRecord("from Tutor t where t.subjecttoTeach =:a and t.city =:b");
	q.setString("a",request.getParameter("tutor_subject"));
	q.setString("b",request.getParameter("tutor_city"));
	session.setAttribute("cityOfTeacher",request.getParameter("tutor_city"));
}
else
{
 q=Datahelper.getRecord("from Tutor t");
}
List lst = q.list();
if(lst.isEmpty())
{%>
	<tr border="1">
	<td style="text-align:center;" ><strong> there is not any Teacher of this subject in this City</strong></td>
	</tr>
<% }
Iterator it = lst.iterator();
while(it.hasNext())
{
	Tutor t = (Tutor)(it.next());%>



    
	<tr border="1">
		<td style="width:100px;"><img src="images/<%= t.getPhoto() %>" width="100px" height="100px" style="border-radius:50px;" ></td>
		<td><b><%= t.getT_name() %></b><br><%= t.getEducation() %><br>Lives in <strong><%= t.getCity() %></strong></td>
		<td style="text-align:right;" ><a href =""><strong> Chat </strong></a></td>
	</tr>
		    			
<% }
Datahelper.closeConn();


%>
		    			
		    			</table></div>
		    		
		    			
		    		 	
 <!-- </div> -->              


<!-- <div style="margin-top: 81px; margin-left:150px; class="col-sm-5 float-right" >
   
 <h4>Find Tutor By Subject</h4>
<div style="background: linear-gradient( to right, #F1531C 0%, #F1531C 24%, #EDEBF0 24%, #EDEBF0 100% ); height: 1px;margin-bottom: 20px;"></div>
<select name="subject" id="lct-widget-subject" class="postform">
    <option class="level-0" value="test-preparation">Test Preparation</option>
    <option class="level-1" value="iit-jee">&nbsp;&nbsp;&nbsp;IIT JEE</option>
    <option class="level-1" value="gre">&nbsp;&nbsp;&nbsp;GRE</option>
    <option class="level-1" value="gmat">&nbsp;&nbsp;&nbsp;GMAT</option>
    <option class="level-1" value="cet">&nbsp;&nbsp;&nbsp;CET</option>
    <option class="level-1" value="bitsat">&nbsp;&nbsp;&nbsp;BITSAT</option>
    <option class="level-1" value="aipmt">&nbsp;&nbsp;&nbsp;AIPMT</option>
    <option class="level-1" value="aieee">&nbsp;&nbsp;&nbsp;AIEEE</option>
    <option class="level-0" value="pre-school">Pre-school</option>
    <option class="level-1" value="mathematics-pre-school">&nbsp;&nbsp;&nbsp;Mathematics</option>
    <option class="level-1" value="hindi-pre-school">&nbsp;&nbsp;&nbsp;Hindi</option>
    <option class="level-1" value="evs-pre-school">&nbsp;&nbsp;&nbsp;EVS</option>
    <option class="level-1" value="english-pre-school">&nbsp;&nbsp;&nbsp;English</option>
    <option class="level-0" value="mba-bba">MBA and BBA</option>
    <option class="level-1" value="management-subjects">&nbsp;&nbsp;&nbsp;Management Subjects</option>
    <option class="level-1" value="cat-mba-entrance">&nbsp;&nbsp;&nbsp;CAT (MBA Entrance)</option>
    <option class="level-1" value="bba-subjects">&nbsp;&nbsp;&nbsp;BBA Subjects</option>
    <option class="level-1" value="bba-entrance">&nbsp;&nbsp;&nbsp;BBA Entrance</option>
    <option class="level-0" value="maths">maths</option>
    <option class="level-1" value="primary">&nbsp;&nbsp;&nbsp;primary</option>
    <option class="level-0" value="foreign-languages">Foreign Languages</option>
    <option class="level-1" value="spoken-english">&nbsp;&nbsp;&nbsp;Spoken English</option>
    <option class="level-1" value="spanish">&nbsp;&nbsp;&nbsp;Spanish</option>
    <option class="level-1" value="french">&nbsp;&nbsp;&nbsp;French</option>
    <option class="level-1" value="english-foreign-languages">&nbsp;&nbsp;&nbsp;English</option>
    <option class="level-1" value="canadian-accent">&nbsp;&nbsp;&nbsp;Canadian accent</option>
    <option class="level-1" value="british-english">&nbsp;&nbsp;&nbsp;British English</option>
    <option class="level-1" value="american-english">&nbsp;&nbsp;&nbsp;American English</option>
    <option class="level-1" value="american-accent">&nbsp;&nbsp;&nbsp;American accent</option>
    <option class="level-0" value="english-language">English Language</option>
    <option class="level-1" value="spoken-english-english-class-4">&nbsp;&nbsp;&nbsp;Spoken English</option>
    <option class="level-1" value="presentation-skills-preparation">&nbsp;&nbsp;&nbsp;Presentation Skills Preparation</option>
    <option class="level-1" value="personality-development">&nbsp;&nbsp;&nbsp;Personality Development</option>
    <option class="level-1" value="interview-skills-preparation">&nbsp;&nbsp;&nbsp;Interview Skills Preparation</option>
    <option class="level-1" value="group-discussion">&nbsp;&nbsp;&nbsp;Group Discussion</option>
    <option class="level-1" value="grammar">&nbsp;&nbsp;&nbsp;Grammar</option>
    <option class="level-1" value="competitive-exam-level">&nbsp;&nbsp;&nbsp;competitive Exam Level</option>
    <option class="level-0" value="engineering-subjects">Engineering Subjects</option>
    <option class="level-1" value="thermodynamics">&nbsp;&nbsp;&nbsp;Thermodynamics</option>
    <option class="level-1" value="production-engineering-subjects">&nbsp;&nbsp;&nbsp;Production</option>
    <option class="level-1" value="mechanical-engineering-subjects">&nbsp;&nbsp;&nbsp;Mechanical</option>
    <option class="level-1" value="mathematics-engineering-subjects">&nbsp;&nbsp;&nbsp;Mathematics</option>
    <option class="level-1" value="it">&nbsp;&nbsp;&nbsp;IT</option>
    <option class="level-1" value="instrumentation">&nbsp;&nbsp;&nbsp;Instrumentation</option>
    <option class="level-1" value="electronics">&nbsp;&nbsp;&nbsp;Electronics</option>
    <option class="level-1" value="electrical">&nbsp;&nbsp;&nbsp;Electrical</option>
    <option class="level-1" value="drawing">&nbsp;&nbsp;&nbsp;Drawing</option>
    <option class="level-1" value="computer-engineering-subjects">&nbsp;&nbsp;&nbsp;Computer</option>
    <option class="level-1" value="civil">&nbsp;&nbsp;&nbsp;Civil</option>
    <option class="level-1" value="chemical">&nbsp;&nbsp;&nbsp;Chemical</option>
    <option class="level-1" value="bio-technology">&nbsp;&nbsp;&nbsp;Bio Technology</option>
    <option class="level-1" value="autocad-training">&nbsp;&nbsp;&nbsp;AutoCAD Training</option>
    <option class="level-1" value="aeronautical">&nbsp;&nbsp;&nbsp;Aeronautical</option>
    <option class="level-0" value="college-level">College Level</option>
    <option class="level-1" value="zoology">&nbsp;&nbsp;&nbsp;Zoology</option>
    <option class="level-1" value="sociology">&nbsp;&nbsp;&nbsp;Sociology</option>
    <option class="level-1" value="psychology">&nbsp;&nbsp;&nbsp;Psychology</option>
    <option class="level-1" value="political-science">&nbsp;&nbsp;&nbsp;Political Science</option>
    <option class="level-1" value="physiology">&nbsp;&nbsp;&nbsp;Physiology</option>
    <option class="level-1" value="philosophy">&nbsp;&nbsp;&nbsp;Philosophy</option>
    <option class="level-1" value="microbiology">&nbsp;&nbsp;&nbsp;MicroBiology</option>
    <option class="level-1" value="mass-communication">&nbsp;&nbsp;&nbsp;Mass communication</option>
    <option class="level-1" value="indirect-tax">&nbsp;&nbsp;&nbsp;Indirect Tax</option>
    <option class="level-1" value="hotel-management">&nbsp;&nbsp;&nbsp;Hotel Management</option>
    <option class="level-1" value="history">&nbsp;&nbsp;&nbsp;History</option>
    <option class="level-1" value="geography">&nbsp;&nbsp;&nbsp;Geography</option>
    <option class="level-1" value="food-nutrition">&nbsp;&nbsp;&nbsp;Food &amp; Nutrition</option>
    <option class="level-1" value="financial-management">&nbsp;&nbsp;&nbsp;Financial Management</option>
    <option class="level-1" value="economics">&nbsp;&nbsp;&nbsp;Economics</option>
    <option class="level-1" value="computer-science-college-level">&nbsp;&nbsp;&nbsp;Computer Science</option>
    <option class="level-1" value="chemistry-college-level">&nbsp;&nbsp;&nbsp;Chemistry</option>
    <option class="level-1" value="business-maths-college-level">&nbsp;&nbsp;&nbsp;Business Maths</option>
    <option class="level-1" value="botany">&nbsp;&nbsp;&nbsp;Botany</option>
    <option class="level-1" value="bio-informatics">&nbsp;&nbsp;&nbsp;Bio-informatics</option>
    <option class="level-1" value="bio-chemistry">&nbsp;&nbsp;&nbsp;Bio Chemistry</option>
    <option class="level-1" value="anthropology">&nbsp;&nbsp;&nbsp;Anthropology</option>
    <option class="level-1" value="accountancy">&nbsp;&nbsp;&nbsp;Accountancy</option>
    <option class="level-0" value="class-9-10">Class 9-10</option>
    <option class="level-1" value="social-science-class-9-10">&nbsp;&nbsp;&nbsp;Social science</option>
    <option class="level-1" value="science-class-9-10">&nbsp;&nbsp;&nbsp;Science</option>
    <option class="level-1" value="sanskrit-class-9-10">&nbsp;&nbsp;&nbsp;Sanskrit</option>
    <option class="level-1" value="painting">&nbsp;&nbsp;&nbsp;Painting</option>
    <option class="level-1" value="music">&nbsp;&nbsp;&nbsp;Music</option>
    <option class="level-1" value="mathematics-class-9-10">&nbsp;&nbsp;&nbsp;Mathematics</option>
    <option class="level-1" value="it-class-9-10">&nbsp;&nbsp;&nbsp;IT (Information Technology)</option>
    <option class="level-1" value="home-science">&nbsp;&nbsp;&nbsp;Home science</option>
    <option class="level-1" value="hindi-class-9-10">&nbsp;&nbsp;&nbsp;Hindi</option>
    <option class="level-1" value="french-class-9-10">&nbsp;&nbsp;&nbsp;French</option>
    <option class="level-1" value="english-class-9-10">&nbsp;&nbsp;&nbsp;English</option>
    <option class="level-1" value="all-subjects-class-9-10">&nbsp;&nbsp;&nbsp;All subjects</option>
    <option class="level-0" value="class-6-8">Class 6-8</option>
    <option class="level-1" value="social-science-class-6th-8th">&nbsp;&nbsp;&nbsp;Social science</option>
    <option class="level-1" value="science">&nbsp;&nbsp;&nbsp;Science</option>
    <option class="level-1" value="mathematics">&nbsp;&nbsp;&nbsp;Mathematics</option>
    <option class="level-1" value="hindi-class-6th-8th">&nbsp;&nbsp;&nbsp;Hindi</option>
    <option class="level-1" value="english-class-6th-8th">&nbsp;&nbsp;&nbsp;English</option>
    <option class="level-1" value="computer-class-6th-8th">&nbsp;&nbsp;&nbsp;Computer</option>
    <option class="level-1" value="all-subjects-class-6th-8th">&nbsp;&nbsp;&nbsp;All subjects</option>
    <option class="level-0" value="class-12">Class 12</option>
    <option class="level-1" value="sociology-class-12">&nbsp;&nbsp;&nbsp;Sociology</option>
    <option class="level-1" value="sanskrit-class-12">&nbsp;&nbsp;&nbsp;Sanskrit</option>
    <option class="level-1" value="psychology-class-12">&nbsp;&nbsp;&nbsp;Psychology</option>
    <option class="level-1" value="political-science-class-12">&nbsp;&nbsp;&nbsp;Political Science</option>
    <option class="level-1" value="physics-class-12">&nbsp;&nbsp;&nbsp;Physics</option>
    <option class="level-1" value="physical-education-class-12">&nbsp;&nbsp;&nbsp;Physical Education</option>
    <option class="level-1" value="philosophy-class-12">&nbsp;&nbsp;&nbsp;Philosophy</option>
    <option class="level-1" value="multimedia-and-webtech-class-12">&nbsp;&nbsp;&nbsp;Multimedia and Webtech</option>
    <option class="level-1" value="mathematics-class-12">&nbsp;&nbsp;&nbsp;Mathematics</option>
    <option class="level-1" value="legal-studies-class-12">&nbsp;&nbsp;&nbsp;Legal Studies</option>
    <option class="level-1" value="informatics-practices-class-12">&nbsp;&nbsp;&nbsp;Informatics Practices</option>
    <option class="level-1" value="home-science-class-12">&nbsp;&nbsp;&nbsp;Home Science</option>
    <option class="level-1" value="history-class-12">&nbsp;&nbsp;&nbsp;History</option>
    <option class="level-1" value="hindi-class-12">&nbsp;&nbsp;&nbsp;Hindi</option>
    <option class="level-1" value="geography-class-12">&nbsp;&nbsp;&nbsp;Geography</option>
    <option class="level-1" value="financial-market-management-class-12">&nbsp;&nbsp;&nbsp;Financial Market Management</option>
    <option class="level-1" value="entrepreneurship-class-12">&nbsp;&nbsp;&nbsp;Entrepreneurship</option>
    <option class="level-1" value="english-class-12">&nbsp;&nbsp;&nbsp;English</option>
    <option class="level-1" value="engineering-graphics-class-12">&nbsp;&nbsp;&nbsp;Engineering Graphics</option>
    <option class="level-1" value="economics-class-12">&nbsp;&nbsp;&nbsp;Economics</option>
    <option class="level-1" value="computer-science-class-12">&nbsp;&nbsp;&nbsp;Computer Science</option>
    <option class="level-1" value="chemistry-class-12">&nbsp;&nbsp;&nbsp;Chemistry</option>
    <option class="level-1" value="business-studies-class-12">&nbsp;&nbsp;&nbsp;Business Studies</option>
    <option class="level-1" value="biotechnology-class-12">&nbsp;&nbsp;&nbsp;Biotechnology</option>
    <option class="level-1" value="biology-class-12">&nbsp;&nbsp;&nbsp;Biology</option>
    <option class="level-1" value="accountancy-class-12">&nbsp;&nbsp;&nbsp;Accountancy</option>
    <option class="level-0" value="class-11">Class 11</option>
    <option class="level-1" value="sociology-class-11">&nbsp;&nbsp;&nbsp;Sociology</option>
    <option class="level-1" value="sanskrit-class-11">&nbsp;&nbsp;&nbsp;Sanskrit</option>
    <option class="level-1" value="psychology-class-11">&nbsp;&nbsp;&nbsp;Psychology</option>
    <option class="level-1" value="political-science-class-11">&nbsp;&nbsp;&nbsp;Political Science</option>
    <option class="level-1" value="physics">&nbsp;&nbsp;&nbsp;Physics</option>
    <option class="level-1" value="physical-education">&nbsp;&nbsp;&nbsp;Physical Education</option>
    <option class="level-1" value="philosophy-class-11">&nbsp;&nbsp;&nbsp;Philosophy</option>
    <option class="level-1" value="multimedia-and-webtech">&nbsp;&nbsp;&nbsp;Multimedia and Webtech</option>
    <option class="level-1" value="mathematics-class-11">&nbsp;&nbsp;&nbsp;Mathematics</option>
    <option class="level-1" value="legal-studies">&nbsp;&nbsp;&nbsp;Legal Studies</option>
    <option class="level-1" value="informatics-practices">&nbsp;&nbsp;&nbsp;Informatics Practices</option>
    <option class="level-1" value="home-science-class-11">&nbsp;&nbsp;&nbsp;Home Science</option>
    <option class="level-1" value="history-class-11">&nbsp;&nbsp;&nbsp;History</option>
    <option class="level-1" value="hindi-class-11">&nbsp;&nbsp;&nbsp;Hindi</option>
    <option class="level-1" value="geography-class-11">&nbsp;&nbsp;&nbsp;Geography</option>
    <option class="level-1" value="financial-market-management">&nbsp;&nbsp;&nbsp;Financial Market Management</option>
    <option class="level-1" value="entrepreneurship">&nbsp;&nbsp;&nbsp;Entrepreneurship</option>
    <option class="level-1" value="english-class-11">&nbsp;&nbsp;&nbsp;English</option>
    <option class="level-1" value="engineering-graphics">&nbsp;&nbsp;&nbsp;Engineering Graphics</option>
    <option class="level-1" value="economics-class-11">&nbsp;&nbsp;&nbsp;Economics</option>
    <option class="level-1" value="computer-science">&nbsp;&nbsp;&nbsp;Computer Science</option>
    <option class="level-1" value="chemistry-class-11">&nbsp;&nbsp;&nbsp;Chemistry</option>
    <option class="level-1" value="business-studies">&nbsp;&nbsp;&nbsp;Business Studies</option>
    <option class="level-1" value="biotechnology">&nbsp;&nbsp;&nbsp;Biotechnology</option>
    <option class="level-1" value="biology-class-11">&nbsp;&nbsp;&nbsp;Biology</option>
    <option class="level-1" value="accountancy-class-11">&nbsp;&nbsp;&nbsp;Accountancy</option>
    <option class="level-0" value="class-1-5">Class 1-5</option>
    <option class="level-1" value="social-science">&nbsp;&nbsp;&nbsp;Social science</option>
    <option class="level-1" value="sanskrit">&nbsp;&nbsp;&nbsp;Sanskrit</option>
    <option class="level-1" value="mathematics-class-1-5">&nbsp;&nbsp;&nbsp;Mathematics</option>
    <option class="level-1" value="hindi">&nbsp;&nbsp;&nbsp;Hindi</option>
    <option class="level-1" value="french-class-5">&nbsp;&nbsp;&nbsp;French</option>
    <option class="level-1" value="evs">&nbsp;&nbsp;&nbsp;EVS</option>
    <option class="level-1" value="english">&nbsp;&nbsp;&nbsp;English</option>
    <option class="level-1" value="computer">&nbsp;&nbsp;&nbsp;Computer</option>
    <option class="level-1" value="all-subjects">&nbsp;&nbsp;&nbsp;All Subjects</option>
    <option class="level-0" value="chemistry-biology">chemistry, biology</option>
    <option class="level-1" value="chemistry">&nbsp;&nbsp;&nbsp;Chemistry</option>
    <option class="level-1" value="biology">&nbsp;&nbsp;&nbsp;Biology</option>
</select>
<input type="submit" value="go »"></form>

<br>
<h4 style="margin-top: 48px;">Find Tutor By City</h4>

<div style="background: linear-gradient( to right, #F1531C 0%, #F1531C 24%, #EDEBF0 24%, #EDEBF0 100% ); height: 1px;margin-bottom: 20px;"></div>
<select name="area" id="lct-widget-area" class="postform">
    <option class="level-0" value="mumbai">Mumbai&nbsp;</option>
    <option class="level-0" value="indore">Indore&nbsp;</option>
    <option class="level-1" value="yeshwant-road">&nbsp;&nbsp;&nbsp;Yeshwant Road&nbsp;</option>
    <option class="level-1" value="yashwant-nagar">&nbsp;&nbsp;&nbsp;Yashwant Nagar&nbsp;</option>
    <option class="level-1" value="vishnu-puri">&nbsp;&nbsp;&nbsp;Vishnu Puri&nbsp;</option>
    <option class="level-1" value="vijay-nagar">&nbsp;&nbsp;&nbsp;Vijay Nagar&nbsp;</option>
    <option class="level-1" value="vandana-nagar">&nbsp;&nbsp;&nbsp;Vandana Nagar&nbsp;</option>
    <option class="level-1" value="vallabh-nagar">&nbsp;&nbsp;&nbsp;Vallabh Nagar&nbsp;</option>
    <option class="level-1" value="vaishali-nagar">&nbsp;&nbsp;&nbsp;Vaishali Nagar&nbsp;</option>
    <option class="level-1" value="vaibhav-nagar">&nbsp;&nbsp;&nbsp;Vaibhav Nagar&nbsp;</option>
    <option class="level-1" value="tulsi-nagar-indore">&nbsp;&nbsp;&nbsp;Tulsi Nagar&nbsp;</option>
    <option class="level-1" value="tukoganj">&nbsp;&nbsp;&nbsp;Tukoganj&nbsp;</option>
    <option class="level-1" value="triveni-colony">&nbsp;&nbsp;&nbsp;Triveni Colony&nbsp;</option>
    <option class="level-1" value="tillor-khurd">&nbsp;&nbsp;&nbsp;Tillor Khurd&nbsp;</option>
    <option class="level-1" value="tilak-nagar">&nbsp;&nbsp;&nbsp;Tilak Nagar&nbsp;</option>
    <option class="level-1" value="tehsil">&nbsp;&nbsp;&nbsp;Tehsil&nbsp;</option>
    <option class="level-1" value="sukhliya">&nbsp;&nbsp;&nbsp;Sukhliya&nbsp;</option>
    <option class="level-1" value="sudama-nagar">&nbsp;&nbsp;&nbsp;Sudama Nagar&nbsp;</option>
    <option class="level-1" value="subhash-nagar">&nbsp;&nbsp;&nbsp;Subhash Nagar&nbsp;</option>
    <option class="level-1" value="srinagar">&nbsp;&nbsp;&nbsp;Srinagar&nbsp;</option>
    <option class="level-1" value="south-tukoganj">&nbsp;&nbsp;&nbsp;South Tukoganj&nbsp;</option>
    <option class="level-1" value="siyaganj">&nbsp;&nbsp;&nbsp;Siyaganj&nbsp;</option>
    <option class="level-1" value="sector-23-d">&nbsp;&nbsp;&nbsp;Sector 23-D&nbsp;</option>
    <option class="level-1" value="scheme-number-54">&nbsp;&nbsp;&nbsp;Scheme Number-54&nbsp;</option>
    <option class="level-1" value="sanwer-road">&nbsp;&nbsp;&nbsp;Sanwer Road&nbsp;</option>
    <option class="level-1" value="sangam-nagar">&nbsp;&nbsp;&nbsp;Sangam Nagar&nbsp;</option>
    <option class="level-1" value="saket-nagar">&nbsp;&nbsp;&nbsp;Saket Nagar&nbsp;</option>
    <option class="level-1" value="sahara-city-homes">&nbsp;&nbsp;&nbsp;Sahara City Homes&nbsp;</option>
    <option class="level-1" value="sadar-bazar">&nbsp;&nbsp;&nbsp;Sadar Bazar&nbsp;</option>
    <option class="level-1" value="rss-nagar">&nbsp;&nbsp;&nbsp;RSS Nagar&nbsp;</option>
    <option class="level-1" value="rnt-marg">&nbsp;&nbsp;&nbsp;RNT Marg&nbsp;</option>
    <option class="level-1" value="ring-road">&nbsp;&nbsp;&nbsp;Ring Road&nbsp;</option>
    <option class="level-1" value="regal">&nbsp;&nbsp;&nbsp;Regal&nbsp;</option>
    <option class="level-1" value="ravishankar-shukla-nagar">&nbsp;&nbsp;&nbsp;Ravishankar Shukla Nagar&nbsp;</option>
    <option class="level-1" value="rau">&nbsp;&nbsp;&nbsp;Rau&nbsp;</option>
    <option class="level-1" value="ratlam-kothi">&nbsp;&nbsp;&nbsp;Ratlam Kothi&nbsp;</option>
    <option class="level-1" value="rasoma-circle">&nbsp;&nbsp;&nbsp;Rasoma Circle&nbsp;</option>
    <option class="level-1" value="ranipura">&nbsp;&nbsp;&nbsp;Ranipura&nbsp;</option>
    <option class="level-1" value="rambagh">&nbsp;&nbsp;&nbsp;Rambagh&nbsp;</option>
    <option class="level-1" value="rajwada">&nbsp;&nbsp;&nbsp;Rajwada&nbsp;</option>
    <option class="level-1" value="rajiv-gandhi-square">&nbsp;&nbsp;&nbsp;Rajiv Gandhi Square&nbsp;</option>
    <option class="level-1" value="rajendra-nagar">&nbsp;&nbsp;&nbsp;Rajendra Nagar&nbsp;</option>
    <option class="level-1" value="raj-mohalla">&nbsp;&nbsp;&nbsp;Raj Mohalla&nbsp;</option>
    <option class="level-1" value="radio-colony">&nbsp;&nbsp;&nbsp;Radio Colony&nbsp;</option>
    <option class="level-1" value="race-course-road-indore">&nbsp;&nbsp;&nbsp;Race Course Road&nbsp;</option>
    <option class="level-1" value="pipliyahana">&nbsp;&nbsp;&nbsp;Pipliyahana&nbsp;</option>
    <option class="level-1" value="patnipura">&nbsp;&nbsp;&nbsp;Patnipura&nbsp;</option>
    <option class="level-1" value="patni-pura">&nbsp;&nbsp;&nbsp;Patni Pura&nbsp;</option>
    <option class="level-1" value="palsikar-colony">&nbsp;&nbsp;&nbsp;Palsikar Colony&nbsp;</option>
    <option class="level-1" value="palda">&nbsp;&nbsp;&nbsp;Palda&nbsp;</option>
    <option class="level-1" value="palasia">&nbsp;&nbsp;&nbsp;Palasia&nbsp;</option>
    <option class="level-1" value="omex-city">&nbsp;&nbsp;&nbsp;Omex City&nbsp;</option>
    <option class="level-1" value="nipania">&nbsp;&nbsp;&nbsp;Nipania&nbsp;</option>
    <option class="level-1" value="new-rani-bagh">&nbsp;&nbsp;&nbsp;New Rani Bagh&nbsp;</option>
    <option class="level-1" value="navlakha">&nbsp;&nbsp;&nbsp;Navlakha&nbsp;</option>
    <option class="level-1" value="nandanvan-colony">&nbsp;&nbsp;&nbsp;Nandanvan Colony&nbsp;</option>
    <option class="level-1" value="nanda-nagar">&nbsp;&nbsp;&nbsp;Nanda Nagar&nbsp;</option>
    <option class="level-1" value="nanakheda">&nbsp;&nbsp;&nbsp;Nanakheda&nbsp;</option>
    <option class="level-1" value="musakhedi">&nbsp;&nbsp;&nbsp;Musakhedi&nbsp;</option>
    <option class="level-1" value="murai-mohalla">&nbsp;&nbsp;&nbsp;Murai Mohalla&nbsp;</option>
    <option class="level-1" value="mr-10-road">&nbsp;&nbsp;&nbsp;MR-10 road&nbsp;</option>
    <option class="level-1" value="mhow-naka">&nbsp;&nbsp;&nbsp;Mhow Naka&nbsp;</option>
    <option class="level-1" value="mhow">&nbsp;&nbsp;&nbsp;Mhow&nbsp;</option>
    <option class="level-1" value="mari-mata-square">&nbsp;&nbsp;&nbsp;Mari Mata Square&nbsp;</option>
    <option class="level-1" value="manoramaganj">&nbsp;&nbsp;&nbsp;Manoramaganj&nbsp;</option>
    <option class="level-1" value="manglia">&nbsp;&nbsp;&nbsp;Manglia&nbsp;</option>
    <option class="level-1" value="manbhavan-nagar">&nbsp;&nbsp;&nbsp;Manbhavan Nagar&nbsp;</option>
    <option class="level-1" value="malwa-mill">&nbsp;&nbsp;&nbsp;Malwa Mill&nbsp;</option>
    <option class="level-1" value="malharganj">&nbsp;&nbsp;&nbsp;Malharganj&nbsp;</option>
    <option class="level-1" value="maharani-road">&nbsp;&nbsp;&nbsp;Maharani Road&nbsp;</option>
    <option class="level-1" value="mahalaxmi-nagar">&nbsp;&nbsp;&nbsp;Mahalaxmi Nagar&nbsp;</option>
    <option class="level-1" value="madhumilan">&nbsp;&nbsp;&nbsp;Madhumilan&nbsp;</option>
    <option class="level-1" value="lokmanya-nagar">&nbsp;&nbsp;&nbsp;Lokmanya Nagar&nbsp;</option>
    <option class="level-1" value="limbodi">&nbsp;&nbsp;&nbsp;Limbodi&nbsp;</option>
    <option class="level-1" value="l-i-g-colony">&nbsp;&nbsp;&nbsp;L.I.G. Colony&nbsp;</option>
    <option class="level-1" value="kumar-khadi">&nbsp;&nbsp;&nbsp;Kumar Khadi&nbsp;</option>
    <option class="level-1" value="krishi-mandi">&nbsp;&nbsp;&nbsp;Krishi Mandi&nbsp;</option>
    <option class="level-1" value="khatiwala-road">&nbsp;&nbsp;&nbsp;Khatiwala Tank&nbsp;</option>
    <option class="level-1" value="khatipura">&nbsp;&nbsp;&nbsp;Khatipura&nbsp;</option>
    <option class="level-1" value="khandwa-road">&nbsp;&nbsp;&nbsp;Khandwa Road&nbsp;</option>
    <option class="level-1" value="khajuri-bazar">&nbsp;&nbsp;&nbsp;Khajuri Bazar&nbsp;</option>
    <option class="level-1" value="khajrana">&nbsp;&nbsp;&nbsp;Khajrana&nbsp;</option>
    <option class="level-1" value="kelod-kartal">&nbsp;&nbsp;&nbsp;Kelod Kartal&nbsp;</option>
    <option class="level-1" value="kanchan-bagh">&nbsp;&nbsp;&nbsp;Kanchan Bagh&nbsp;</option>
    <option class="level-1" value="kanadiya">&nbsp;&nbsp;&nbsp;kanadiya&nbsp;</option>
    <option class="level-1" value="kalyani-nagar-indore">&nbsp;&nbsp;&nbsp;Kalyani Nagar&nbsp;</option>
    <option class="level-1" value="javeri-bagh">&nbsp;&nbsp;&nbsp;Javeri Bagh&nbsp;</option>
    <option class="level-1" value="jaora-compound">&nbsp;&nbsp;&nbsp;Jaora Compound&nbsp;</option>
    <option class="level-1" value="jail-road">&nbsp;&nbsp;&nbsp;Jail Road&nbsp;</option>
    <option class="level-1" value="indore-army">&nbsp;&nbsp;&nbsp;Indore Army&nbsp;</option>
    <option class="level-1" value="imli-bazar">&nbsp;&nbsp;&nbsp;Imli Bazar&nbsp;</option>
    <option class="level-1" value="high-court">&nbsp;&nbsp;&nbsp;High Court&nbsp;</option>
    <option class="level-1" value="gwal-toli">&nbsp;&nbsp;&nbsp;Gwal Toli&nbsp;</option>
    <option class="level-1" value="gurunanak-chowk">&nbsp;&nbsp;&nbsp;Gurunanak Chowk&nbsp;</option>
    <option class="level-1" value="gulab-bagh">&nbsp;&nbsp;&nbsp;Gulab Bagh&nbsp;</option>
    <option class="level-1" value="geeta-nagar">&nbsp;&nbsp;&nbsp;Geeta Nagar&nbsp;</option>
    <option class="level-1" value="geeta-bhawan">&nbsp;&nbsp;&nbsp;Geeta Bhawan&nbsp;</option>
    <option class="level-1" value="gandhi-nagar">&nbsp;&nbsp;&nbsp;Gandhi Nagar&nbsp;</option>
    <option class="level-1" value="fc-ganj-edso">&nbsp;&nbsp;&nbsp;FC Ganj EDSO&nbsp;</option>
    <option class="level-1" value="durgi-road">&nbsp;&nbsp;&nbsp;Durgi Road&nbsp;</option>
    <option class="level-1" value="dhar-road">&nbsp;&nbsp;&nbsp;Dhar road&nbsp;</option>
    <option class="level-1" value="deoguradia">&nbsp;&nbsp;&nbsp;deoguradia&nbsp;</option>
    <option class="level-1" value="ddu-nagar">&nbsp;&nbsp;&nbsp;DDU Nagar&nbsp;</option>
    <option class="level-1" value="dawa-bazar">&nbsp;&nbsp;&nbsp;Dawa Bazar&nbsp;</option>
    <option class="level-1" value="collectorate">&nbsp;&nbsp;&nbsp;Collectorate&nbsp;</option>
    <option class="level-1" value="cloth-market">&nbsp;&nbsp;&nbsp;Cloth Market&nbsp;</option>
    <option class="level-1" value="chandra-nagar">&nbsp;&nbsp;&nbsp;Chandra Nagar&nbsp;</option>
    <option class="level-1" value="chandan-nagar">&nbsp;&nbsp;&nbsp;Chandan Nagar&nbsp;</option>
    <option class="level-1" value="cgo-complex">&nbsp;&nbsp;&nbsp;CGO Complex&nbsp;</option>
    <option class="level-1" value="cantt-indore">&nbsp;&nbsp;&nbsp;Cantt Indore&nbsp;</option>
    <option class="level-1" value="by-pass">&nbsp;&nbsp;&nbsp;By Pass&nbsp;</option>
    <option class="level-1" value="bijasanroad">&nbsp;&nbsp;&nbsp;BijasanRoad&nbsp;</option>
    <option class="level-1" value="bijalpur">&nbsp;&nbsp;&nbsp;Bijalpur&nbsp;</option>
    <option class="level-1" value="bicholi-mardana">&nbsp;&nbsp;&nbsp;Bicholi Mardana&nbsp;</option>
    <option class="level-1" value="bhawrasla">&nbsp;&nbsp;&nbsp;Bhawrasla&nbsp;</option>
    <option class="level-1" value="bhagirath-pura">&nbsp;&nbsp;&nbsp;Bhagirath Pura&nbsp;</option>
    <option class="level-1" value="barlai-jagir">&nbsp;&nbsp;&nbsp;Barlai Jagir&nbsp;</option>
    <option class="level-1" value="banganga">&nbsp;&nbsp;&nbsp;Banganga&nbsp;</option>
    <option class="level-1" value="bangali-square">&nbsp;&nbsp;&nbsp;Bangali Square&nbsp;</option>
    <option class="level-1" value="baloda-tkun">&nbsp;&nbsp;&nbsp;Baloda Tkun&nbsp;</option>
    <option class="level-1" value="badwali-chowk">&nbsp;&nbsp;&nbsp;Badwali Chowk&nbsp;</option>
    <option class="level-1" value="badodia-khan">&nbsp;&nbsp;&nbsp;Badodia Khan&nbsp;</option>
    <option class="level-1" value="badia-keema">&nbsp;&nbsp;&nbsp;Badia Keema&nbsp;</option>
    <option class="level-1" value="bada-ganpati">&nbsp;&nbsp;&nbsp;Bada Ganpati&nbsp;</option>
    <option class="level-1" value="azad-nagar">&nbsp;&nbsp;&nbsp;Azad Nagar&nbsp;</option>
    <option class="level-1" value="army-headquarters">&nbsp;&nbsp;&nbsp;Army Headquarters&nbsp;</option>
    <option class="level-1" value="anoop-nagar">&nbsp;&nbsp;&nbsp;Anoop Nagar&nbsp;</option>
    <option class="level-1" value="annapurna-road">&nbsp;&nbsp;&nbsp;Annapurna Road&nbsp;</option>
    <option class="level-1" value="anand-bazar">&nbsp;&nbsp;&nbsp;Anand Bazar&nbsp;</option>
    <option class="level-1" value="agrawal-nagar">&nbsp;&nbsp;&nbsp;Agrawal Nagar&nbsp;</option>
    <option class="level-1" value="aerodrum-road">&nbsp;&nbsp;&nbsp;Aerodrum road&nbsp;</option>
    <option class="level-1" value="a-b-road">&nbsp;&nbsp;&nbsp;A.B.road&nbsp;</option>
    <option class="level-1" value="56-dukaan">&nbsp;&nbsp;&nbsp;56 Dukaan&nbsp;</option>
    <option class="level-0" value="bhopal">Bhopal&nbsp;</option>
</select>
<input type="submit" value="go »"></form>



</div> -->

</div>

<div style="margin-top:100px;"></div>


<!-- Middle content End-->





<!--  footer start-->

<%@ include file = "Footer.jsp"%>