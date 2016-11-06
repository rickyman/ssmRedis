<!-- 其他信息 -->
<div class="p-item-box">
    <div class="item-title">
    ${bigItem.showName}
        <i class="ico ico16"></i>
        <i class="arr"></i>
    </div>
<#if others??>
    <div class="item-detail">
        <#list bigItem.subList as item>
            <#if item.fieldName == "APP_TYPE" && item.isShow() && others.appType??>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <#assign appTypeMap = AtsConstants.PROPOSER_TYPE/>
                    <div class="t-flex-item">${(appTypeMap.get(others.appType))!}</div>
                </div>
            <#elseif item.fieldName == "IS_CANASSIGN" && item.isShow()>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item"><#if others.isCanassign()>是<#else>否</#if></div>
                </div>
            <#elseif item.fieldName == "CITY" && item.isShow() && others.city?? && others.city?length gt 0>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">
                    ${(dictItemMap.DICT_CITY.getNamesByIds(others.city))!}
                    </div>
                </div>
            <#elseif item.fieldName == "SALARY" && item.isShow() && others.salary?? && others.salary gt 0>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <#assign salaryMap = AtsConstants.SALARY/>
                    <div class="t-flex-item">${(salaryMap.get(others.salary))!}</div>
                </div>
            <#elseif item.fieldName == "WORK_TIME" && item.isShow() && others.workTime?? && others.workTime?length gt 0>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">${(others.workTime)!}</div>
                </div>
            <#elseif item.fieldName == "IS_FRIEND_IN" && item.isShow()>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item"><#if others.isFriendIn()>是<#else>否</#if></div>
                </div>
            <#elseif item.fieldName == "FRIEND_INFO" && item.isShow() && others.isFriendIn() && others.friendInfo?? && others.friendInfo?length gt 0>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">${(others.friendInfo)!}</div>
                </div>
            <#elseif item.fieldName == "INFORMATION_FROM" && item.isShow() && others.informationFrom?? && others.informationFrom?length gt 0>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">${(others.informationFrom)!}</div>
                </div>
            <#elseif item.fieldName == "FREE1" && item.isShow()>
                <@freeItemPreview item=item value=(others.free1)!></@freeItemPreview>
            <#elseif item.fieldName == "FREE2" && item.isShow()>
                <@freeItemPreview item=item value=(others.free2)!></@freeItemPreview>
            <#elseif item.fieldName == "FREE3" && item.isShow()>
                <@freeItemPreview item=item value=(others.free3)!></@freeItemPreview>
            <#elseif item.fieldName == "FREE4" && item.isShow()>
                <@freeItemPreview item=item value=(others.free4)!></@freeItemPreview>
            <#elseif item.fieldName == "FREE5" && item.isShow()>
                <@freeItemPreview item=item value=(others.free5)!></@freeItemPreview>
            </#if>
        </#list>
    </div>
</#if>
</div>
