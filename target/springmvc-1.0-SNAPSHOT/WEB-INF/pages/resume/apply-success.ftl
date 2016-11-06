<@page prev="/ats/resume/${resume.id}?corpId=${(resume.corpId)!}" title="申请表" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/succ.css"
]>
<ul class="i-top-tabs t-flex-wrap">
    <li class="t-flex-item">
        <a href="/ats/wish/list?corpId=${(resume.corpId)!}">志愿</a>
    </li>
    <li class="t-flex-item curr">
        <a href="/ats/resume/${(resume.id)!}">申请表</a>
    </li>
</ul>
<div class="p-succ-wrap">
    <div class="p-large-text">
        <span>恭喜，申请表提交成功！</span>
    </div>
    <p class="p-small-text">
        后续进展请留意网站内通知，或到您的电子邮箱（${(resume.personalInfo.email)!''}）查看。
    </p>
    <a href="<#if wzCorpId??>http://${configs['domains.wzp.mobile']}/jobapply/feedback?wzp=true&wzpCorpId=${wzCorpId}<#else>/jobapply/feedback</#if>" class="i-btn">查看更多投递反馈</a>
    <p class="p-more-link">
        <a href="${applySuccessUrl}">继续编辑申请表</a>
    </p>
</div>
</@page>