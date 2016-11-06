<!-- 教育背景 -->
<div class="p-item-box p-item-box-edu">
    <div class="item-title">
    ${bigItem.showName}
        <i class="ico ico6"></i>
        <i class="arr"></i>
    </div>
<#list educations as education>
    <div class="item-detail">
        <#list bigItem.subList as item>
            <#if item.fieldName == "BEGIN_TIME" && item.isShow() && (education.beginTime)??>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">${(education.beginTime?string("yyyy-MM"))!''}
                        - ${(education.endTime?string("yyyy-MM"))!'今'}</div>
                </div>
            <#elseif item.fieldName == "SCHOOL" && item.isShow()>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">
                        <#assign separator=false/>
                        <#if (education.school)??>
                        ${(education.school)!'待完善'}
                            <#assign separator = true/>
                        </#if>
                        <#if (education.major)?? && dictMap.DICT_MAJOR.map.containsKey(education.major) >
                            <#if separator>&nbsp;|&nbsp;<#else><#assign separator = true /></#if>
                        ${dictMap.DICT_MAJOR.map.get(education.major).name}
                        </#if>
                        <#if (education.majorName)??>
                            <#if separator>&nbsp;|&nbsp;<#else><#assign separator = true /></#if>
                        ${(education.majorName)!'待完善'}
                        </#if>
                        <#if education.education?? && AtsConstants.ACADEMIC.containsKey(education.education)>
                            <#if separator>&nbsp;|&nbsp;<#else><#assign separator = true /></#if>
                        ${AtsConstants.ACADEMIC.get(education.education)}
                        </#if>
                        <#if (education.degree)?? && AtsConstants.DEGREE.containsKey(education.degree)>
                            (${AtsConstants.DEGREE.get(education.degree)})
                        </#if>
                    </div>
                </div>
            <#elseif item.fieldName == "RANK" && item.isShow() && (education.rank)?? && AtsConstants.GRADE_ORDER.containsKey(education.rank)>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">${AtsConstants.GRADE_ORDER.get(education.rank)}</div>
                </div>
            <#elseif item.fieldName == "GPA" && item.isShow() && (education.gpa)?? && education.gpa gt 0>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">${education.gpa}</div>
                </div>
            <#elseif item.fieldName == "PROVE_PERSON" && item.isShow() && (education.provePerson)?? && education.provePerson?length gt 0>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">${education.provePerson!''} <#if education.tel??>
                        | ${education.tel!''}</#if></div>
                </div>
            <#elseif item.fieldName == "IS_OVERSEA" && item.isShow() && (education.isOversea)??>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">
                        <#if education.isOversea()>是<#else>否</#if>
                    </div>
                </div>
            <#elseif item.fieldName == "MAJOR_CLASS" && item.isShow() && (education.majorClass)?? && education.majorClass?length gt 0>
                <div class="t-flex-wrap">
                    <div>${item.showName!''}：</div>
                    <div class="t-flex-item">
                    ${education.majorClass!''}
                    </div>
                </div>
            <#elseif item.fieldName == "FREE1" && item.isShow()>
                <@freeItemPreview item=item value=(education.free1)!></@freeItemPreview>
            <#elseif item.fieldName == "FREE2" && item.isShow()>
                <@freeItemPreview item=item value=(education.free2)!></@freeItemPreview>
            <#elseif item.fieldName == "FREE3" && item.isShow()>
                <@freeItemPreview item=item value=(education.free3)!></@freeItemPreview>
            <#elseif item.fieldName == "FREE4" && item.isShow()>
                <@freeItemPreview item=item value=(education.free4)!></@freeItemPreview>
            <#elseif item.fieldName == "FREE5" && item.isShow()>
                <@freeItemPreview item=item value=(education.free5)!></@freeItemPreview>
            </#if>
        </#list>
    </div>
</#list>
</div>
