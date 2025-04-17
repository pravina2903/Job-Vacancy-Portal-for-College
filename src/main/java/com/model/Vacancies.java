package com.model;

import org.springframework.boot.autoconfigure.domain.EntityScan;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Vacancies {
	
         @Id
         @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    private String fullname;
	    private String emailaddress;
	    private String phonenumber;
	    private String positionappliedfor;
	    private String qualification;
	    private String uploadresume;

	    // Constructors
	    public Vacancies() {
	    }

	    public Vacancies(String fullname, String emailaddress, String phonenumber,
	                     String positionappliedfor, String qualification, String uploadresume) {
	        this.fullname = fullname;
	        this.emailaddress = emailaddress;
	        this.phonenumber = phonenumber;
	        this.positionappliedfor = positionappliedfor;
	        this.qualification = qualification;
	        this.uploadresume = uploadresume;
	    }

	    // Getters and Setters
	    public Long getId() {
	        return id;
	    }

	    public void setId(Long id) {
	        this.id = id;
	    }

	    public String getFullname() {
	        return fullname;
	    }

	    public void setFullname(String fullname) {
	        this.fullname = fullname;
	    }

	    public String getEmailaddress() {
	        return emailaddress;
	    }

	    public void setEmailaddress(String emailaddress) {
	        this.emailaddress = emailaddress;
	    }

	    public String getPhonenumber() {
	        return phonenumber;
	    }

	    public void setPhonenumber(String phonenumber) {
	        this.phonenumber = phonenumber;
	    }

	    public String getPositionappliedfor() {
	        return positionappliedfor;
	    }

	    public void setPositionappliedfor(String positionappliedfor) {
	        this.positionappliedfor = positionappliedfor;
	    }

	    public String getQualification() {
	        return qualification;
	    }

	    public void setQualification(String qualification) {
	        this.qualification = qualification;
	    }

	    public String getUploadresume() {
	        return uploadresume;
	    }

	    public void setUploadresume(String uploadresume) {
	        this.uploadresume = uploadresume;
	    }

}
