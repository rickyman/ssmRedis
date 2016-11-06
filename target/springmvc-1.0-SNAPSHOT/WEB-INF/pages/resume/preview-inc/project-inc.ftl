<!-- 项目经验 -->
<div class="p-item-box">
    <div class="item-title">
    ${bigItem.showName}
        <i class="ico ico8"></i>
        <i class="arr"></i>
    </div>
    <#if projects?? && projects?size gt 0>
        <#list projects as project>
            <div class="item-detail">
                <#list bigItem.subList as item>
                    <#if item.fieldName  == "PROJECT_NAME" && item.isShow() && (project.projectName)?? && project.projectName?length gt 0>
                        <div class="t-flex-wrap">
                            <div>${item.showName!''}：</div>
                            <div class="t-flex-item">${project.projectName}</div>
                        </div>
                    <#elseif item.fieldName  == "JOB_NAME" && item.isShow() && (project.jobName)?? && project.jobName?length gt 0>
                        <div class="t-flex-wrap">
                            <div>${item.showName!''}：</div>
                            <div class="t-flex-item">${project.jobName}</div>
                        </div>
                    <#elseif item.fieldName == "PROVE_PERSON" && item.isShow() && (project.provePerson)?? && project.provePerson?length gt 0>
                        <div class="t-flex-wrap">
                            <div>${item.showName!''}：</div>
                            <div class="t-flex-item">${project.provePerson}</div>
                        </div>
                    <#elseif item.fieldName == "TEL" && item.isShow() && (project.tel)?? && project.tel?length gt 0>
                        <div class="t-flex-wrap">
                            <div>${item.showName!''}：</div>
                            <div class="t-flex-item">${project.tel}</div>
                        </div>
                    <#elseif item.fieldName  == "BEGIN_TIME" && item.isShow() && (project.beginTime)??>
                        <div class="t-flex-wrap">
                            <div>${item.showName!''}：</div>
                            <div class="t-flex-item">
                                    ${project.beginTime?string("yyyy-MM")} 至 ${(project.endTime?string("yyyy-MM"))!'今'}
                            </div>
                        </div>
                    <#elseif item.fieldName  == "PROJECT_DESC" && item.isShow() && (project.projectDesc)?? && project.projectDesc?length gt 0>
                        <div class="t-flex-wrap">
                            <div>${item.showName!''}：</div>
                            <div class="t-flex-item">${project.projectDesc!''}</div>
                        </div>
                    <#elseif item.fieldName == "FREE1" && item.isShow()>
                        <@freeItemPreview item=item value=(project.free1)!></@freeItemPreview>
                    <#elseif item.fieldName == "FREE2" && item.isShow()>
                        <@freeItemPreview item=item value=(project.free2)!></@freeItemPreview>
                    <#elseif item.fieldName == "FREE3" && item.isShow()>
                        <@freeItemPreview item=item value=(project.free3)!></@freeItemPreview>
                    <#elseif item.fieldName == "FREE4" && item.isShow()>
                        <@freeItemPreview item=item value=(project.free4)!></@freeItemPreview>
                    <#elseif item.fieldName == "FREE5" && item.isShow()>
                        <@freeItemPreview item=item value=(project.free5)!></@freeItemPreview>
                    </#if>
                </#list>
            </div>
        </#list>
    </#if>
</div>
