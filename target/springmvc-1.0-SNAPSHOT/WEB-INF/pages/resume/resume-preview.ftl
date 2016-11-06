<#include "free-template.ftl" />
<@page title="申请表预览" prev="/ats/resume/${resume.id}?corpId=${(resume.corpId)!}" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/apply-table-preview.css",
"/up/dj-mobile/m-dajie/js/online-apply/apply-table-preview.js"
]>
<div class="p-content-wrap">
<#list bigItems as bigItem>
    <#--只显示isShow()的值为true的大项-->
    <#if bigItem.isShow()>
        <#if bigItem.tableName == "CR_R_PERSONAL_INFO">
            <#include "preview-inc/personal-info-inc.ftl"/>
        <#elseif bigItem.tableName == "CR_R_EDUCATION">
            <#include "preview-inc/education-inc.ftl"/>
        <#elseif bigItem.tableName == "CR_R_LANGUAGE">
            <#include "preview-inc/language-inc.ftl"/>
        <#elseif bigItem.tableName == "CR_R_REWARD">
            <#include "preview-inc/reward-inc.ftl"/>
        <#elseif bigItem.tableName == "CR_R_INTERNSHIP">
            <#include "preview-inc/internship-inc.ftl"/>
        <#elseif bigItem.tableName == "CR_R_PROJECT">
            <#include "preview-inc/project-inc.ftl"/>
        <#elseif bigItem.tableName == "CR_R_FAMILY">
            <#include "preview-inc/family-inc.ftl"/>
        <#elseif bigItem.tableName == "CR_R_OTHERS">
            <#include "preview-inc/others-inc.ftl"/>
        <#elseif bigItem.tableName == "CR_R_ACCESSORY">
            <#include "preview-inc/accessory-inc.ftl"/>
        </#if>
    </#if>
</#list>
</div>
</@page>