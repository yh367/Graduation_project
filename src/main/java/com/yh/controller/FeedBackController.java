package com.yh.controller;


import com.yh.domain.FeedBackMassage;
import com.yh.service.saveFeedBackMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FeedBackController {

    @Autowired
    private saveFeedBackMsg saveFeedBackMsg;

    @RequestMapping("/feedback")
    public String saveAccount(FeedBackMassage feedBackMassage){

        saveFeedBackMsg.save(feedBackMassage);
        return "HTML/success";
    }
}
