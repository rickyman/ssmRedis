<!-- 奖励活动 -->
<div class="p-item-box">
    <div class="item-title">
    ${bigItem.showName}
        <i class="ico ico12"></i>
        <i class="arr"></i>
    </div>
    <div class="item-detail">
    <#list bigItem.subList as item>
        <#if item.fieldName == "IS_STU_LEADER" && item.isShow() && (reward.isStuLeader)?? && AtsConstants.IS_STU_LEADER.containsKey(reward.isStuLeader)>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">
                    <#if (reward.isStuLeader)?? && reward.isStuLeader == 9>
                        <#if (reward.duties)?? && reward.duties?length gt 0>
                        ${reward.duties!}
                        <#else>
                            待完善
                        </#if>
                    <#else>
                    ${AtsConstants.IS_STU_LEADER.get(reward.isStuLeader)}
                    </#if>
                </div>
            </div>
        <#elseif item.fieldName == "OTHER_REWARD" && item.isShow() && (reward.otherReward)?? && reward.otherReward?length gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">${reward.otherReward}</div>
            </div>
        <#elseif item.fieldName == "SCHOOL_ACTIVITY" && item.isShow() && (reward.schoolActivity)?? && reward.schoolActivity?length gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">${reward.schoolActivity}</div>
            </div>
        <#elseif item.fieldName == "SCHOLARSHIP" && item.isShow()>
            <#list 1..3 as i>
                <#if (reward.getScholarship(i))?? && reward.getScholarship(i) gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">
                        ${(reward.getReceiveTime(i)?string("yyyy-MM-dd"))!''}
                            <#if (reward.getReceiveTime(i))??> | </#if>
                            <#if (reward.getScholarship(i))?? && AtsConstants.SCHOLARSHIP.containsKey(reward.getScholarship(i))>
                            ${(AtsConstants.SCHOLARSHIP.get(reward.getScholarship(i)))!''}
                            <#else>
                                待完善
                            </#if>
                            <#if (reward.getLevel(i))?? && AtsConstants.SCHOLARSHIP_LEVEL.containsKey(reward.getLevel(i))>
                                | ${(AtsConstants.SCHOLARSHIP_LEVEL.get(reward.getLevel(i)))!''}
                            </#if>
                        </div>
                    </div>
                </#if>
            </#list>
        <#elseif item.fieldName == "FREE1" && item.isShow()>
            <@freeItemPreview item=item value=(reward.free1)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE2" && item.isShow()>
            <@freeItemPreview item=item value=(reward.free2)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE3" && item.isShow()>
            <@freeItemPreview item=item value=(reward.free3)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE4" && item.isShow()>
            <@freeItemPreview item=item value=(reward.free4)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE5" && item.isShow()>
            <@freeItemPreview item=item value=(reward.free5)!></@freeItemPreview>
        </#if>
    </#list>
    </div>
</div>
