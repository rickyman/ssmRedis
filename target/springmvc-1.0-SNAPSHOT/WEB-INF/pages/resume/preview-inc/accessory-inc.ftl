<!-- 上传附件 -->
<#if accessory??>
<div class="p-item-box" xmlns="http://www.w3.org/1999/html">
    <div class="item-title">
    ${bigItem.showName}
        <i class="ico ico17"></i>
        <i class="arr"></i>
    </div>
    <div class="item-detail">
    <#list bigItem.subList as item>
        <#if item.fieldName == "IMG" && item.isShow()>
        <div class="t-flex-wrap">
            <div>${item.showName!''}:</div>
            <div class="t-flex-item">
                <#if accessory.isImg() >已上传<#else><span class="c_grey">未上传</span></#if>
            </div>
        </div>
        <#elseif item.fieldName == "REPORT_CARD" && item.isShow()>
        <div class="t-flex-wrap">
            <div>${item.showName!''}:</div>
            <div class="t-flex-item">
                <#if accessory.isReportCard() >已上传<#else><span class="c_grey">未上传</span></#if>
            </div>
        </div>
        <#elseif item.fieldName == "CERTIFICATE" && item.isShow()>
        <div class="t-flex-wrap">
            <div>${item.showName!''}:</div>
            <div class="t-flex-item">
                <#if accessory.isCertificate() >已上传<#else><span class="c_grey">未上传</span></#if>
            </div>
        </div>
        <#elseif item.fieldName == "RESUME_FILE" && item.isShow()>
        <div class="t-flex-wrap">
            <div>${item.showName!''}:</div>
            <div class="t-flex-item">
                <#if accessory.isResumeFile() >已上传<#else><span class="c_grey">未上传</span></#if>
            </div>
        </div>
        </#if>
    </#list>
    </div>
</div>
</#if>