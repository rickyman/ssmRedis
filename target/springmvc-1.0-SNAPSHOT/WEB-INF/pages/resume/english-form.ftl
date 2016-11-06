<#include "free-template.ftl"/>
<@page prev="/ats/resume/${resume.id}?corpId=${(resume.corpId)!}" title=" ${bigItem.showName} ${msg}" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/form-common.css",
"/up/dj-mobile/m-dajie/js/online-apply/eng-form-settings.js",
"/up/dj-mobile/m-dajie/js/online-apply/form-common.js",
"/up/dj-mobile/m-dajie/js/online-apply/form-english.js",
"/up/dj-mobile/m-dajie/js/online-apply/page-edit.js"]>
<div class="p-oa-form-wrap">
    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <input name="id" type="hidden" value="${(language.id)!'0'}"/>

        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
                <ul class="i-form-list">
                    <#list itemList as item>
                        <#if item.fieldName == "ENG_LEVEL" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="engLevel" item=item type="select" dataMap=AtsConstants.ENG_LEVEL></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "ENG_SCORE" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="engScore" type="text" placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "TOEFL" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="toefl" type="text" placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "GRE" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="gre" type="text" placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "GMAT" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="gmat" type="text" placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "IELTS" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="ielts" type="text" placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "TOEIC" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="toeic" type="text" placeholder="${item.remark!'请输入'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.isCustom() && item.isShow()>
                            <li>
                                <#if item.fieldName == "FREE1">
                                    <@freeItem item=item value=(language.free1)!></@freeItem>
                                <#elseif item.fieldName == "FREE2">
                                    <@freeItem item=item value=(language.free2)!></@freeItem>
                                <#elseif item.fieldName == "FREE3">
                                    <@freeItem item=item value=(language.free3)!></@freeItem>
                                <#elseif item.fieldName == "FREE4">
                                    <@freeItem item=item value=(language.free4)!></@freeItem>
                                <#elseif item.fieldName == "FREE5">
                                    <@freeItem item=item value=(language.free5)!></@freeItem>
                                </#if>
                                <div class="error"></div>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </fieldset>
        </div>
        <#list 1..3 as i>
            <#if (language.getForeinLan(i))?? && AtsConstants.LANG_TYPE.containsKey(language.getForeinLan(i))>
                <div class="p-wrap i-content-block i-oa-form">
                    <div class="language">
                        <div class="language_list">
                            <dl>
                                <dd>语种</dd>
                                <dd>
                                ${AtsConstants.LANG_TYPE.get(language.getForeinLan(i))}
                                </dd>
                            </dl>
                        </div>
                        <div class="language_list">
                            <dl>
                                <dd>读写</dd>
                                <dd>
                                ${AtsConstants.RW_ABILITY.get(language.getReadWrite(i))}
                                </dd>
                            </dl>
                        </div>
                        <div class="language_list">
                            <dl>
                                <dd>听说</dd>
                                <dd>
                                ${AtsConstants.LT_ABILITY.get(language.getListenSpeak(i))}
                                </dd>
                            </dl>
                        </div>
                        <#if !resume.isDealStatus()>
                            <div class="list_y e_a">
                                <p>
                                    <a href="/ats/resume/${resume.id}/language/${i}/edit" class="right-btn edit"></a>
                                    <a href="/ats/resume/${resume.id}/language/${i}/del" data-type="lang"
                                       class="btn-del"></a>
                                </p>
                            </div>
                        </#if>
                    </div>
                </div>
            </#if>
        </#list>
        <!--如果其他语种的标准项没有显示，就隐藏增加新语种按钮-->
        <#list itemList as item>
            <#if item.fieldName == "FOREIN_LAN" && item.isShow()>
            <#elseif item.fieldName == "CERTIFICATE" && item.isShow()>
            <#elseif item.fieldName == "READ_WRITE" && item.isShow()>
            <#elseif item.fieldName == "LISTEN_SPEAK" && item.isShow()>
                <div class="p-wrap i-content-block i-oa-form add">
                    <div class="add_div">
                        <p class="add_p"><span class="js_save"
                                               data-href="/ats/resume/${resume.id}/language/add">增加新语种</span></p>
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
    //表单验证以及跳转URL
    dj.setPageData({
        validate: {
            auto: 'validate-success',
            strBtnID: 'jp-submit',
            strFormID: 'jp-form',
            urlFormAction: '/ats/resume/${resume.id}/english/save',
            urlNext: '{msg}',
            nodeType: 'li',
            item: {
                <#list itemList as item>
                    <#if item.fieldName  == "ENG_LEVEL">
                        engLevel: {
                            value: "<#if language ?? && (language.engLevel)?? && language.engLevel gt 0>${language.engLevel}</#if>",  //具体的值
                            type: "select",//type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "ENG_SCORE">
                        engScore: {
                            value: "<#if language ?? && (language.engScore)?? && language.engScore gt 0>${language.engScore}</#if>",  //具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "^[1-9]\\d{0,2}$",
                            regErr: "必须介于1到999之间！",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "TOEFL">
                        toefl: {
                            value: "<#if language ?? && (language.toefl)?? && language.toefl gt 0>${language.toefl}</#if>", //具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "^[1-9]\\d{0,2}$",
                            regErr: "必须介于1到999之间！",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "GRE">
                        gre: {
                            value: "<#if language ?? && (language.gre)?? && language.gre gt 0>${language.gre}</#if>",  //具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "^[1-9]\\d{0,2}$",
                            regErr: "必须介于1到999之间！",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "GMAT">
                        gmat: {
                            value: "<#if language ?? && (language.gmat)?? && language.gmat gt 0>${language.gmat}</#if>",  //具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "^[1-9]\\d{0,2}$",
                            regErr: "必须介于1到999之间！",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "IELTS">
                        ielts: {
                            value: "<#if language ?? && (language.ielts)?? && language.ielts gt 0>${language.ielts}</#if>",  //具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "^[1-9]\\d{0,2}$",
                            regErr: "必须介于1到999之间！",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "TOEIC">
                        toeic: {
                            value: "<#if language ?? &&  (language.toeic)?? && language.toeic gt 0>${language.toeic}</#if>", //具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "^[1-9]\\d{0,2}$",
                            regErr: "必须介于1到999之间！",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE1">
                        free1: {
                            value: "${((language.free1)!'')?js_string}",//具体的值
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
                            value: "${((language.free2)!'')?js_string}",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}" ,                       //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE3">
                        free3: {
                            value: "${((language.free3)!'')?js_string}",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}" ,                             //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE4">
                        free4: {
                            value: "${((language.free4)!'')?js_string}",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}" ,                               //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                            regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE5">
                        free5: {
                            value: "${((language.free5)!'')?js_string}",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}" ,                               //type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
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