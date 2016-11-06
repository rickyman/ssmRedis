<#assign assets=[
'/up/dj-mobile/m-dajie/css/online-apply/form-common.css',
'/up/dj-mobile/m-dajie/js/online-apply/form-common.js',
'/up/dj-mobile/m-dajie/js/online-apply/other-form-settings.js'
]/>
<@page prev="/ats/resume/${(resume.id)!}?corpId=${(resume.corpId)!}" title=" ${bigItem.showName} ${msg}" assets=assets>
    <#include "free-template.ftl"/>
<div class="p-oa-form-wrap">
    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
                <input type="hidden" name="id" value="${(others.id)!0}">
                <input type="hidden" name="corpId" value="${(resume.corpId)!0}">
                <ul class="i-form-list">
                    <#list formItemList as item>
                        <#if item.fieldName == "APP_TYPE" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="appType" item=item type="select" dataMap=AtsConstants.PROPOSER_TYPE defaultValue=0/>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "IS_CANASSIGN" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="i-radio-checked t-flex-item">
                                        <input name="canassign" type="radio" value="1"
                                               <#if !(others?? && !others.isCanassign())>checked</#if>
                                               id="pf-acceptother"/>
                                        <label for="pf-acceptother">
                                            <em>是</em>
                                        </label>
                                    </div>
                                    <em>　</em>

                                    <div class="i-radio-checked">
                                        <input name="canassign" type="radio" value="0"
                                               <#if others?? && !others.isCanassign()>checked</#if>
                                               id="pf-no-acceptother"/>
                                        <label for="pf-no-acceptother">
                                            <em>否</em>
                                        </label>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "CITY" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item jp-popup-select">
                                        <input name="city" type="hidden" id="fp-wishCity" value="${(others.city)!''}"
                                               <#if item.isCheck()>class="{required:true,messages:{required:'${(item.remark)!'请选择期望工作地'}'}}"</#if>/>
                                        <label for="fp-wishCity" class="p-select-label select">
                                            <span class="selectedBox"><#if others?? && others.city?? && others.city?length gt 0>${(dictItemMap.DICT_CITY.getNamesByIds(others.city))!''}<#else>${item.remark!'请选择期望工作地'}</#if></span>
                                        </label>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "SALARY" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="salary" item=item type="select" dataMap=AtsConstants.SALARY defaultValue=0/>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "WORK_TIME" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="workTime" type="text" data-date="ym"
                                               placeholder="${item.remark!'请选择'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "IS_FRIEND_IN" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="i-radio-checked t-flex-item">
                                        <input name="friendIn" type="radio" value="1"
                                               id="pf-relatives"/>
                                        <label for="pf-relatives">
                                            <em>是</em>
                                        </label>
                                    </div>
                                    <em>　</em>

                                    <div class="i-radio-checked">
                                        <input name="friendIn" type="radio" value="0"
                                            checked   id="pf-no-relatives"/>
                                        <label for="pf-no-relatives">
                                            <em>否</em>
                                        </label>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "FRIEND_INFO" && item.isShow()>
                            <li class="information">
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="friendInfo" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "INFORMATION_FROM" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="informationFrom" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.isCustom() && item.isShow()>
                            <li>
                                <#if item.fieldName == "FREE1">
                                    <@freeItem item=item value=(others.free1)!></@freeItem>
                                <#elseif item.fieldName == "FREE2">
                                    <@freeItem item=item value=(others.free2)!></@freeItem>
                                <#elseif item.fieldName == "FREE3">
                                    <@freeItem item=item value=(others.free3)!></@freeItem>
                                <#elseif item.fieldName == "FREE4">
                                    <@freeItem item=item value=(others.free4)!></@freeItem>
                                <#elseif item.fieldName == "FREE5">
                                    <@freeItem item=item value=(others.free5)!></@freeItem>
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
    //弹窗筛选
    $.extend(true, dj.getPageData('i-search-select'), {
        'fp-wishCity': {
            url: '/ats/ajax/dict/wishcity'
        }
    });

    //表单验证以及跳转URL
    dj.setPageData({
        validate: {
            auto: 'validate-success',
            strBtnID: 'jp-submit',
            strFormID: 'jp-form',
            urlFormAction: '/ats/resume/${(resume.id)!0}/other/save',
            urlNext: '/ats/resume/${(resume.id)!0}?corpId=${(resume.corpId)!0}',
            nodeType: 'li',
            item: {
                <#list formItemList as item>
                    <#if item.fieldName  == "APP_TYPE">
                        appType: {
                            value:" <#if others??>${(others.appType)!''}<#else></#if>",//具体的值
                            type: "select",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "^[^0]$",
                            regErr: "不能为空!",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "SALARY">
                        salary: {
                            value:" <#if others??>${(others.salary)!''}<#else></#if>",//具体的值
                            type: "select",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "WORK_TIME">
                        workTime: {
                            value:" <#if others??>${((others.workTime)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "IS_FRIEND_IN">
                        friendIn: {
                            value:" <#if others?? && others.isFriendIn()>1<#else>0</#if>",//具体的值
                            type: "radio",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "0",// 空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FRIEND_INFO">
                        friendInfo: {
                            value:" <#if others??>${((others.friendInfo)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "limitChar50",
                            regErr: "长度不能超过50个字符!",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "INFORMATION_FROM">
                        informationFrom: {
                            value:" <#if others??>${((others.informationFrom)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "limitChar50",
                            regErr: "长度不能超过50个字符!",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE1">
                        free1: {
                            value:" <#if others??>${((others.free1)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}" ,                       //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE2">
                        free2: {
                            value:" <#if others??>${((others.free2)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}" ,                       //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE3">
                        free3: {
                            value:" <#if others??>${((others.free3)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}" ,                             //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE4">
                        free4: {
                            value:" <#if others??>${((others.free4)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}" ,                               //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE5">
                        free5: {
                            value:" <#if others??>${((others.free5)!'')?js_string}<#else></#if>",//具体的值
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