<@page title=" ${bigItem.showName}" prev="/ats/resume/${resumeId!0}/affix/index" assets=[
"/up/dj-mobile/m-dajie/css/online-apply/form-common.css",
"/up/dj-mobile/m-dajie/css/online-apply/upload-file.css",
"/up/dj-mobile/m-dajie/js/online-apply/upload-file.js"
]>

<div class="p-oa-form-wrap">
    <!-- 上传 S -->
    <form class="i-form-wrap p-form" id="jp-form" action="http://fs1u.dajie.com/file/upload.php" enctype="multipart/form-data" method="post" target="uploadFrame">
        <div class="p-wrap i-content-block">
            <div class="p-upload-wrap">
                <div class="btn">
                    <span><#if type == "IMAGE">上传照片<#else>上传文件</#if></span>
                </div>
                <input type="file" name="file" id="upload">
                <input type="hidden" name="type" value="file" />
                <div class="uploaded">
                <#--如果已经上传过附件-->
                <#if affix??>
                    <#--附件类型为照片时，显示图片-->
                    <#if type == "IMAGE">
                        <img src="${affix.saveName!}"/>
                    <#--附件类型为成绩单，证书或文件时，显示文件名-->
                    <#else>
                        <p class="attach">${affix.oldName!}</p>
                    </#if>
                </#if>
                </div>
                <div class="desc">
                    <dl>
                        <dt>上传说明：</dt>
                        <dd><#if type == "IMAGE">最大500KB，只能是jpg或png格式。<#else>最大500KB，手机端仅支持jpg和png格式，想上传其他格式附件请登录PC端操作。</#if></dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class="p-btn-wrap t-flex-wrap">
            <div class="t-flex-item">
                <a href="javascript:;" data-url="/ats/resume/${resumeId!0}/affix/delete?type=${type}" class="i-btn i-btn-cancel">取消上传</a>
            </div>
            <div class="t-flex-item">
                <a href="/ats/resume/${resumeId!0}/affix/index" class="i-btn">返回前页</a>
            </div>
        </div>
    </form>
    <iframe name="uploadFrame" id="uploadFrame" style="display:none;"></iframe>
    <!-- 上传 E -->
    <!-- 保存 S -->
    <form id="jp-save-form" action="/ats/resume/${resumeId!0}/affix/save?type=${type!}" method="post">
        <input type="hidden" name="fileName" id="fileName">
        <input type="hidden" name="fileUrl" id="fileUrl">
    </form>
    <!-- 保存 E -->
</div>

</@page>