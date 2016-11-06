package com.springapp.mvc.constant;

import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Created by jiangxu.qiu on 2015/1/29.
 */
public final class AtsConstants {

    public static final String URI_PREFIX = "/ats";
    public static final String URI_RESUME_PREFIX = URI_PREFIX + "/resume/{resumeId}";

    //性别
    private static final Map<Integer, String> GENDER_TYPE_MAP = new LinkedHashMap<Integer, String>();

    static {
        GENDER_TYPE_MAP.put(1, "男");
        GENDER_TYPE_MAP.put(2, "女");
    }

    public static final Map<Integer, String> GENDER_TYPE = Collections.unmodifiableMap(GENDER_TYPE_MAP);

    //婚姻状况
    private static final Map<Integer, String> MARRIED_TYPE_MAP = new LinkedHashMap<Integer, String>();

    static {
        MARRIED_TYPE_MAP.put(1, "未婚");
        MARRIED_TYPE_MAP.put(2, "已婚");
        MARRIED_TYPE_MAP.put(3, "保密");
    }

    public static final Map<Integer, String> MARRIED_TYPE = Collections.unmodifiableMap(MARRIED_TYPE_MAP);

    //证件类型
    private static final Map<Integer, String> DOCUMENTS_TYPE_MAP = new LinkedHashMap<Integer, String>();

    static {
        DOCUMENTS_TYPE_MAP.put(1, "身份证");
        DOCUMENTS_TYPE_MAP.put(2, "护照");
        DOCUMENTS_TYPE_MAP.put(3, "军官证");
        DOCUMENTS_TYPE_MAP.put(6, "其他");
    }

    public static final Map<Integer, String> DOCUMENTS_TYPE = Collections.unmodifiableMap(DOCUMENTS_TYPE_MAP);

    //政治面貌
    private static final Map<Integer, String> POLITICS_STATUS_MAP = new LinkedHashMap<Integer, String>();

    static {
        POLITICS_STATUS_MAP.put(3, "群众");
        POLITICS_STATUS_MAP.put(2, "团员");
        POLITICS_STATUS_MAP.put(1, "中共党员");
        POLITICS_STATUS_MAP.put(4, "民主党派");
        POLITICS_STATUS_MAP.put(6, "其它");
    }

    public static final Map<Integer, String> POLITICS_STATUS = Collections.unmodifiableMap(POLITICS_STATUS_MAP);
    //学历
    private static final Map<Integer, String> ACADEMIC_MAP = new LinkedHashMap<Integer, String>();

    static {
        ACADEMIC_MAP.put(9, "博士后");
        ACADEMIC_MAP.put(10, "博士");
        ACADEMIC_MAP.put(12, "硕士");
        ACADEMIC_MAP.put(13, "本科");
        ACADEMIC_MAP.put(14, "大专");
        ACADEMIC_MAP.put(16, "其他");
    }

    public static final Map<Integer, String> ACADEMIC = Collections.unmodifiableMap(ACADEMIC_MAP);

    //学位
    private static final Map<Integer, String> DEGREE_MAP = new LinkedHashMap<Integer, String>();

    static {
        DEGREE_MAP.put(1, "学士");
        DEGREE_MAP.put(2, "双学士");
        DEGREE_MAP.put(3, "硕士");
        DEGREE_MAP.put(4, "MBA");
        DEGREE_MAP.put(5, "EMBA");
        DEGREE_MAP.put(6, "博士");
        DEGREE_MAP.put(7, "其他");
    }

    public static final Map<Integer, String> DEGREE = Collections.unmodifiableMap(DEGREE_MAP);

    //其他联系方式
    private static final Map<Integer, String> OTHER_CONTACTS_MAP = new LinkedHashMap<Integer, String>();

    static {
        OTHER_CONTACTS_MAP.put(1, "宿舍电话");
        OTHER_CONTACTS_MAP.put(2, "家庭电话");
        OTHER_CONTACTS_MAP.put(3, "MSN");
        OTHER_CONTACTS_MAP.put(4, "QQ");
        OTHER_CONTACTS_MAP.put(5, "百度HI");
        OTHER_CONTACTS_MAP.put(6, "其它");
    }

    public static final Map<Integer, String> OTHER_CONTACTS = Collections.unmodifiableMap(OTHER_CONTACTS_MAP);

    //年级排名
    private static final Map<Integer, String> GRADE_ORDER_MAP = new LinkedHashMap<Integer, String>();

    static {
        GRADE_ORDER_MAP.put(1, "5%");
        GRADE_ORDER_MAP.put(2, "10%");
        GRADE_ORDER_MAP.put(3, "20%");
        GRADE_ORDER_MAP.put(4, "30%");
        GRADE_ORDER_MAP.put(5, "其他");
    }

    public static final Map<Integer, String> GRADE_ORDER = Collections.unmodifiableMap(GRADE_ORDER_MAP);

    //英语等级
    private static final Map<Integer, String> ENG_LEVEL_MAP = new LinkedHashMap<Integer, String>();

    static {
        ENG_LEVEL_MAP.put(5, "未参加");
        ENG_LEVEL_MAP.put(1, "四级");
        ENG_LEVEL_MAP.put(2, "六级");
        ENG_LEVEL_MAP.put(3, "专业四级");
        ENG_LEVEL_MAP.put(4, "专业八级");
    }

    public static final Map<Integer, String> ENG_LEVEL = Collections.unmodifiableMap(ENG_LEVEL_MAP);

    //英语等级
    private static final Map<Integer, String> ENG_LEVEL_2_MAP = new LinkedHashMap<Integer, String>();

    static {
        ENG_LEVEL_2_MAP.put(1, "大学英语四级");
        ENG_LEVEL_2_MAP.put(2, "大学英语六级");
        ENG_LEVEL_2_MAP.put(3, "专业四级");
        ENG_LEVEL_2_MAP.put(4, "专业八级");
        ENG_LEVEL_2_MAP.put(11, "TOEFL");
        ENG_LEVEL_2_MAP.put(12, "GRE");
        ENG_LEVEL_2_MAP.put(13, "GMAT");
        ENG_LEVEL_2_MAP.put(14, "IELTS");
        ENG_LEVEL_2_MAP.put(15, "TOEIC");
    }

    public static final Map<Integer, String> ENG_LEVEL_2 = Collections.unmodifiableMap(ENG_LEVEL_2_MAP);

    //读写能力
    private static final Map<Integer, String> RW_ABILITY_MAP = new LinkedHashMap<Integer, String>();

    static {
        RW_ABILITY_MAP.put(1, "一般");
        RW_ABILITY_MAP.put(2, "良好");
        RW_ABILITY_MAP.put(3, "熟练");
        RW_ABILITY_MAP.put(4, "精通");
    }

    public static final Map<Integer, String> RW_ABILITY = Collections.unmodifiableMap(RW_ABILITY_MAP);

    //听说能力
    private static final Map<Integer, String> LT_ABILITY_MAP = new LinkedHashMap<Integer, String>();

    static {
        LT_ABILITY_MAP.put(1, "一般");
        LT_ABILITY_MAP.put(2, "良好");
        LT_ABILITY_MAP.put(3, "熟练");
        LT_ABILITY_MAP.put(4, "精通");
    }

    public static final Map<Integer, String> LT_ABILITY = Collections.unmodifiableMap(LT_ABILITY_MAP);

    //公司规模
    private static final Map<Integer, String> COMPANY_SCALE_MAP = new LinkedHashMap<Integer, String>();

    static {
        COMPANY_SCALE_MAP.put(10, "1 - 49人");
        COMPANY_SCALE_MAP.put(11, "50 - 99人");
        COMPANY_SCALE_MAP.put(12, "100 - 499人");
        COMPANY_SCALE_MAP.put(13, "500 - 999人");
        COMPANY_SCALE_MAP.put(14, "1000人以上");
    }

    public static final Map<Integer, String> COMPANY_SCALE = Collections.unmodifiableMap(COMPANY_SCALE_MAP);

    //公司性质
    private static final Map<Integer, String> COMPANY_TYPE_MAP = new LinkedHashMap<Integer, String>();

    static {
        COMPANY_TYPE_MAP.put(10, "外资·合资");
        COMPANY_TYPE_MAP.put(11, "私营·股份制企业");
        COMPANY_TYPE_MAP.put(12, "国有企业");
        COMPANY_TYPE_MAP.put(13, "非营利·事业单位");
        COMPANY_TYPE_MAP.put(14, "其他");
    }

    public static final Map<Integer, String> COMPANY_TYPE = Collections.unmodifiableMap(COMPANY_TYPE_MAP);

    //奖学金
    private static final Map<Integer, String> SCHOLARSHIP_MAP = new LinkedHashMap<Integer, String>();

    static {
        SCHOLARSHIP_MAP.put(0, "无");
        SCHOLARSHIP_MAP.put(1, "院系");
        SCHOLARSHIP_MAP.put(2, "学校");
        SCHOLARSHIP_MAP.put(3, "省市级");
        SCHOLARSHIP_MAP.put(4, "国家级");
        SCHOLARSHIP_MAP.put(5, "国际级");
    }

    public static final Map<Integer, String> SCHOLARSHIP = Collections.unmodifiableMap(SCHOLARSHIP_MAP);

    //奖学金级别
    private static final Map<Integer, String> SCHOLARSHIP_LEVEL_MAP = new LinkedHashMap<Integer, String>();

    static {
        SCHOLARSHIP_LEVEL_MAP.put(1, "特等奖");
        SCHOLARSHIP_LEVEL_MAP.put(2, "一等奖");
        SCHOLARSHIP_LEVEL_MAP.put(3, "二等奖");
        SCHOLARSHIP_LEVEL_MAP.put(4, "三等奖");
    }

    public static final Map<Integer, String> SCHOLARSHIP_LEVEL = Collections.unmodifiableMap(SCHOLARSHIP_LEVEL_MAP);

    //申请者类别
    private static final Map<Integer, String> PROPOSER_TYPE_MAP = new LinkedHashMap<Integer, String>();

    static {
        PROPOSER_TYPE_MAP.put(1, "在校学生");
        PROPOSER_TYPE_MAP.put(2, "应届毕业生");
        PROPOSER_TYPE_MAP.put(3, "社会人士");
    }

    public static final Map<Integer, String> PROPOSER_TYPE = Collections.unmodifiableMap(PROPOSER_TYPE_MAP);

    //是否
    private static final Map<Integer, String> YES_OR_NO_MAP = new LinkedHashMap<Integer, String>();

    static {
        YES_OR_NO_MAP.put(1, "是");
        YES_OR_NO_MAP.put(0, "否");
    }

    public static final Map<Integer, String> YES_OR_NO = Collections.unmodifiableMap(YES_OR_NO_MAP);

    //是否人才库
    public static final Map<Integer, String> IN_HR_SOURCE = Collections.unmodifiableMap(YES_OR_NO_MAP);

    //是否接受岗位调配
    public static final Map<Integer, String> IS_CAN_ASSIGN = Collections.unmodifiableMap(YES_OR_NO_MAP);

    //海外学习经历
    public static final Map<Integer, String> IS_OVERSEA_MAP = Collections.unmodifiableMap(YES_OR_NO_MAP);

    //是否有亲友在本公司
    public static final Map<Integer, String> IS_FRIEND_IN = Collections.unmodifiableMap(YES_OR_NO_MAP);

    //期望月薪
    private static final Map<Integer, String> SALARY_MAP = new LinkedHashMap<Integer, String>();

    static {
        SALARY_MAP.put(1, "1500元及以下");
        SALARY_MAP.put(2, "1501-3000元");
        SALARY_MAP.put(3, "3001-5000元");
        SALARY_MAP.put(4, "5001-8000元");
        SALARY_MAP.put(5, "8001-12000元");
        SALARY_MAP.put(6, "12001-18000元");
        SALARY_MAP.put(7, "18001-25000元");
        SALARY_MAP.put(8, "25000元以上");
    }

    public static final Map<Integer, String> SALARY = Collections.unmodifiableMap(SALARY_MAP);

    //外语语种
    private static final Map<Integer, String> LANG_TYPE_MAP = new LinkedHashMap<Integer, String>();

    static {
        LANG_TYPE_MAP.put(1, "日语");
        LANG_TYPE_MAP.put(2, "法语");
        LANG_TYPE_MAP.put(3, "德语");
        LANG_TYPE_MAP.put(4, "俄语");
        LANG_TYPE_MAP.put(5, "韩语");
    }

    public static final Map<Integer, String> LANG_TYPE = Collections.unmodifiableMap(LANG_TYPE_MAP);
    //日语证书
    private static final Map<Integer, String> JAPANESE_CERTIFICATE_MAP = new LinkedHashMap<Integer, String>();

    static {
        JAPANESE_CERTIFICATE_MAP.put(1, "日语一级");
        JAPANESE_CERTIFICATE_MAP.put(2, "日语二级");
        JAPANESE_CERTIFICATE_MAP.put(3, "日语三级");
        JAPANESE_CERTIFICATE_MAP.put(4, "日语四级");
    }

    public static final Map<Integer, String> JAPANESE_CERTIFICATE = Collections.unmodifiableMap(JAPANESE_CERTIFICATE_MAP);

    //法语证书
    private static final Map<Integer, String> FRANCE_CERTIFICATE_MAP = new LinkedHashMap<Integer, String>();

    static {
        FRANCE_CERTIFICATE_MAP.put(10, "TEF");
        FRANCE_CERTIFICATE_MAP.put(11, "TCF");
    }

    public static final Map<Integer, String> FRANCE_CERTIFICATE = Collections.unmodifiableMap(FRANCE_CERTIFICATE_MAP);

    //德语证书
    private static final Map<Integer, String> GERMAN_CERTIFICATE_MAP = new LinkedHashMap<Integer, String>();

    static {
        GERMAN_CERTIFICATE_MAP.put(20, "大学德语四级");
        GERMAN_CERTIFICATE_MAP.put(21, "大学德语六级");
        GERMAN_CERTIFICATE_MAP.put(22, "德语专业四级");
        GERMAN_CERTIFICATE_MAP.put(23, "德语专业八级");
    }

    public static final Map<Integer, String> GERMAN_CERTIFICATE = Collections.unmodifiableMap(GERMAN_CERTIFICATE_MAP);

    //俄语证书
    private static final Map<Integer, String> RUSSIA_CERTIFICATE_MAP = new LinkedHashMap<Integer, String>();

    static {
        RUSSIA_CERTIFICATE_MAP.put(30, "大学俄语四级");
        RUSSIA_CERTIFICATE_MAP.put(31, "大学俄语六级");
        RUSSIA_CERTIFICATE_MAP.put(32, "俄语专业四级");
        RUSSIA_CERTIFICATE_MAP.put(33, "俄语专业八级");
    }

    public static final Map<Integer, String> RUSSIA_CERTIFICATE = Collections.unmodifiableMap(RUSSIA_CERTIFICATE_MAP);

    //韩语证书
    private static final Map<Integer, String> KOREA_CERTIFICATE_MAP = new LinkedHashMap<Integer, String>();

    static {
        KOREA_CERTIFICATE_MAP.put(40, "TOPIK-初级");
        KOREA_CERTIFICATE_MAP.put(41, "TOPIK-中级");
        KOREA_CERTIFICATE_MAP.put(42, "TOPIK-高级");
    }

    public static final Map<Integer, String> KOREA_CERTIFICATE = Collections.unmodifiableMap(KOREA_CERTIFICATE_MAP);
    /**
     * 所有证书类型 hwz用
     */
    private static final Map<Integer, String> ALL_CERTIFICATE_MAP = new LinkedHashMap<Integer, String>();

    static {
        ALL_CERTIFICATE_MAP.putAll(JAPANESE_CERTIFICATE_MAP);
        ALL_CERTIFICATE_MAP.putAll(FRANCE_CERTIFICATE_MAP);
        ALL_CERTIFICATE_MAP.putAll(GERMAN_CERTIFICATE_MAP);
        ALL_CERTIFICATE_MAP.putAll(RUSSIA_CERTIFICATE_MAP);
        ALL_CERTIFICATE_MAP.putAll(KOREA_CERTIFICATE_MAP);
    }

    public static final Map<Integer, String> ALL_CERTIFICATE = Collections.unmodifiableMap(ALL_CERTIFICATE_MAP);
    //语种和证书关联关系
    private static final Map<Integer, Map<Integer, String>> LINKAGE_LANG_MAP = new HashMap<Integer, Map<Integer, String>>();

    static {
        LINKAGE_LANG_MAP.put(1, JAPANESE_CERTIFICATE_MAP);
        LINKAGE_LANG_MAP.put(2, FRANCE_CERTIFICATE_MAP);
        LINKAGE_LANG_MAP.put(3, GERMAN_CERTIFICATE_MAP);
        LINKAGE_LANG_MAP.put(4, RUSSIA_CERTIFICATE_MAP);
        LINKAGE_LANG_MAP.put(5, KOREA_CERTIFICATE_MAP);
    }

    public static final Map<Integer, Map<Integer, String>> LINKAGE_LANG = Collections.unmodifiableMap(LINKAGE_LANG_MAP);

    //民族
    private static final Map<Integer, String> NATION_MAP = new LinkedHashMap<Integer, String>();

    static {
        NATION_MAP.put(1, "汉族");
        NATION_MAP.put(2, "壮族");
        NATION_MAP.put(3, "满族");
        NATION_MAP.put(4, "回族");
        NATION_MAP.put(5, "苗族");
        NATION_MAP.put(6, "维吾尔族");
        NATION_MAP.put(7, "土家族");
        NATION_MAP.put(8, "彝族");
        NATION_MAP.put(9, "蒙古族");
        NATION_MAP.put(10, "藏族");
        NATION_MAP.put(11, "布依族");
        NATION_MAP.put(12, "侗族");
        NATION_MAP.put(13, "瑶族");
        NATION_MAP.put(14, "朝鲜族");
        NATION_MAP.put(15, "白族");
        NATION_MAP.put(16, "哈尼族");
        NATION_MAP.put(17, "哈萨克族");
        NATION_MAP.put(18, "黎族");
        NATION_MAP.put(19, "傣族");
        NATION_MAP.put(20, "畲族");
        NATION_MAP.put(21, "傈僳族");
        NATION_MAP.put(22, "仡佬族");
        NATION_MAP.put(23, "东乡族");
        NATION_MAP.put(24, "拉祜族");
        NATION_MAP.put(25, "水族");
        NATION_MAP.put(26, "佤族");
        NATION_MAP.put(27, "纳西族");
        NATION_MAP.put(28, "羌族");
        NATION_MAP.put(29, "土族");
        NATION_MAP.put(30, "仫佬族");
        NATION_MAP.put(31, "锡伯族");
        NATION_MAP.put(32, "柯尔克孜族");
        NATION_MAP.put(33, "达斡尔族");
        NATION_MAP.put(34, "景颇族");
        NATION_MAP.put(35, "毛南族");
        NATION_MAP.put(36, "撒拉族");
        NATION_MAP.put(37, "布朗族");
        NATION_MAP.put(38, "塔吉克族");
        NATION_MAP.put(39, "阿昌族");
        NATION_MAP.put(40, "普米族");
        NATION_MAP.put(41, "鄂温克族");
        NATION_MAP.put(42, "怒族");
        NATION_MAP.put(43, "京族");
        NATION_MAP.put(44, "基诺族");
        NATION_MAP.put(45, "德昂族");
        NATION_MAP.put(46, "保安族");
        NATION_MAP.put(47, "俄罗斯族");
        NATION_MAP.put(48, "裕固族");
        NATION_MAP.put(49, "乌孜别克族");
        NATION_MAP.put(50, "门巴族");
        NATION_MAP.put(51, "鄂伦春族");
        NATION_MAP.put(52, "独龙族");
        NATION_MAP.put(53, "塔塔尔族");
        NATION_MAP.put(54, "赫哲族");
        NATION_MAP.put(55, "高山族");
        NATION_MAP.put(56, "珞巴族");
    }

    public static final Map<Integer, String> NATION = Collections.unmodifiableMap(NATION_MAP);

    //担任班级、学生会干部
    private static final Map<Integer, String> IS_STU_LEADER_MAP = new LinkedHashMap<Integer, String>();

    static {
        IS_STU_LEADER_MAP.put(1, "未担任");
        IS_STU_LEADER_MAP.put(2, "学生会主席");
        IS_STU_LEADER_MAP.put(3, "学生会部长");
        IS_STU_LEADER_MAP.put(4, "社团主席");
        IS_STU_LEADER_MAP.put(5, "校竞赛获奖者");
        IS_STU_LEADER_MAP.put(6, "学生会干事");
        IS_STU_LEADER_MAP.put(7, "班长团支书");
        IS_STU_LEADER_MAP.put(8, "班干部");
        IS_STU_LEADER_MAP.put(9, "其他职务");
    }

    public static final Map<Integer, String> IS_STU_LEADER = Collections.unmodifiableMap(IS_STU_LEADER_MAP);

    //筛选状态
    private static final Map<Integer, String> STATUS_MAP = new LinkedHashMap<Integer, String>();

    static {
        STATUS_MAP.put(0, "未筛选");
        STATUS_MAP.put(1, "筛选通过");
        STATUS_MAP.put(2, "筛选不通过（未发信）");
        STATUS_MAP.put(3, "筛选不通过（已发信）");
        STATUS_MAP.put(31, "筛选待定");
        STATUS_MAP.put(4, "无笔试记录");
        STATUS_MAP.put(5, "已安排笔试（未发信）");
        STATUS_MAP.put(6, "已发笔试通知（未确认）");
        STATUS_MAP.put(7, "已发笔试通知（已确认）");
        STATUS_MAP.put(8, "已发笔试通知（调整）");
        STATUS_MAP.put(9, "已发笔试通知（放弃）");
        STATUS_MAP.put(10, "笔试不通过（未发信）");
        STATUS_MAP.put(11, "笔试不通过（已发信）");
        STATUS_MAP.put(12, "笔试通过");
        STATUS_MAP.put(32, "笔试待定");
        STATUS_MAP.put(13, "无面试记录");
        STATUS_MAP.put(14, "已安排面试（未发信）");
        STATUS_MAP.put(15, "已发面试通知（未确认）");
        STATUS_MAP.put(16, "已发面试通知（已确认）");
        STATUS_MAP.put(17, "已发面试通知（调整）");
        STATUS_MAP.put(18, "已发面试通知（放弃）");
        STATUS_MAP.put(19, "面试不通过（未发信）");
        STATUS_MAP.put(20, "面试不通过（已发信）");
        STATUS_MAP.put(21, "面试通过");
        STATUS_MAP.put(33, "面试待定");
        STATUS_MAP.put(22, "未发Offer");
        STATUS_MAP.put(23, "已发Offer");
        STATUS_MAP.put(24, "已拒Offer");
        STATUS_MAP.put(34, "录用待定");
    }

    public static final Map<Integer, String> STATUS = Collections.unmodifiableMap(STATUS_MAP);

    //筛选状态
    private static final Map<Integer, String> APPLY_STATUS_MAP = new LinkedHashMap<Integer, String>();

    static {
        APPLY_STATUS_MAP.put(0, "HR筛选中");
        APPLY_STATUS_MAP.put(1, "筛选通过");
        APPLY_STATUS_MAP.put(2, "HR筛选中");
        APPLY_STATUS_MAP.put(3, "筛选不通过");
        APPLY_STATUS_MAP.put(31, "筛选结果待定");
        APPLY_STATUS_MAP.put(4, "等待笔试通知");
        APPLY_STATUS_MAP.put(5, "等待笔试通知");
        APPLY_STATUS_MAP.put(6, "回复笔试通知");
        APPLY_STATUS_MAP.put(7, "受邀参加笔试");
        APPLY_STATUS_MAP.put(8, "受邀参加笔试");
        APPLY_STATUS_MAP.put(9, "放弃参加笔试");
        APPLY_STATUS_MAP.put(10, "笔试结果待定");
        APPLY_STATUS_MAP.put(11, "笔试不通过");
        APPLY_STATUS_MAP.put(12, "笔试通过");
        APPLY_STATUS_MAP.put(32, "笔试结果待定");
        APPLY_STATUS_MAP.put(13, "等待面试通知");
        APPLY_STATUS_MAP.put(14, "等待面试通知");
        APPLY_STATUS_MAP.put(15, "回复面试通知");
        APPLY_STATUS_MAP.put(16, "受邀参加面试");
        APPLY_STATUS_MAP.put(17, "受邀参加面试");
        APPLY_STATUS_MAP.put(18, "放弃参加面试");
        APPLY_STATUS_MAP.put(19, "面试结果待定");
        APPLY_STATUS_MAP.put(20, "面试不通过");
        APPLY_STATUS_MAP.put(21, "面试通过");
        APPLY_STATUS_MAP.put(33, "面试结果待定");
        APPLY_STATUS_MAP.put(22, "等待Offer");
        APPLY_STATUS_MAP.put(23, "接受Offer");
        APPLY_STATUS_MAP.put(24, "拒接Offer");
        APPLY_STATUS_MAP.put(34, "等待Offer");
    }

    public static final Map<Integer, String> APPLY_STATUS = Collections.unmodifiableMap(APPLY_STATUS_MAP);

    //简历预览时筛选状态显示颜色
    private static final Map<Integer, String> STATUS_COLOR_MAP = new LinkedHashMap<Integer, String>();

    static {
        STATUS_COLOR_MAP.put(0, "black");
        STATUS_COLOR_MAP.put(1, "green");
        STATUS_COLOR_MAP.put(2, "red");
        STATUS_COLOR_MAP.put(3, "red");
        STATUS_COLOR_MAP.put(4, "black");
        STATUS_COLOR_MAP.put(5, "blue");
        STATUS_COLOR_MAP.put(6, "blue");
        STATUS_COLOR_MAP.put(7, "blue");
        STATUS_COLOR_MAP.put(8, "blue");
        STATUS_COLOR_MAP.put(9, "gray");
        STATUS_COLOR_MAP.put(10, "red");
        STATUS_COLOR_MAP.put(11, "red");
        STATUS_COLOR_MAP.put(12, "green");
        STATUS_COLOR_MAP.put(13, "black");
        STATUS_COLOR_MAP.put(14, "blue");
        STATUS_COLOR_MAP.put(15, "blue");
        STATUS_COLOR_MAP.put(16, "blue");
        STATUS_COLOR_MAP.put(17, "blue");
        STATUS_COLOR_MAP.put(18, "gray");
        STATUS_COLOR_MAP.put(19, "red");
        STATUS_COLOR_MAP.put(20, "red");
        STATUS_COLOR_MAP.put(21, "green");
        STATUS_COLOR_MAP.put(22, "black");
        STATUS_COLOR_MAP.put(23, "blue");
        STATUS_COLOR_MAP.put(24, "green");
        STATUS_COLOR_MAP.put(31, "black");
        STATUS_COLOR_MAP.put(32, "black");
        STATUS_COLOR_MAP.put(33, "black");
        STATUS_COLOR_MAP.put(34, "black");
    }

    public static final Map<Integer, String> STATUS_COLOR = Collections.unmodifiableMap(STATUS_COLOR_MAP);

    // 学校级别
    private static final Map<Integer, String> COLLEGE_LEVEL_MAP = new LinkedHashMap<Integer, String>();

    static {
        COLLEGE_LEVEL_MAP.put(1, "211");
        COLLEGE_LEVEL_MAP.put(2, "985");
        COLLEGE_LEVEL_MAP.put(3, "一本");
        COLLEGE_LEVEL_MAP.put(4, "二本");
    }

    public static final Map<Integer, String> COLLEGE_LEVEL = Collections.unmodifiableMap(COLLEGE_LEVEL_MAP);

    // 学校级别
    private static final Map<Integer, String> COLLEGE_SCORE_TYPE_MAP = new LinkedHashMap<Integer, String>();

    static {
        COLLEGE_SCORE_TYPE_MAP.put(1, "重点院校");
        COLLEGE_SCORE_TYPE_MAP.put(2, "目标院校");
    }

    public static final Map<Integer, String> COLLEGE_SCORE_TYPE = Collections.unmodifiableMap(COLLEGE_SCORE_TYPE_MAP);
}
