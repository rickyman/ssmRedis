<#include "free-template.ftl"/>
<@page prev="/ats/resume/${resume.id}?corpId=${(resume.corpId)!}" title=" ${bigItem.showName} ${msg}" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/form-common.css",
"/up/dj-mobile/m-dajie/js/online-apply/edu-form-settings.js",
"/up/dj-mobile/m-dajie/js/online-apply/form-common.js"
]>
<div class="p-oa-form-wrap">
    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <input name="id" type="hidden" value="${(education.id)!''}"/>

        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
                <input type="hidden" name="avatar">
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
                        <#elseif item.fieldName == "SCHOOL" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="school" type="text" id="schoolName"
                                               placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "MAJOR" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item jp-popup-select">
                                        <input name="major" type="hidden" id="fp-major" value=""
                                               />
                                        <label for="fp-major" class="p-select-label select">
                                            <span class="selectedBox">${item.remark!'请选择'}</span>
                                        </label>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "MAJOR_NAME" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="majorName" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "EDUCATION" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="education" item=item type="select" dataMap=AtsConstants.ACADEMIC></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "DEGREE" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="degree" item=item type="select" dataMap=AtsConstants.DEGREE></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "RANK" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="rank" item=item type="select" dataMap=AtsConstants.GRADE_ORDER></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "GPA" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="gpa" type="text" placeholder="${item.remark!'请输入'}"
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
                        <#elseif item.fieldName == "MAJOR_CLASS" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="bottom-ta">
                            <textarea name="majorClass" placeholder="${item.remark!'请输入'}"
                                      >
                            ${(education.majorClass)!''}
                            </textarea>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.isCustom() && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <#if item.fieldName == "FREE1">
                                    <@freeItem item=item value=(education.free1)!></@freeItem>
                                <#elseif item.fieldName == "FREE2">
                                    <@freeItem item=item value=(education.free2)!></@freeItem>
                                <#elseif item.fieldName == "FREE3">
                                    <@freeItem item=item value=(education.free3)!></@freeItem>
                                <#elseif item.fieldName == "FREE4">
                                    <@freeItem item=item value=(education.free4)!></@freeItem>
                                <#elseif item.fieldName == "FREE5">
                                    <@freeItem item=item value=(education.free5)!></@freeItem>
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
    //学校输入联想
    $.extend(dj.getPageData('matchbox'), {
        query: '/ajax/dictjson?type=school&s={1}'
    });

    //弹窗筛选
    $.extend(true, dj.getPageData('i-search-select'), {
        'fp-major': {
            url: '/dict/major'
        }
    });

    //表单验证以及跳转URL
    dj.setPageData({
        validate: {
            urlFormAction: '/ats/resume/${resume.id}/education/save',
            urlNext: '{msg}',
            auto: 'validate-success',
            strBtnID: 'jp-submit',
            strFormID: 'jp-form',
            nodeType: 'li',
            item: {<#list itemList as item>
                <#if item.fieldName  == "BEGIN_TIME">
                    beginTime: {
                        value: "<#if education??>${(education.beginTime?string("yyyy-MM-dd"))}<#else></#if>",//具体的值
                        type: "text",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}",
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },             //input
                <#elseif item.fieldName  == "END_TIME">
                    endTime: {
                        value: "<#if education??>${(education.endTime?string("yyyy-MM-dd"))}<#else></#if>",//具体的值
                        type: "text",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}",
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },                //input
                <#elseif item.fieldName  == "SCHOOL">
                    school: {
                        value: "<#if education??>${((education.school)!'')?js_string}<#else></#if>",//具体的值
                        type: "text",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },                 //input
                <#elseif item.fieldName  == "MAJOR">
                    major: {
                        value: <#if education?? &&(education.major)??>["${(education.major)}", "${(dictMap.DICT_MAJOR.map.get(education.major).name)}"]<#else>["",""]</#if>, //具体的值
                        type: "dialog",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },                //input
                <#elseif item.fieldName  == "MAJOR_NAME">
                    majorName: {
                        value: "<#if education??>${((education.majorName)!'')?js_string}<#else></#if>",//具体的值
                        type: "text",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "limitChar50",
                        regErr: "专业名称长度不能超过50！",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },                 //input
                <#elseif item.fieldName  == "EDUCATION">
                    education: {
                        value: "<#if education??>${(education.education)!''}<#else></#if>",//具体的值
                        type: "select",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}",
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },                 //input
                <#elseif item.fieldName  == "DEGREE">
                    degree: {
                        value: "<#if education??>${(education.degree)!''}<#else></#if>",//具体的值
                        type: "select",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}",
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },               //input
                <#elseif item.fieldName  == "RANK">
                    rank: {
                        value: "<#if education??>${(education.rank)!''}<#else></#if>",//具体的值
                        type: "select",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },             //input
                <#elseif item.fieldName  == "GPA">
                    gpa: {
                        value: "<#if education?? &&  (education.gpa) gt 0>${((education.gpa)!'')?js_string}<#else></#if>",//具体的值
                        type: "text",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                <#elseif item.fieldName  == "PROVE_PERSON">
                    provePerson: {
                        value: "<#if education??>${((education.provePerson)!'')?js_string}<#else></#if>",//具体的值
                        type: "text",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },              //input
                <#elseif item.fieldName  == "TEL">
                    tel: {
                        value: "<#if education??>${((education.tel)!'')?js_string}<#else></#if>",//具体的值
                        type: "text",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },                 //input
                <#elseif item.fieldName  == "IS_OVERSEA">
                    oversea: {
                        value: "<#if education?? && education.isOversea()>1<#else>0</#if>",  //具体的值
                        type: "radio",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },               //input
                <#elseif item.fieldName  == "MAJOR_CLASS">
                    majorClass: {
                        value: "<#if education??>${((education.majorClass)!'')?js_string}<#else></#if>",//具体的值
                        type: "textarea",//type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",// 空，需要默认值的话直接写上，
                        name: "${item.showName}" ,
                        reg: "",
                        regErr: "",
                        regEmpty:"",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },                 //input
                <#elseif item.fieldName  == "FREE1">
                    free1: {
                        value: "<#if education??>${((education.free1)!'')?js_string}<#else></#if>",//具体的值
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                              //type: item.,// hidden -> dialog   file
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
                        value: "<#if education??>${((education.free2)!'')?js_string}<#else></#if>",//具体的值
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                       //type: item.,// hidden -> dialog   file
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
                        value: "<#if education??>${((education.free3)!'')?js_string}<#else></#if>",//具体的值
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                             //type: item.,// hidden -> dialog   file
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
                        value: "<#if education??>${((education.free4)!'')?js_string}<#else></#if>",//具体的值
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                               //type: item.,// hidden -> dialog   file
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
                        value: "<#if education??>${((education.free5)!'')?js_string}<#else></#if>",//具体的值
                        type: "${item.itemDataType?lower_case?replace("_","")}" ,                               //type: item.,// hidden -> dialog   file
                        remark: "${(item.remark)!''}",//填写提示
                        checkedValue: "",//todo  空，需要默认值的话直接写上，
                        name: "${(item.showName)!''}",
                        reg: "",
                        regErr: "<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",
                        regEmpty:"<#if item.itemDataType.code gt 2>请选择<#else>请输入</#if>",//如果空的话，并且必输，按照remark提示
                        regIgnore:"${item.isCheck()?string("false","true")}"
                    },
                </#if>
            </#list>}
        }
    });
    
</script>
</@page>