package com.Kingxxh.control;

import com.mysql.cj.xdevapi.JsonArray;
import com.mysql.cj.xdevapi.JsonValue;

import java.sql.Timestamp;

public class Job {
    private long ID;
    private String jobName;
    private String studentID;
    private Timestamp timestamp; // time 2023-7-31-21:45:34
    private String resume;
    private JsonArray jsonArray;
    private JsonValue jsonValue;


    public Job(){

    }

    public void setJobName(String name, String category){
        this.jobName = category + name;
    }

    public void setResume (String resume){
        this.resume = resume;
    }


}
