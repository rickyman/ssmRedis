<#assign assets=[
'/up/dj-mobile/m-dajie/css/online-apply/form-common.css',
'/up/dj-mobile/m-dajie/js/online-apply/family-form-settings.js',
'/up/dj-mobile/m-dajie/js/online-apply/form-common.js'
]/>
<@page prev="/ats/resume/${(resume.id)!}?corpId=${(resume.corpId)!}" title=" ${bigItem.showName} ${msg}" assets=assets>
    <#include "free-template.ftl"/>
<div class="p-oa-form-wrap">
    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
                <input type="hidden" name="id" value="${(family.id)!0}">
                <input type="hidden" name="corpId" value="${(resume.corpId)!0}">
                <ul class="i-form-list">
                    <#list formItemList as item>
                        <#if item.fieldName == "NAME" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="name" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "RELATION" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="relation" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "CORP" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="corp" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "DUTIES" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="duties" type="text" placeholder="${item.remark!'请输入'}"
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
                                        <input name="tel" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "Email" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="email" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.isCustom() && item.isShow()>
                            <li>
                                <#if item.fieldName == "FREE1">
                                    <@freeItem item=item value=(family.free1)!></@freeItem>
                                <#elseif item.fieldName == "FREE2">
                                    <@freeItem item=item value=(family.free2)!></@freeItem>
                                <#elseif item.fieldName == "FREE3">
                                    <@freeItem item=item value=(family.free3)!></@freeItem>
                                <#elseif item.fieldName == "FREE4">
                                    <@freeItem item=item value=(family.free4)!></@freeItem>
                                <#elseif item.fieldName == "FREE5">
                                    <@freeItem item=item value=(family.free5)!></@freeItem>
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
            urlFormAction: '/ats/resume/${(resume.id)!0}/family/save',
            urlNext: '/ats/resume/${(resume.id)!0}/?corpId=${(resume.corpId)!0}',
            nodeType: 'li',
            item: { <#list formItemList as item>
                <#if item.fieldName  == "NAME">
                    name: {
                        value:"<#if family??>${(family.name)!''}<#else></#if>",
                        type: "text",//type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "fun:name,2-5个汉字或者2-40个字母,2-5个汉字或者2-40个字母",
                        regErr: "请填写有效的姓名(2-5个汉字或者2-40个字母)",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "RELATION">
                    relation: {
                        value:"<#if family??>${((family.relation)!'')?js_string}<#else></#if>",
                        type: "text",//type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "limitChar50",
                        regErr: "不能超过50个字符!",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "CORP">
                    corp: {
                        value:"<#if family??>${((family.corp)!'')?js_string}<#else></#if>",
                        type: "text",//type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "limitChar50",
                        regErr: "不能超过50个字符!",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "DUTIES">
                    duties: {
                        value:"<#if family??>${((family.duties)!'')?js_string}<#else></#if>",
                        type: "text",//type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "limitChar50",
                        regErr: "不能超过50个字符!",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "TEL">
                    tel: {
                        value:"<#if family??>${((family.tel)!'')?js_string}<#else></#if>",
                        type: "text",//type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "limitChar50",
                        regErr: "不能超过50个字符!",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "Email">
                    email: {
                        value:"<#if family??>${((family.email)!'')?js_string}<#else></#if>",
                        type: "text",//type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "email",
                        regErr: "请输入格式正确的E-mail!",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"

                    },
                <#elseif item.fieldName  == "FREE1">
                    free1: {
                        value:"<#if family??>${((family.free1)!'')?js_string}<#else></#if>",
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                              //type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}",
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "FREE2">
                    free2: {
                        value:"<#if family??>${((family.free2)!'')?js_string}<#else></#if>",
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                       //type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "FREE3">
                    free3: {
                        value:"<#if family??>${((family.free3)!'')?js_string}<#else></#if>",
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                             //type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "FREE4">
                    free4: {
                        value:"<#if family??>${((family.free4)!'')?js_string}<#else></#if>",
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                               //type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "FREE5">
                    free5: {
                        value:"<#if family??>${((family.free5)!'')?js_string}<#else></#if>",
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                               //type: item.,// hidden -> dialog   file
                        isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}" ,
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                </#if>
            </#list>
            }
        }
    });

</script>
</@page>