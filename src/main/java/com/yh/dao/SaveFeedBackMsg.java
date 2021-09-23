package com.yh.dao;

import com.yh.domain.FeedBackMassage;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository//代表这是一个持久层
@Mapper
public interface SaveFeedBackMsg {
    public void saveFeedBackMsg(FeedBackMassage feedBackMassage);
}
