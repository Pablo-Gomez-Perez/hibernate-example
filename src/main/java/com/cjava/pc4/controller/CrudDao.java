package com.cjava.pc4.controller;

import java.sql.SQLException;
import java.util.List;

public interface CrudDao<T> {
    
    public List<T> findAll() throws SQLException;
    public T findById(int id) throws SQLException;
    public void updateElement(T elemnt) throws SQLException;
    public void deleteElement(int id) throws SQLException;
}
