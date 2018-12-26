package com.tomsung.agdc.config.schedule;

import com.tomsung.agdc.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class ScheduledTasks {

    private static final Logger logger = LoggerFactory.getLogger(ScheduledTasks.class);

    private IUserService userService;


    @Autowired
    public ScheduledTasks(IUserService userService) {
        this.userService = userService;
    }

    // cron接受cron表达式，根据cron表达式确定定时规则
    @Scheduled(cron = "0 0 0 * * ? ")   //每天0点执行
    private void updateLonAndLat() {
        logger.info("更新经纬度信息");
        userService.updateLongtitude();
    }

}
