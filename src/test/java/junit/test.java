package junit;

import com.springapp.mvc.controller.SubjectController;
import com.springapp.mvc.helper.ResourceBeanUtil;
import com.springapp.mvc.mapper.TbCoachMapper;
import com.springapp.mvc.mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "file:src/main/webapp/WEB-INF/applicationContext.xml"}
)

public class test {

    @Autowired
    UserMapper userdao;
    @Autowired
    TbCoachMapper coachMapper;

    @Test
    public void test11() {
        System.out.println("UserMapper select is " + userdao.selectByPrimaryKey(2l));
        System.out.println("TbCoachMapper select is " + coachMapper.selectByPrimaryKey(1));
//        System.out.println("subjectController is "+ ResourceBeanUtil.readJsonFile("/home/ruiqizhang/resources/subject_four.json"));
        return;
    }


}
