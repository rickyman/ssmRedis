<#include "free-template.ftl"/>
<@page prev="/ats/resume/${resume.id}/english/edit" title=" ${bigItem.showName}" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/form-common.css"
,"/up/dj-mobile/m-dajie/js/online-apply/lang-form-settings.js"
,"/up/dj-mobile/m-dajie/js/online-apply/form-common.js"
,"/up/dj-mobile/m-dajie/js/online-apply/add-lang.js"
]>
<div class="p-oa-form-wrap">
    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
                <input type="hidden" name="index" value="${index!'0'}">
                <ul class="i-form-list">
                    <#list subList as item>
                        <#if (item.fieldName == "FOREIN_LAN") && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><i>*</i>${item.showName!''}</span>

                                    <div class="t-flex-item" id="jp-type-wrap">
                                        <select name="langType" data="${foreinLan!''}"
                                                >
                                            <#if item.remark?? && item.remark?length gt 0>
                                                <option value="">${item.remark!""}</option><#else>
                                                <option value="">请选择${item.showName!""}</option></#if>
                                            <#list AtsConstants.LANG_TYPE.entrySet() as item>
                                                <option value="${item.key}">${item.value}</option>
                                            </#list>
                                        </select>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "READ_WRITE" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><i>*</i>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <select name="readWrite"
                                                >
                                            <#if item.remark?? && item.remark?length gt 0>
                                                <option value="">${item.remark!""}</option><#else>
                                                <option value="">请选择${item.showName!""}</option></#if>
                                            <#list AtsConstants.RW_ABILITY.entrySet() as item>
                                                <option value="${item.key}">${item.value}</option>
                                            </#list>
                                        </select>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "LISTEN_SPEAK" && item.isShow()>
                            <li>
                                <section class="form-item-box t-flex-wrap">
                                    <span><i>*</i>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <select name="listenSpeak"
                                                >
                                            <#if item.remark?? && item.remark?length gt 0>
                                                <option value="">${item.remark!""}</option><#else>
                                                <option value="">请选择${item.showName!""}</option></#if>
                                            <#list AtsConstants.LT_ABILITY.entrySet() as item>
                                                <option value="${item.key}">${item.value}</option>
                                            </#list>
                                        </select>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "CERTIFICATE" && item.isShow()>
                            <li class="p-hidden-field" id="jp-zhengshu">
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <select name="zhengshu" data="${certificate!''}"
                                                >
                                            <#if item.remark?? && item.remark?length gt 0>
                                                <option value="">${item.remark!""}</option><#else>
                                                <option value="">请选择${item.showName!""}</option></#if>
                                            <#if certificate?? && AtsConstants.LINKAGE_LANG.containsKey(foreinLan)>
                                                <#list AtsConstants.LINKAGE_LANG.get(foreinLan).entrySet() as item>
                                                    <option value="${item.key}">${item.value}</option>
                                                </#list>
                                            </#if>
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
                <a href="/ats/resume/${resume.id}/english/edit" class="i-btn" id="jp-submit">保存</a>
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
            urlFormAction: '/ats/resume/${resume.id}/language/save',
            urlNext: '{msg}',
            nodeType: 'li',
            item: {   <#list subList as item>
                <#if item.fieldName  == "FOREIN_LAN">
                    langType: {
                        value: "${(foreinLan)!''}",//具体的值
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
                <#elseif item.fieldName  == "READ_WRITE">
                    readWrite: {
                        value: "${(readWrite)!''}",//具体的值
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
                <#elseif item.fieldName  == "LISTEN_SPEAK">
                    listenSpeak: {
                        value: "${(listenSpeak)!''}",//具体的值
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
                <#elseif item.fieldName  == "CERTIFICATE">
                    zhengshu: {
                        value: "${(certificate)!''}",//具体的值
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
            </#list> }
        }
    });

    dj.setPageData({
        getZhengshu: '/ats/ajax/dict/langcert'
    });


</script>
</@page>
