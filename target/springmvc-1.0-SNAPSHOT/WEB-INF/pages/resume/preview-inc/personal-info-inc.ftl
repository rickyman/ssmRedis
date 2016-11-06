<!-- 基本信息 -->
<div class="p-item-box">
    <div class="item-title">
    ${bigItem.showName}
        <i class="ico ico1"></i>
        <i class="arr"></i>
    </div>
    <div class="item-detail">
        <div class="brief-info">
        <#if (resume.personalInfo.name)?? && resume.personalInfo.name?length gt 0>
            <p class="name">${(resume.personalInfo.name)!'待完善'}</p>
        </#if>

        <#if (resume.personalInfo.gender)?? && AtsConstants.GENDER_TYPE.containsKey(resume.personalInfo.gender)>
            <p class="text">
            ${AtsConstants.GENDER_TYPE.get(resume.personalInfo.gender)}
            </p>
        </#if>

        <#if (resume.personalInfo.birthday)??>
            <p class="text">${(resume.personalInfo.birthday?string("yyyy-MM-dd"))!'待完善'}</p>
        </#if>

        <#if (resume.personalInfo.documentType)?? && AtsConstants.DOCUMENTS_TYPE.containsKey(resume.personalInfo.documentType)>
            <p class="text">
            ${AtsConstants.DOCUMENTS_TYPE.get(resume.personalInfo.documentType)} ${resume.personalInfo.documentNumber!''}
            </p>
        </#if>

            <p class="text">
            <#assign separator = false />
            <#if (resume.personalInfo.nation)?? && AtsConstants.NATION.containsKey(resume.personalInfo.nation)>
                <#assign separator = true />
            ${AtsConstants.NATION.get(resume.personalInfo.nation)}
            </#if>
            <#if (resume.personalInfo.height)?? && resume.personalInfo.height gt 0>
                <#if separator>&nbsp;|&nbsp;<#else><#assign separator = true /></#if>
            ${resume.personalInfo.height}cm
            </#if>
            <#if (resume.personalInfo.weight)?? && resume.personalInfo.weight gt 0>
                <#if separator>
                    &nbsp;|&nbsp;
                <#else>
                    <#assign separator = true />
                </#if>
            ${resume.personalInfo.weight}kg
            </#if>
            <#if (resume.personalInfo.isMarried)?? && AtsConstants.MARRIED_TYPE.containsKey(resume.personalInfo.isMarried)>
                <#if separator>
                    &nbsp;|&nbsp;
                <#else>
                    <#assign separator = true />
                </#if>
            ${(AtsConstants.MARRIED_TYPE.get(resume.personalInfo.isMarried))!''}
            </#if>
            <#if (resume.personalInfo.politicsStatus)?? && AtsConstants.POLITICS_STATUS.containsKey(resume.personalInfo.politicsStatus)>
                <#if separator>
                    &nbsp;|&nbsp;
                <#else>
                    <#assign separator = true />
                </#if>

            ${(AtsConstants.POLITICS_STATUS.get(resume.personalInfo.politicsStatus))!''}
            </#if>
            </p>

            <div class="img-box">
                <img src="${userAvatar!''}"/>
            </div>
        </div>
    <#list bigItem.subList as item>
        <#if item.fieldName  == "CURRENT_CITY" && item.isShow() && (resume.personalInfo.currentCity)?? && dictMap.DICT_CITY.map.containsKey(resume.personalInfo.currentCity)>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">
                ${(dictMap.DICT_CITY.map.get(resume.personalInfo.currentCity).name)!''}
                </div>
            </div>
        <#elseif item.fieldName  == "REGISTERED_CITY" && item.isShow() && (resume.personalInfo.registeredCity)?? && dictMap.DICT_CITY.map.containsKey(resume.personalInfo.registeredCity)>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">
                ${dictMap.DICT_CITY.map.get(resume.personalInfo.registeredCity).name}
                </div>
            </div>
        <#elseif item.fieldName  == "MOBILE_NO" && item.isShow() && (resume.personalInfo.mobileNo)?? && resume.personalInfo.mobileNo?length gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">
                ${resume.personalInfo.mobileNo}
                    <#if (resume.personalInfo.isReceiveMsg)??>
                        （<#if resume.personalInfo.isReceiveMsg()><#else>不</#if>接受短信）
                    </#if>
                </div>
            </div>
        <#elseif item.fieldName  == "EMAIL" && item.isShow() && (resume.personalInfo.email)?? && resume.personalInfo.email?length gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">${(resume.personalInfo.email)!''}</div>
            </div>
        <#elseif item.fieldName  == "OTHER_TYPE" && item.isShow() && (resume.personalInfo.otherType)?? &&  AtsConstants.OTHER_CONTACTS.containsKey(resume.personalInfo.otherType)>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">${AtsConstants.OTHER_CONTACTS.get(resume.personalInfo.otherType)}</div>
            </div>
        <#elseif item.fieldName  == "OTHER_MANNER" && item.isShow() && (resume.personalInfo.otherManner)?? && resume.personalInfo.otherManner?length gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">${(resume.personalInfo.otherManner)!''}</div>
            </div>
        <#elseif item.fieldName  == "PERSONAL_EVALUATION" && item.isShow() && (resume.personalInfo.personalEvaluation)?? && (resume.personalInfo.personalEvaluation)?length gt 0>
            <div class="t-flex-wrap">
                <div>${item.showName!''}：</div>
                <div class="t-flex-item">${(resume.personalInfo.personalEvaluation)!''}</div>
            </div>
        <#elseif item.fieldName == "FREE1" && item.isShow()>
            <@freeItemPreview item=item value=(resume.personalInfo.free1)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE2" && item.isShow()>
            <@freeItemPreview item=item value=(resume.personalInfo.free2)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE3" && item.isShow()>
            <@freeItemPreview item=item value=(resume.personalInfo.free3)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE4" && item.isShow()>
            <@freeItemPreview item=item value=(resume.personalInfo.free4)!></@freeItemPreview>
        <#elseif item.fieldName == "FREE5" && item.isShow()>
            <@freeItemPreview item=item value=(resume.personalInfo.free5)!></@freeItemPreview>
        </#if>
    </#list>
    </div>
</div>