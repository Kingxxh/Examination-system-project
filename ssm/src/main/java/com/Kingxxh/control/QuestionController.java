package com.Kingxxh.control;

import com.Kingxxh.pojo.Question;
import com.Kingxxh.service.IQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping(value="/question")
public class QuestionController {
    @Autowired
    private IQuestionService service;

    @RequestMapping(value = "/insert.do")
    public String insert(Question q) throws Exception{
        service.insert(q);
        return "forward:/question/find.do";
    }

    @RequestMapping(value = "/find.do")
    public ModelAndView find(){
        List questionList = service.find();
        ModelAndView mv = new ModelAndView();
        mv.addObject("key",questionList);
        mv.setViewName("show"); // /jsp/show.jsp
        return mv;
    }

    @RequestMapping(value="/info.do")
    public ModelAndView info(int id){
        Question question =  service.info(id);
        ModelAndView mv = new ModelAndView();
        mv.addObject("key",question);
        mv.setViewName("/update");
        return mv;
    }

    @RequestMapping(value="/update.do")
    public String  update(Question q){
        service.update(q);
        return "forward:/question/find.do";
    }

    @RequestMapping(value="/delete.do")
    public String delete(int id){
        service.delete(id);
        return "forward:/question/find.do";
    }

    @RequestMapping(value="/rand.do")
    public String rand(HttpSession session){
        List questionList = service.rand();
        session.setAttribute("list",questionList);
        return "exam"; // /jsp/exam.jsp
    }



    @RequestMapping(value="/score.do")
    public void score(HttpServletRequest request, HttpServletResponse response)throws Exception{
        int score = service.score(request);
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print("<center><font style='color:red;font-size:30px'>本次考试成绩:"+score+"</font></center>");
        out.flush();
        out.close();
    }

    @RequestMapping("/check.do")
    public void  check(String title ,HttpServletResponse rs)throws Exception
    {

        int num = service.check(title);
        PrintWriter out =rs.getWriter();
        out.print(num);

    }

}
