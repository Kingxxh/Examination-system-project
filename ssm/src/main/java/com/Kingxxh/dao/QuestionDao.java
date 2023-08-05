package com.Kingxxh.dao;

import com.Kingxxh.pojo.Question;

import java.util.List;

public interface QuestionDao {
    public int insert(Question question);
    public int update(Question question);
    public int delete(int deptNo);
    public List find();
    public Question info(int id);
    public List rand();
    public int  check(String title);
}
