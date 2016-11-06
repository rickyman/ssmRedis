<#include "free-template.ftl"/>
<@page prev="/ats/resume/${resume.id}?corpId=${(resume.corpId)!}" title=" ${bigItem.showName} ${msg}" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/form-common.css",
"/up/dj-mobile/m-dajie/js/online-apply/form-common.js",
"/up/dj-mobile/m-dajie/js/online-apply/form-school-job.js",
"/up/dj-mobile/m-dajie/js/online-apply/page-edit.js"]>
<div class="p-oa-form-wrap">
    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
                <input type="hidden" name="avatar">
                <ul class="i-form-list">
                    <#list itemList as item>
                        <#if item.fieldName == "IS_STU_LEADER" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="isStuLeader" item=item type="select" dataMap=AtsConstants.IS_STU_LEADER></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "DUTIES" && item.isShow()>
                            <li class="jobName" style="display:none;">
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="jobName" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "SCHOOL_ACTIVITY" && item.isShow()>
                            <li>
                                <section class="form-item-box">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="bottom-ta">
                                <textarea name="schoolWork" placeholder="${item.remark!'请输入'}"
                                          >
                                </textarea>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "OTHER_REWARD" && item.isShow()>
                            <li>
                                <section class="form-item-box">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="bottom-ta">
                                <textarea name="otherSalary" placeholder="${item.remark!'请输入'}"
                                          >
                                </textarea>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.isCustom() && item.isShow()>
                            <li>
                                <#if item.fieldName == "FREE1">
                                    <@freeItem item=item value=(reward.free1)!></@freeItem>
                                <#elseif item.fieldName == "FREE2">
                                    <@freeItem item=item value=(reward.free2)!></@freeItem>
                                <#elseif item.fieldName == "FREE3">
                                    <@freeItem item=item value=(reward.free3)!></@freeItem>
                                <#elseif item.fieldName == "FREE4">
                                    <@freeItem item=item value=(reward.free4)!></@freeItem>
                                <#elseif item.fieldName == "FREE5">
                                    <@freeItem item=item value=(reward.free5)!></@freeItem>
                                </#if>
                                <div class="error"></div>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </fieldset>
        </div>
        <#list 1..3 as i>
            <#if (reward.getScholarship(i))?? && reward.getScholarship(i) gt 0 && AtsConstants.SCHOLARSHIP.containsKey(reward.getScholarship(i))>
                <div class="p-wrap i-content-block i-oa-form">
                    <div class="list_y">
                        <#if reward.getScholarship(i)?? || reward.getLevel(i)?? >
                            <span>${(AtsConstants.SCHOLARSHIP.get(reward.getScholarship(i)))!''}</span><span> ${(AtsConstants.SCHOLARSHIP_LEVEL.get(reward.getLevel(i)))!''}</span><span
                                class="time"> ${(reward.getReceiveTime(i)?string("yyyy-MM-dd"))!''}</span>
                        </#if>
                        <#if !resume.isDealStatus()>
                            <p>
                                <a href="/ats/resume/${resume.id}/schoolReward/${i}/edit" class="right-btn edit"></a><a
                                    href="/ats/resume/${resume.id}/schoolReward/${i}/del" class="btn-del"></a>
                            </p>
                        </#if>
                    </div>
                </div>
            </#if>
        </#list>
        <#list itemList as item>
            <#if item.fieldName == "SCHOLARSHIP" && item.isShow()>
            <#elseif item.fieldName == "LEVEL" && item.isShow()>
            <#elseif item.fieldName == "RECEIVE_TIME" && item.isShow()>
                <div class="p-wrap i-content-block i-oa-form add">
                    <div class="add_div">
                        <#if !resume.isDealStatus()>
                            <p class="add_p"><span class="js_save"
                                                   data-href="/ats/resume/${resume.id}/schoolReward/add">增加奖学金经历</span>
                            </p>
                        </#if>
                    </div>
                </div>
            </#if>
        </#list>
        <div class="p-btn-wrap t-flex-wrap">
            <div class="t-flex-item">
                <a href="javascript:;" class="i-btn" id="jp-submit">保存</a>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    dj.setPageData({
        validate: {
            auto: 'validate-success',
            strBtnID: 'jp-submit',
            strFormID: 'jp-form',
            urlFormAction: '/ats/resume/${resume.id}/schoolJob/save',
            urlNext: '{msg}',
            nodeType: 'li',
            item: {        <#list itemList as item>
                <#if item.fieldName  == "IS_STU_LEADER">
                    isStuLeader: {
                        value: "<#if reward??>${(reward.isStuLeader)!''}<#else></#if>",//具体的值
                        type: "select",//type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty: "",//如果空的话，并且必输，按照remark提示
                        regIgnore: "${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "DUTIES">
                    jobName: {
                        value: "<#if reward??>${((reward.duties)!'')?js_string}<#else></#if>",//具体的值
                        type: "text",//type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty: "",//如果空的话，并且必输，按照remark提示
                        regIgnore: "${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "SCHOOL_ACTIVITY">
                    schoolWork: {
                        value: "<#if reward??>${((reward.schoolActivity)!'')?js_string}<#else></#if>",//具体的值
                        type: "textarea",//type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty: "",//如果空的话，并且必输，按照remark提示
                        regIgnore: "${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "OTHER_REWARD">
                    otherSalary: {
                        value: "<#if reward??>${((reward.otherReward)!'')?js_string}<#else></#if>",//具体的值
                        type: "textarea",//type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty: "",//如果空的话，并且必输，按照remark提示
                        regIgnore: "${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "FREE1">
                    free1: {
                        value: "<#if reward??>${((reward.free1)!'')?js_string}<#else></#if>",//具体的值
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                              //type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore: "${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "FREE2">
                    free2: {
                        value: "<#if reward??>${((reward.free2)!'')?js_string}<#else></#if>",//具体的值
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                       //type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore: "${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "FREE3">
                    free3: {
                        value: "<#if reward??>${((reward.free3)!'')?js_string}<#else></#if>",//具体的值
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                             //type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore: "${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "FREE4">
                    free4: {
                        value: "<#if reward??>${((reward.free4)!'')?js_string}<#else></#if>",//具体的值
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                               //type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore: "${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "FREE5">
                    free5: {
                        value: "<#if reward??>${((reward.free5)!'')?js_string}<#else></#if>",//具体的值
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                               //type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore: "${item.isCheck()?string("false","true")}"
                    },
                </#if>
            </#list>}
        }
    });

</script>
</@page>