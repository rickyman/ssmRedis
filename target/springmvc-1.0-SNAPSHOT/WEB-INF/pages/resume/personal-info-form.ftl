<#include "free-template.ftl"/>
<@page title=" ${bigItem.showName} ${msg}" prev="/ats/resume/${resume.id}?corpId=${(resume.corpId)!}" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/form-common.css",
"/up/dj-mobile/m-dajie/js/online-apply/basic-form-settings.js",
"/up/dj-mobile/m-dajie/js/online-apply/form-common.js",
"/up/dj-mobile/m-dajie/js/online-apply/from-personal-info.js"
]>
<div class="p-oa-form-wrap">

    <form action="http://fs1u.dajie.com/file/upload.php" enctype="multipart/form-data" id="imageForm"
          target="imageIframe" method="post" style="display:none">
        <input type="hidden" name="type" value="guide_avatar"/>
    </form>
    <iframe frameborder="0" name="imageIframe" id="imageIframe" style="display:none;"></iframe>

    <div class="p-avatar-block p-hidden-field">
        <section class="form-item-box t-flex-wrap">
            <span>头像</span>

            <div class="t-flex-item upload-wrap jp-form-avartar">
                <div class="dest-box t-flex-wrap">
                    <div class="t-flex-item"></div>
                    <img src="${userAvatar!''}">
                </div>
                <input name="file" type="file" form="imageForm"/>
            </div>
        </section>
        <div class="error"></div>
    </div>

    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <input name="isDeal" type="hidden" value="<#if !resume.dealStatus>0<#else>1</#if>"/>

        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
                <input type="hidden" name="avatar">
                <ul class="i-form-list">
                    <#list subList as item>
                        <#if item.fieldName == "NAME" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="name" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName == "GENDER" && item.isShow()>
                            <li class="i-form-sex <#if !item.isCheck()>p-hidden-field</#if>">
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="gender" type="radio" checked value="1" id="pf-sex-man"
                                               style="display:none;"/>
                                        <label for="pf-sex-man" class="i-btn i-btn-s i-btn-cancel">男</label>
                                    </div>
                                    <em>　</em>

                                    <div class="t-flex-item">
                                        <input name="gender" type="radio" value="2" id="pf-sex-woman"
                                               style="display:none;"/>
                                        <label for="pf-sex-woman" class="i-btn i-btn-s i-btn-cancel">女</label>
                                    </div>
                                </section>
                            </li>
                        <#elseif item.fieldName  == "BIRTHDAY" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="birthday" type="text" data-date="ymd"
                                               placeholder="${item.remark!'请选择'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "DOCUMENT_TYPE" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="documentType" item=item type="select" dataMap=AtsConstants.DOCUMENTS_TYPE></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "DOCUMENT_NUMBER" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="documentNumber" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "NATION" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="nation" item=item type="select" dataMap=AtsConstants.NATION defaultValue=0></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "HEIGHT" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="height" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "WEIGHT" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="weight" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "IS_MARRIED" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="isMarried" item=item type="select" dataMap=AtsConstants.MARRIED_TYPE defaultValue=0></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "POLITICS_STATUS" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="politicsStatus" item=item type="select" dataMap=AtsConstants.POLITICS_STATUS defaultValue=0></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "CURRENT_CITY" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item jp-popup-select">
                                        <input name="currentCity" type="hidden" id="fp-location" value=""
                                               />
                                        <label for="fp-location" class="p-select-label select">
                                            <span class="selectedBox">${item.remark!'请选择'}</span>
                                        </label>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "REGISTERED_CITY" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item jp-popup-select">
                                        <input name="registeredCity" type="hidden" id="fp-household" value=""
                                               />
                                        <label for="fp-household" class="p-select-label select">
                                            <span class="selectedBox">${item.remark!'请选择'}</span>
                                        </label>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "MOBILE_NO" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="mobileNo" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "EMAIL" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="email" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "OTHER_TYPE" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="otherType" item=item type="select" dataMap=AtsConstants.OTHER_CONTACTS defaultValue=0></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "OTHER_MANNER" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="t-flex-item">
                                        <input name="otherManner" type="text" placeholder="${item.remark!'请输入'}"
                                               />
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "IS_RECEIVE_MSG" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box t-flex-wrap">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
                                    <@reservedItem name="receiveMsg" item=item type="radio" dataMap=AtsConstants.YES_OR_NO></@reservedItem>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.fieldName  == "PERSONAL_EVALUATION" && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <section class="form-item-box">
                                    <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>

                                    <div class="bottom-ta">
                                <textarea name="personalEvaluation" placeholder="${item.remark!'请输入'}">
                                ${(personalInfo.personalEvaluation)!''}
                                </textarea>
                                    </div>
                                </section>
                                <div class="error"></div>
                            </li>
                        <#elseif item.isCustom() && item.isShow()>
                            <li <#if !item.isCheck()>class="p-hidden-field"</#if>>
                                <#if item.fieldName == "FREE1">
                                    <@freeItem item=item value=(personalInfo.free1)!></@freeItem>
                                <#elseif item.fieldName == "FREE2">
                                    <@freeItem item=item value=(personalInfo.free2)!></@freeItem>
                                <#elseif item.fieldName == "FREE3">
                                    <@freeItem item=item value=(personalInfo.free3)!></@freeItem>
                                <#elseif item.fieldName == "FREE4">
                                    <@freeItem item=item value=(personalInfo.free4)!></@freeItem>
                                <#elseif item.fieldName == "FREE5">
                                    <@freeItem item=item value=(personalInfo.free5)!></@freeItem>
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
<#--<#escape x as x!''>-->
<script type="text/javascript">
    //保存头像
    dj.setPageData({
        'saveAvatarUrl': '/ats/resume/${resume.id}/personal-info/saveAvatar'
    });
    //表单验证以及跳转URL
    dj.setPageData({
        validate: {
            urlFormAction: '/ats/resume/${resume.id}/personal-info/save',
            urlNext: '{msg}',
            auto: 'validate-success',
            strBtnID: 'jp-submit',
            strFormID: 'jp-form',
            nodeType: 'li',
            item: {
                file: {
                    value:" ${userAvatar!''}",//具体的值
                    type: "file",//type: item.,// hidden -> dialog   file
                    remark: "",//填写提示
                    checkedValue: "",//todo  空，需要默认值的话直接写上，
                    name: "头像" ,//列名，
                    reg: "imageFormat",
                    regErr: "格式错误，最大500KB，只能是jpg或png格式",
                    regEmpty:"",//如果空的话，并且必输，按照remark提示
                    regIgnore:"true",
                },
                <#list subList as item>
                    <#if item.fieldName  == "NAME">
                        name: {
                            value:" <#if personalInfo?? >${((personalInfo.name)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",                                //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "fun:name, '请输入姓名(2-5个汉字或者2-40个字母)', '请输入姓名(2-5个汉字或者2-40个字母)'",
                            regErr: "请输入姓名(2-5个汉字或者2-40个字母)",
                            regEmpty:"请输入姓名(2-5个汉字或者2-40个字母)",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "GENDER">                //input
                        gender: {
                            value:"<#if personalInfo??>${(personalInfo.gender)!''}<#else></#if>",//具体的值
                            type: "radio",                               //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "1",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif  item.fieldName  == "BIRTHDAY">//radio
                        birthday: {
                            value:" <#if personalInfo??>${(personalInfo.birthday?string("yyyy-MM-dd"))}<#else></#if>",//具体的值
                            type: "text",                                //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },        //时间选择组件
                    <#elseif item.fieldName  == "DOCUMENT_TYPE">

                        documentType: {
                            value:" <#if personalInfo??>${(personalInfo.documentType)!''}<#else></#if>",//具体的值
                            type: "select",                               //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "1",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },        //select
                    <#elseif item.fieldName  == "DOCUMENT_NUMBER">

                        documentNumber: {
                            value:" <#if personalInfo??>${(personalInfo.documentNumber)?string?js_string}<#else></#if>",//具体的值
                            type: "text",                               //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "fun:docnum",
                            regErr: "请输入正确的证件号码",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "NATION">
//select
                        nation: {
                            value:" <#if personalInfo??>${(personalInfo.nation)!''}<#else></#if>",//具体的值
                            type: "select",                               //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "HEIGHT">
                        //select
                        height: {
                            value:" <#if personalInfo?? && personalInfo.height gt 0>${(personalInfo.height)?js_string}<#else></#if>",//具体的值
                            type: "text",                               //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },          //select
                    <#elseif item.fieldName  == "WEIGHT">

                        weight: {
                            value:" <#if personalInfo?? &&(personalInfo.weight) gt 0>${(personalInfo.weight)?js_string}<#else></#if>",//具体的值
                            type: "text",                               //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },        //select
                    <#elseif item.fieldName  == "IS_MARRIED">

                        isMarried: {
                            value:" <#if personalInfo??>${(personalInfo.isMarried)!''}<#else></#if>",//具体的值
                            type: "select",                                //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },          //select
                    <#elseif item.fieldName  == "POLITICS_STATUS">

                        politicsStatus: {
                            value:" <#if personalInfo??>${(personalInfo.politicsStatus)!''}<#else></#if>",//具体的值
                            type: "select",                                //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "CURRENT_CITY">
//select
                        currentCity: {
                            value: <#if personalInfo?? && (personalInfo.currentCity)??>["${(personalInfo.currentCity)}", "${(dictMap.DICT_CITY.map.get(personalInfo.currentCity).name)}"]<#else>["",""]</#if>,//具体的值
                            type: "dialog",                                //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "REGISTERED_CITY">
//select
                        registeredCity: {
                            value: <#if personalInfo?? && (personalInfo.registeredCity)??>["${(personalInfo.registeredCity)}", "${(dictMap.DICT_CITY.map.get(personalInfo.registeredCity).name)}"]<#else>["",""]</#if>,//具体的值
                            type: "dialog",                                //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "MOBILE_NO">
//select
                        mobileNo: {
                            value:" <#if personalInfo??>${((personalInfo.mobileNo)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",                                //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "tel",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "EMAIL">
//select
                        email: {
                            value:" <#if personalInfo??>${((personalInfo.email)!'')?js_string}<#else></#if>",//具体的值
                            type: "text",                               //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg : "email",
                            regErr : "请输入E-mail",
                            regEmpty : "请输入格式正确的E-mail",
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "OTHER_TYPE">
//select
                        otherType: {
                            value:" <#if personalInfo??>${(personalInfo.otherType)!''}<#else></#if>",//具体的值
                            type: "select",                               //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "OTHER_MANNER">
//select
                        otherManner: {
                            value:" <#if personalInfo??>${(personalInfo.otherManner)!''}<#else></#if>",//具体的值
                            type: "select",                               //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "IS_RECEIVE_MSG">
//select
                        receiveMsg: {
                            value:" <#if personalInfo?? && personalInfo.isReceiveMsg()>1<#else>0</#if>",//具体的值
                            type: "radio",                                  //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "PERSONAL_EVALUATION">
                        personalEvaluation: {
                            value:" <#if personalInfo??>${((personalInfo.personalEvaluation)!'')?js_string}<#else></#if>",//具体的值
                            type: "textarea",                               //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!''}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${(item.showName)!''}",
                            reg: "",
                            regErr: "",
                            regEmpty:"",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "FREE1">

                        free1: {
                            value:" <#if personalInfo??>${((personalInfo.free1)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}",                              //type: item.,// hidden -> dialog   file
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
                            value:" <#if personalInfo??>${((personalInfo.free2)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}",                       //type: item.,// hidden -> dialog   file
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
                            value:" <#if personalInfo??>${((personalInfo.free3)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}",                             //type: item.,// hidden -> dialog   file
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
                            value:" <#if personalInfo??>${((personalInfo.free4)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}",                               //type: item.,// hidden -> dialog   file
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
                            value:" <#if personalInfo??>${((personalInfo.free5)!'')?js_string}<#else></#if>",//具体的值
                            type: "${item.itemDataType?lower_case?replace("_","")}",                               //type: item.,// hidden -> dialog   file
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
    //弹窗筛选
    $.extend(true, dj.getPageData('i-search-select'), {
        'fp-location': {
            url: '/dict/city'
        },
        'fp-household': {
            url: '/dict/city'
        }
    });
</script>
<#--</#escape>-->
</@page>