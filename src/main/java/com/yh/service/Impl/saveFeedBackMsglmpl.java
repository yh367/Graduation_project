package com.yh.service.Impl;

import com.yh.dao.SaveFeedBackMsg;
import com.yh.domain.FeedBackMassage;
import com.yh.service.saveFeedBackMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("saveFeedBackMsg")
public class saveFeedBackMsglmpl implements saveFeedBackMsg {

    @Autowired
    private SaveFeedBackMsg saveFeedBackMsg;

    @Override
    public void save(FeedBackMassage feedBackMassage){
    saveFeedBackMsg.saveFeedBackMsg(feedBackMassage);
    }
}
