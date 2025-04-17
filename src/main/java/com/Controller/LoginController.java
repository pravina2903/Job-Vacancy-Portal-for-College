package com.Controller;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.model.Contactdata;
import com.model.Vacancies;

import ch.qos.logback.core.model.Model;

//import com.mysql.cj.xdevapi.SessionFactory;

import java.io.File;
import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class LoginController {
	
	 @Autowired
	    SessionFactory sf;

	   

	 @RequestMapping("vacanciespage")
	    public String createAccount() {
	        return "vacancies";
	    }

	    @PostMapping("submitVacancy")
	    public String submitVacancy(
	            @RequestParam("full-name") String fullname,
	            @RequestParam("email") String emailaddress,
	            @RequestParam("phone") String phonenumber,
	            @RequestParam("position") String positionappliedfor,
	            @RequestParam("qualification") String qualification,
	            @RequestParam("resume") MultipartFile resumeFile,
	            Model model) {

	        // Resume file saving path
	        String uploadDir = "C:/resume_uploads/";
	        File directory = new File(uploadDir);
	        if (!directory.exists()) {
	            directory.mkdirs();
	        }

	        // Save resume
	        String fileName = resumeFile.getOriginalFilename();
	        String filePath = uploadDir + fileName;

	        try {
	            resumeFile.transferTo(new File(filePath));
	        } catch (IOException e) {
	          //  model.addAttribute("msg", "Failed to upload resume.");
	            return "vacancies";
	        }

	        // Save data in database
	        Vacancies vac = new Vacancies(
	                fullname,
	                emailaddress,
	                phonenumber,
	                positionappliedfor,
	                qualification,
	                fileName
	        );

	        Session s = sf.openSession();
	        Transaction t = s.beginTransaction();
	        s.save(vac);
	        t.commit();
	        s.close();

	       // model.addAttribute("msg", "Application submitted successfully!");
	        return "vacancies";
	    }

	    @RequestMapping("aboutpage")
	    public String about() {
	        return "about";
	    }

	    @RequestMapping("home")
	    public String home() {
	        return "home";
	    }

	    
	 
	    @RequestMapping("contactpage")
		public String contact() {
			return "contact";
			}
		     
		@PostMapping("contactdata")
		public String contactdata(Contactdata contact) {
			Session s = sf.openSession();
			
			Contactdata dlogin = s.get(Contactdata.class, contact.getPhonenumber());
			
			String page = "contact";
			String msg = null;
			
			if (dlogin != null) {
				if (contact.getEmail().equals(dlogin.getEmail())) {
					msg = "Already register this Email and Mobile";
				}
			
			}else {
				Transaction t = s.beginTransaction();
				s.save(contact);
				t.commit();
			}
			return "contact";
		}

	   

}
