<#include "free-template.ftl"/>
<@page prev="/ats/resume/${resume.id}/schoolJob/edit" title=" ${bigItem.showName}" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/form-common.css",
"/up/dj-mobile/m-dajie/js/online-apply/form-common.js"
]>
<div class="p-oa-form-wrap">
    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <input name="index" type="hidden" value="${index!'0'}"/>

        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
                <ul class="i-form-list">
                    <#list itemList as item>
                        <#if (item.fieldName == "RECEIVE_TIME") && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><i>*</i>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="awardTime" type="text" VALUE="" data-date="ym" class="select"
                                               placeholder="${item.remark!'请选择'}"
                                              />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "SCHOLARSHIP" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><i>*</i>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <select name="awardType"
                                               >
                                            <option value="">${item.remark!'请选择'}</option>
                                            <#list AtsConstants.SCHOLARSHIP.entrySet() as item>
                                                <option value="${item.key}">${item.value}</option>
                                            </#list>
                                        </select>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "LEVEL" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><i>*</i>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <select name="awardLevel"
                                               >
                                            <option value="">${item.remark!'请选择'}</option>
                                            <#list AtsConstants.SCHOLARSHIP_LEVEL.entrySet() as item>
                                                <option value="${item.key}">${item.value}</option>
                                            </#list>
                                        </select>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        </#if>
                    </#list>
                </ul>
            </fieldset>
        </div>
        <div class="p-btn-wrap t-flex-wrap">
            <div class="t-flex-item">
                <a href="/ats/resume/${resume.id}/schoolJob/edit" class="i-btn" id="jp-submit">保存</a>
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
            urlFormAction: '/ats/resume/${resume.id}/schoolReward/save',
            urlNext: '{msg}',
            nodeType: 'li',
            item: {        <#list itemList as item>
                <#if item.fieldName  == "RECEIVE_TIME">
                    awardTime: {
                        value: "<#if receiveTime??>${(receiveTime?string("yyyy-MM"))?js_string}<#else></#if>",//具体的值
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
                <#elseif item.fieldName  == "SCHOLARSHIP">
                    awardType: {
                        value: "${(scholarship)!''}",//具体的值
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
                <#elseif item.fieldName  == "LEVEL">
                    awardLevel: {
                        value: "${(level)!''}",//具体的值
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
                </#if>
            </#list>}
        }
    });
</script>
</@page>