package com.cjava.pc4.test;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.sql.SQLException;
import java.util.List;

import com.cjava.pc4.controller.CostumerController;
import com.cjava.pc4.models.Costumer;

public class Pricipal {    

    public static void main(String[] args) {
        listCostumers();
    }

    public static void listCostumers(){
        Configuration configuration = new Configuration().configure();
        //configuration.addClass(com.cjava.pc4.models.Costumer);
        SessionFactory SessionFactory = configuration.buildSessionFactory();
        CostumerController costumerController = new CostumerController(SessionFactory);

        try{

            List<Costumer> costumers = costumerController.findAll();
            
            costumers.stream().forEach(c -> System.out.println(c.toString()));

        }catch(SQLException er){
            er.printStackTrace();
        }
    }
}
