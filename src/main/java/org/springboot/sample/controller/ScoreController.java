package org.springboot.sample.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springboot.sample.dao.IScoreDao;
import org.springboot.sample.entity.Score;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/score")
public class ScoreController {

    private static final Logger logger = LoggerFactory.getLogger(ScoreController.class);

    @Autowired
    private IScoreDao scoreService;

    @RequestMapping("/scoreList")
    public List<Score> getScoreList(){
    	Score score = new Score();
    	score.setScore(2);
    	score.setStuId(1001);
    	score.setSubjectName("语文");
    	score.setExamTime(new Date());
    	scoreService.save(score);
    	
    	score = new Score();
    	score.setScore(22);
    	score.setStuId(10011);
    	score.setSubjectName("语文11");
    	score.setExamTime(new Date());
    	scoreService.save(score);
    	
        logger.info("从数据库读取Score集合");
        // 测试更新数据库
        logger.info("更新的行数：" + scoreService.updateScoreById(88.8f, 1));
        scoreService.delete(score.getId());

        return scoreService.getList();
    }
}
