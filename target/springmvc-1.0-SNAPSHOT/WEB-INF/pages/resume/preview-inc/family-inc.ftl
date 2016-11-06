<!-- 家庭成员 -->
<div class="p-item-box">
    <div class="item-title">
    ${bigItem.showName}
        <i class="ico ico15"></i>
        <i class="arr"></i>
    </div>
<#if families?? && families?size gt 0>
    <#list families as family>
        <div class="item-detail">
            <#list bigItem.subList as item>
                <#if item.fieldName == "NAME" && item.isShow() && family.name?? && family.name?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(family.name)!}</div>
                    </div>
                <#elseif item.fieldName == "RELATION" && item.isShow() && family.relation?? && family.relation?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(family.relation)!}</div>
                    </div>
                <#elseif item.fieldName == "CORP" && item.isShow() && family.corp?? && family.corp?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(family.corp)!}</div>
                    </div>
                <#elseif item.fieldName == "DUTIES" && item.isShow() && family.duties?? && family.duties?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(family.duties)!}</div>
                    </div>
                <#elseif item.fieldName == "TEL" && item.isShow() && family.tel?? && family.tel?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(family.tel)!}</div>
                    </div>
                <#elseif item.fieldName == "Email" && item.isShow() && family.email?? && family.email?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(family.email)!}</div>
                    </div>
                <#elseif item.fieldName == "FREE1" && item.isShow()>
                    <@freeItemPreview item=item value=(family.free1)!></@freeItemPreview>
                <#elseif item.fieldName == "FREE2" && item.isShow()>
                    <@freeItemPreview item=item value=(family.free2)!></@freeItemPreview>
                <#elseif item.fieldName == "FREE3" && item.isShow()>
                    <@freeItemPreview item=item value=(family.free3)!></@freeItemPreview>
                <#elseif item.fieldName == "FREE4" && item.isShow()>
                    <@freeItemPreview item=item value=(family.free4)!></@freeItemPreview>
                <#elseif item.fieldName == "FREE5" && item.isShow()>
                    <@freeItemPreview item=item value=(family.free5)!></@freeItemPreview>
                </#if>
            </#list>
        </div>
    </#list>
</#if>
</div>