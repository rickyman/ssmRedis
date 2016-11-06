<@page title=" ${bigItem.showName}(${msg})" prev="/ats/resume/${resumeId!0}" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/form-common.css",
"/up/dj-mobile/m-dajie/js/online-apply/form-common.js",
"/up/dj-mobile/m-dajie/js/online-apply/upload-form.js"
]>

<div class="p-oa-form-wrap">
    <form class="i-form-wrap p-form" id="jp-form" action="" method="post">
        <div class="p-wrap i-content-block i-oa-form">
            <fieldset class="p-form-area">
           <#list bigItem.subList as item>
                <ul class="i-form-list">
               <#if item.fieldName == "IMG" && item.isShow()>
                    <li>
                        <section class="form-item-box t-flex-wrap">
                            <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}:</span>
                            <div class="t-flex-item jp-upload-item" data-url="/ats/resume/${resumeId!0}/affix/upload?type=IMAGE">
                                <input name="avatar" type="text" value="" placeholder="请上传"
                                />
                            </div>
                        </section>
                        <div class="error"></div>
                    </li>
               <#elseif item.fieldName == "REPORT_CARD" && item.isShow()>
                    <li>
                        <section class="form-item-box t-flex-wrap">
                            <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}:</span>
                            <div class="t-flex-item jp-upload-item" data-url="/ats/resume/${resumeId!0}/affix/upload?type=REPORT">
                                <input name="grade" type="text" placeholder="请上传"
                                />
                            </div>
                        </section>
                        <div class="error"></div>
                    </li>
               <#elseif item.fieldName == "CERTIFICATE" && item.isShow()>
                    <li>
                        <section class="form-item-box t-flex-wrap">
                            <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}:</span>
                            <div class="t-flex-item jp-upload-item" data-url="/ats/resume/${resumeId!0}/affix/upload?type=CERTIFICATE">
                                <input name="certificate" type="text" placeholder="请上传"
                            />
                            </div>
                        </section>
                        <div class="error"></div>
                    </li>
               <#elseif item.fieldName == "RESUME_FILE" && item.isShow()>
                    <li>
                        <section class="form-item-box t-flex-wrap">
                            <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}:</span>
                            <div class="t-flex-item jp-upload-item" data-url="/ats/resume/${resumeId!0}/affix/upload?type=RESUME_FILE">
                                <input name="file" type="text" placeholder="请上传"
                                       />
                            </div>
                        </section>
                        <div class="error"></div>
                    </li>
               </#if>
                </ul>
    </#list>
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
    dj.setPageData({
        validate : {
            auto : 'validate-success',
            strBtnID : 'jp-submit',
            strFormID : 'jp-form',
            urlFormAction : '/ats/resume/${resumeId!0}/affix/submit',
            urlNext : '/ats/resume/${resumeId!0}?corpId=${corpId!0}',
            nodeType : 'li',
            item : {
                <#list bigItem.subList as item>
                    <#if item.fieldName  == "IMG">
                        avatar: {
                            value: "<#if crRAccessory?? && crRAccessory.isImg()>已上传<#else></#if>",//具体的值
                            type: "text",//type: item.,// hidden -> dialog   file
                            isCheck: "${item.isCheck()?string("true","false")}",//是否必输
                            remark: "${(item.remark)!'请上传'}",//填写提示
                            checkedValue: "",// 空，需要默认值的话直接写上，
                            name: "${item.showName}",
                            reg: "",
                            regErr: "",
                            regEmpty: "请上传",//如果空的话，并且必输，按照remark提示
                            regIgnore: "${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "REPORT_CARD">
                        grade: {
                            value: "<#if crRAccessory?? && crRAccessory.isReportCard()>已上传<#else></#if>",//具体的值
                            type: "text" ,                              //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!'请上传'}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"请上传",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "CERTIFICATE">
                        certificate: {
                            value: "<#if crRAccessory?? && crRAccessory.isCertificate()>已上传<#else></#if>",//具体的值
                            type: "text" ,                              //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!'请上传'}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"请上传",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        },
                    <#elseif item.fieldName  == "RESUME_FILE">
                        file: {
                            value: "<#if crRAccessory?? && crRAccessory.isResumeFile()>已上传<#else></#if>",//具体的值
                            type: "text" ,                              //type: item.,// hidden -> dialog   file
                            remark: "${(item.remark)!'请上传'}",//填写提示
                            checkedValue: "",//todo  空，需要默认值的话直接写上，
                            name: "${item.showName}" ,
                            reg: "",
                            regErr: "",
                            regEmpty:"请上传",//如果空的话，并且必输，按照remark提示
                            regIgnore:"${item.isCheck()?string("false","true")}"
                        }
                    </#if>
                </#list>}
        }
    });

</script>
</@page>