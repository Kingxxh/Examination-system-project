package com.Kingxxh.serviceImpl;

import com.Kingxxh.dao.QuestionDao;
import com.Kingxxh.pojo.Question;
import com.Kingxxh.service.IQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service("oneService")
public class OneService implements IQuestionService {

    @Autowired
    private QuestionDao questionDao;


    public int insert(Question question) {
        return questionDao.insert(question);
    }

    public int update(Question question) {
        return questionDao.update(question);
    }

    public int delete(int deptNo) {
        return questionDao.delete(deptNo);
    }

    public List find() {
        return questionDao.find();
    }

    public Question info(int id) {
        return questionDao.info(id);
    }

    public List rand() {
        return questionDao.rand();
    }

    public int score(HttpServletRequest request) {
        int score = 0;
        //1.得到用户参与的题目信息
        HttpSession session = request.getSession(false);
        List<Question> questions = (List)session.getAttribute("list");
        //2.得到用户给出答案
        for(Question q:questions){
            int id =  q.getId();
            String answer= q.getAnswer();
            String userAnswer = request.getParameter(id+"");
            if(answer.equals(userAnswer)){
                score+=25;
            }
        }
        return score;    }

    public int check(String title) {
        return questionDao.check(title);
    }
}
