<#include "free-template.ftl">
<@page prev="/ats/resume/${resume.id}?corpId=${(resume.corpId)!}" title=" ${bigItem.showName} ${msg}" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/form-common.css",
"/up/dj-mobile/m-dajie/js/online-apply/intern-form-settings.js",
"/up/dj-mobile/m-dajie/js/online-apply/form-common.js"
]>
<div class="p-oa-form-wrap">
    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <input type="hidden" name="id" value="${(internship.id)!''}">

        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
                <ul class="i-form-list">
                    <#list itemList as item>
                        <#if item.fieldName == "BEGIN_TIME" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="beginTime" type="text" data-date="ym"
                                               placeholder="${item.remark!'请选择'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "END_TIME" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="endTime" type="text" data-date="ym"
                                               placeholder="${item.remark!'请选择'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "CORP_NAME" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="corpName" type="text" id="corpName"
                                               placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "CORP_SIZE" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="corpSize" item=item type="select" dataMap=AtsConstants.COMPANY_SCALE></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "CORP_TYPE" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="corpType" item=item type="select" dataMap=AtsConstants.COMPANY_TYPE></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "INDUSTRY" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item jp-popup-select">
                                        <input name="industry" type="hidden" id="fp-industry"
                                               />
                                        <label for="fp-industry" class="p-select-label select">
                                            <span class="selectedBox">${item.remark!'请选择'}</span>
                                        </label>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "DEPT" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="dept" type="text" placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "JOB_NAME" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="jobName" type="text" placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "PROVE_PERSON" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="provePerson" type="text" placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "TEL" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="tel" type="text" placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "IS_OVERSEA" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="oversea" item=item type="radio" dataMap=AtsConstants.IS_OVERSEA_MAP></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "JOB_DESC" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="bottom-ta">
                                <textarea name="jobDesc" placeholder="${item.remark!'请输入'}"
                                         >
                                </textarea>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.isCustom() && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <#if item.fieldName == "FREE1">
                                    <@freeItem item=item value=(internship.free1)!></@freeItem>
                                <#elseif item.fieldName == "FREE2">
                                    <@freeItem item=item value=(internship.free2)!></@freeItem>
                                <#elseif item.fieldName == "FREE3">
                                    <@freeItem item=item value=(internship.free3)!></@freeItem>
                                <#elseif item.fieldName == "FREE4">
                                    <@freeItem item=item value=(internship.free4)!></@freeItem>
                                <#elseif item.fieldName == "FREE5">
                                    <@freeItem item=item value=(internship.free5)!></@freeItem>
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
                <a href="javascript:;" class="i-btn i-btn-cancel" id="jp-hide-item">显示选填项</a>
            </div>
            <div class="t-flex-item">
                <a href="javascript:;" class="i-btn" id="jp-submit">保存</a>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    //公司名
    $.extend(dj.getPageData('matchbox'), {
        query: '/ajax/json/corp?s='
    });

    $.extend(true, dj.getPageData('i-search-select'), {
        'fp-industry': {
            url: '/dict/position_industry'
        }
    });

    dj.setPageData({
        validate: {
            auto: 'validate-success',
            strBtnID: 'jp-submit',
            strFormID: 'jp-form',
            urlFormAction: '/ats/resume/${resume.id}/internship/save',
            urlNext: '{msg}',
            nodeType: 'li',
            item: {

                <#list itemList as item>
                    <#if item.fieldName  == "BEGIN_TIME">
                        beginTime: {
                            value: "<#if internship ??>${(internship.beginTime?string("yyyy-MM-dd"))}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "END_TIME">
                        endTime: {
                            value: "<#if internship ??>${(internship.endTime?string("yyyy-MM-dd"))}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "CORP_NAME">
                        corpName: {
                            value: "<#if internship ??>${((internship.corpName)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "limitChar40",
                            regErr: "不能超过40个汉字！",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "CORP_SIZE">
                        corpSize: {
                            value: "<#if internship ??>${(internship.corpSize)!''}<#else></#if>",//具体的值
                            type: "select",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "CORP_TYPE">
                        corpType: {
                            value: "<#if internship ??>${(internship.corpType)!''}<#else></#if>",//具体的值
                            type: "select",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "INDUSTRY">
                        industry: {
                            value: <#if internship ?? && (internship.industry)??>["${(internship.industry)}", "${(dictMap.DICT_POSITION_INDUSTRY.map.get((internship.industry)?number?int).name)}"]<#else>["",""]</#if>,
                            //具体的值
                            type: "dialog",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "DEPT">
                        dept: {
                            value: "<#if internship ??>${((internship.dept)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "limitChar50",
                            regErr: "不能超过50个字符",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "JOB_NAME">
                        jobName: {
                            value: "<#if internship ??>${((internship.jobName)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "limitChar50",
                            regErr: "不能超过50个字符！",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "PROVE_PERSON">
                        provePerson: {
                            value: "<#if internship ??>${((internship.provePerson)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "TEL">
                        tel: {
                            value: "<#if internship ??>${((internship.tel)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "IS_OVERSEA">
                        oversea: {
                            value: "<#if internship?? && internship.isOversea()>1<#else>0</#if>",//具体的值
                            type: "radio",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "0",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "JOB_DESC">
                        jobDesc: {
                            value: "<#if internship ??>${((internship.jobDesc)!'')?js_string}<#else></#if>",//具体的值
                            type: "textarea",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE1">
                        free1: {
                            value: "<#if internship ??>${((internship.free1)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}" ,                              //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE2">
                        free2: {
                            value: "<#if internship ??>${((internship.free2)!'')?js_string}<#else></#if>",//具体的值
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
                            value: "<#if internship ??>${((internship.free3)!'')?js_string}<#else></#if>",//具体的值
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
                            value: "<#if internship ??>${((internship.free4)!'')?js_string}<#else></#if>",//具体的值
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
                            value: "<#if internship ??>${((internship.free5)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}" ,                               //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        } ,
                    </#if>
                </#list>
            }
        }
    });

</script>
</@page>