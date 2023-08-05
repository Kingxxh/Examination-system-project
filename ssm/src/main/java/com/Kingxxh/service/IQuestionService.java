package com.Kingxxh.service;

import com.Kingxxh.pojo.Question;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface IQuestionService {
    public int insert(Question question);
    public int update(Question question);
    public int delete(int deptNo);
    public List find();
    public Question info(int id);
    public List rand();
    public int score(HttpServletRequest request);
    public int check(String title);
}
