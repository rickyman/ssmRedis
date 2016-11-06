<!-- 实习经历 -->
<div class="p-item-box p-item-box-intern">
    <div class="item-title">
    ${bigItem.showName}
        <i class="ico ico11"></i>
        <i class="arr"></i>
    </div>
<#if internships?? && internships?size gt 0>
    <#list internships as internship>
        <div class="item-detail">
            <#list bigItem.subList as item>
                <#if item.fieldName  == "BEGIN_TIME" && item.isShow() && internship.beginTime??>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">
                            ${internship.beginTime?string("yyyy-MM")} 至 ${(internship.endTime?string("yyyy-MM"))!'今'}
                        </div>
                    </div>
                <#elseif item.fieldName  == "CORP_NAME" && item.isShow() && (internship.corpName)?? && internship.corpName?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${internship.corpName!''}</div>
                    </div>
                <#elseif item.fieldName  == "CORP_SIZE" && item.isShow() && (internship.corpSize)?? && AtsConstants.COMPANY_SCALE.containsKey(internship.corpSize)>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(AtsConstants.COMPANY_SCALE.get(internship.corpSize))!''}</div>
                    </div>
                <#elseif item.fieldName  == "CORP_TYPE" && item.isShow() && (internship.corpType)?? && AtsConstants.COMPANY_TYPE.containsKey(internship.corpType)>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(AtsConstants.COMPANY_TYPE.get(internship.corpType))!''}</div>
                    </div>
                <#elseif item.fieldName  == "INDUSTRY" && item.isShow() && (internship.industry)?? && dictMap.DICT_INDUSTRY.map.containsKey(internship.industry)>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${dictMap.DICT_INDUSTRY.map.get(internship.industry).name}</div>
                    </div>
                <#elseif item.fieldName  == "DEPT" && item.isShow() && (internship.dept)?? && internship.dept?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(internship.dept)!''}</div>
                    </div>
                <#elseif item.fieldName  == "JOB_NAME" && item.isShow() && (internship.jobName)?? && internship.jobName?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(internship.jobName)!''}</div>
                    </div>
                <#elseif item.fieldName  == "PROVE_PERSON" && item.isShow() && (internship.provePerson)?? && internship.provePerson?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(internship.provePerson)!''}</div>
                    </div>
                <#elseif item.fieldName  == "TEL" && item.isShow() && (internship.tel)?? && internship.tel?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${(internship.tel)!''}</div>
                    </div>
                <#elseif item.fieldName  == "IS_OVERSEA" && item.isShow() && internship.isOversea??>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">
                        <#if internship.isOversea()>是<#else>否</#if>
                        </div>
                    </div>
                <#elseif item.fieldName  == "JOB_DESC" && item.isShow() && (internship.jobDesc)?? && internship.jobDesc?length gt 0>
                    <div class="t-flex-wrap">
                        <div>${item.showName!''}：</div>
                        <div class="t-flex-item">${internship.jobDesc!''}</div>
                    </div>
                <#elseif item.fieldName == "FREE1" && item.isShow()>
                    <@freeItemPreview item=item value=(internship.free1)!></@freeItemPreview>
                <#elseif item.fieldName == "FREE2" && item.isShow()>
                    <@freeItemPreview item=item value=(internship.free2)!></@freeItemPreview>
                <#elseif item.fieldName == "FREE3" && item.isShow()>
                    <@freeItemPreview item=item value=(internship.free3)!></@freeItemPreview>
                <#elseif item.fieldName == "FREE4" && item.isShow()>
                    <@freeItemPreview item=item value=(internship.free4)!></@freeItemPreview>
                <#elseif item.fieldName == "FREE5" && item.isShow()>
                    <@freeItemPreview item=item value=(internship.free5)!></@freeItemPreview>
                </#if>
            </#list>
        </div>
    </#list>
</#if>
</div>
