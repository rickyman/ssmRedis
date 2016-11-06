<!-- 语言能力 -->
<div class="p-item-box">
    <div class="item-title">
    ${bigItem.showName}
        <i class="ico ico5"></i>
        <i class="arr"></i>
    </div>
    <div class="item-detail">
    <#list bigItem.subList as item>
        <#if item.fieldName == "ENG_LEVEL" && item.isShow() && (language.engLevel)?? && AtsConstants.ENG_LEVEL.containsKey(language.engLevel)>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">
                ${AtsConstants.ENG_LEVEL.get(language.engLevel)}&nbsp;${(language.engScore)!''}
                </div>
            </div>
        <#elseif item.fieldName == "TOEFL" && item.isShow() && (language.toefl)?? && language.toefl gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">
                ${language.toefl!}
                </div>
            </div>
        <#elseif item.fieldName == "GRE" && item.isShow() && (language.gre)?? && language.gre gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">
                ${language.gre}
                </div>
            </div>
        <#elseif item.fieldName == "GMAT" && item.isShow() && (language.gmat)?? && language.gmat gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">
                ${language.gmat!}
                </div>
            </div>
        <#elseif item.fieldName == "IELTS" && item.isShow() && (language.ielts)?? && language.ielts gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">
                ${language.ielts!''}
                </div>
            </div>
        <#elseif item.fieldName == "TOEIC" && item.isShow() && (language.toeic)?? && language.toeic gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">
                ${language.toeic!}
                </div>
            </div>
        <#elseif item.fieldName == "FOREIN_LAN" && item.isShow()??>
            <#list 1..3 as i>
                <#if (language.getForeinLan(i))?? && AtsConstants.LANG_TYPE.containsKey(language.getForeinLan(i))>
                    <div class="t-flex-wrap">
                        <div>${AtsConstants.LANG_TYPE.get(language.getForeinLan(i))!''}：</div>
                        <div class="t-flex-item">
                            <#if language.getReadWrite(i)?? && AtsConstants.RW_ABILITY.containsKey(language.getReadWrite(i))>
                            读写（${(AtsConstants.RW_ABILITY.get(language.getReadWrite(i)))!'待完善'}）、
                            </#if>
                            <#if language.getListenSpeak(i)?? && AtsConstants.LT_ABILITY.containsKey(language.getListenSpeak(i))>
                            听说（${(AtsConstants.LT_ABILITY.get(language.getListenSpeak(i)))!'待完善'}）
                            </#if>
                            <#if language.getCertificate(i)?? && AtsConstants.LINKAGE_LANG.get(language.getForeinLan(i)).containsKey(language.getCertificate(i))>
                            、证书（${(AtsConstants.LINKAGE_LANG.get(language.getForeinLan(i)).get(language.getCertificate(i)))!'待完善'}）
                            </#if>
                        </div>
                    </div>
                </#if>
            </#list>
        <#elseif item.fieldName == "FREE1" && item.isShow()>
            <@freeItemPreview item=item value=(language.free1)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE2" && item.isShow()>
            <@freeItemPreview item=item value=(language.free2)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE3" && item.isShow()>
            <@freeItemPreview item=item value=(language.free3)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE4" && item.isShow()>
            <@freeItemPreview item=item value=(language.free4)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE5" && item.isShow()>
            <@freeItemPreview item=item value=(language.free5)!></@freeItemPreview>
        </#if>
    </#list>
    </div>
</div>