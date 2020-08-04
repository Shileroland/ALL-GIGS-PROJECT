package com.tm30.allgigsproject;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class AllgigsprojectApplication implements CommandLineRunner {

	
	private static Logger LOG = LoggerFactory.getLogger(AllgigsprojectApplication.class);

	
	public static void main(String[] args) {
		 LOG.info("STARTING THE APPLICATION.......");
		SpringApplication.run(AllgigsprojectApplication.class, args);
		 LOG.info("AAPLICATION HAS FINISHED RUNNING.......");
	}
	
	 @Override
	    public void run(String... args) {
	        LOG.info("EXECUTING : command line runner");
	  
	        for (int i = 0; i < 5;i++) {
	           LOG.info("Roland is Running this");
	        }
	        
	
	    }
	
	
		 
		
		  
		   

}
