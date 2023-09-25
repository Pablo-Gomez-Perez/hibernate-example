package com.cjava.pc4.test;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.sql.SQLException;
import java.util.List;

import com.cjava.pc4.controller.CostumerController;
import com.cjava.pc4.models.Costumer;

public class Pricipal {    

    public static void main(String[] args) {
        //listCostumers();
    	createCostumer();
    }

    public static void listCostumers(){
        //Configuration configuration = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(com.cjava.pc4.models.Costumer.class);
        //configuration.addClass(com.cjava.pc4.models.Costumer);
        
        CostumerController costumerController = new CostumerController();

        try{

            List<Costumer> costumers = costumerController.findAll();
            
            //costumers.stream().forEach(c -> System.out.println(c.toString()));
            
            for(var cr: costumers) {
            	System.out.println(cr);
            }

        }catch(SQLException er){
            er.printStackTrace();
        }
    }
    
    public static void createCostumer() {    	
    	
    	CostumerController costumerController = new CostumerController();
    	
    	var costumer = new Costumer();
    	costumer.setCode("23649187");
    	costumer.setName("Pablo Gomez 2");
    	costumer.setState("Chiapas");
    	costumer.setCity("Tuxtla");
    	costumer.setPhone("9871237465");
    	costumer.setEmail("emailfake@fakemail.com");
    	
    	try {
    		
    		costumerController.insertElement(costumer);
    		
    	}catch(SQLException er) {
    		er.printStackTrace();
    	}
    }
}
