<!--这个项不用隐藏非必填项-->
<#include "free-template.ftl"/>
<@page prev="/ats/resume/${resume.id}?corpId=${(resume.corpId)!}" title=" ${bigItem.showName} ${msg}" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/form-common.css",
"/up/dj-mobile/m-dajie/js/online-apply/project-form-settings.js",
"/up/dj-mobile/m-dajie/js/online-apply/form-common.js"
]>
<div class="p-oa-form-wrap">
    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <input type="hidden" name="id" value="${(project.id)!''}">

        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
                <ul class="i-form-list">
                    <#list itemList as item>
                        <#if item.fieldName == "BEGIN_TIME" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="beginTime" type="text" data-date="ym"
                                               value="" placeholder="${item.remark!'请选择'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "END_TIME" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="endTime" type="text" data-date="ym" value=""
                                               placeholder="${item.remark!'请选择'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "PROJECT_NAME" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="projectName" type="text" value=""
                                               placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "JOB_NAME" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="jobName" type="text" value=""
                                               placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "PROVE_PERSON" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="provePerson" type="text" value=""
                                               placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "TEL" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="tel" type="text" value=""
                                               placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "PROJECT_DESC" && item.isShow()>
                            <li>
                                <section class="form-item-box">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="bottom-ta">
                                        <textarea name="projectDesc" placeholder="${item.remark!'请输入'}"
                                                  >
                                        ${(project.projectDesc)!''}
                                        </textarea>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.isCustom() && item.isShow()>
                            <li>
                                <#if item.fieldName == "FREE1">
                                    <@freeItem item=item value=(project.free1)!></@freeItem>
                                <#elseif item.fieldName == "FREE2">
                                    <@freeItem item=item value=(project.free2)!></@freeItem>
                                <#elseif item.fieldName == "FREE3">
                                    <@freeItem item=item value=(project.free3)!></@freeItem>
                                <#elseif item.fieldName == "FREE4">
                                    <@freeItem item=item value=(project.free4)!></@freeItem>
                                <#elseif item.fieldName == "FREE5">
                                    <@freeItem item=item value=(project.free5)!></@freeItem>
                                </#if>
                                <div class="error"></div>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </fieldset>
        </div>
        <div class="p-btn-wrap t-flex-wrap">
            <div class="t-flex-item">
                <a href="javascript:;" class="i-btn" id="jp-submit">保存</a>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    //表单验证以及跳转URL
    dj.setPageData({
        validate: {
            auto: 'validate-success',
            strBtnID: 'jp-submit',
            strFormID: 'jp-form',
            urlFormAction: '/ats/resume/${resume.id}/project/save',
            urlNext: '{msg}',
            nodeType: 'li',
            item: {
                <#list itemList as item>
                    <#if item.fieldName  == "BEGIN_TIME">
                        beginTime: {
                            value: "<#if project??>${(project.beginTime?string("yyyy-MM-dd"))}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty: "",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "END_TIME">
                        endTime: {
                            value: "<#if project??>${(project.endTime?string("yyyy-MM-dd"))}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty: "",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "PROJECT_NAME">
                        projectName: {
                            value: "<#if project??>${((project.projectName)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "limitChar50",
                            regErr: "不能超过50个字符！",
                            regEmpty: "",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "JOB_NAME">
                        jobName: {
                            value: "<#if project??>${((project.jobName)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "limitChar50",
                            regErr: "不能超过50个字符！",
                            regEmpty: "",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "PROVE_PERSON">
                        provePerson: {
                            value: "<#if project??>${((project.provePerson)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty: "",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "TEL">
                        tel: {
                            value: "<#if project??>${((project.tel)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty: "",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "PROJECT_DESC">
                        projectDesc: {
                            value: "<#if project??>${((project.projectDesc)!'')?js_string}<#else></#if>",//具体的值
                            type: "textarea",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty: "",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE1">
                        free1: {
                            value: "<#if project??>${((project.free1)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}",                              //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE2">
                        free2: {
                            value: "<#if project??>${((project.free2)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}",                       //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE3">
                        free3: {
                            value: "<#if project??>${((project.free3)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}",                             //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE4">
                        free4: {
                            value: "<#if project??>${((project.free4)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}",                               //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE5">
                        free5: {
                            value: "<#if project??>${((project.free5)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}",                               //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    </#if>
                </#list>
            }
        }
    });

</script>
</@page>