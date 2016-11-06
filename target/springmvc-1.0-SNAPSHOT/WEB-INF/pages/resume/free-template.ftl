<#macro reservedItem item type dataMap name defaultValue="">
    <#if item?? && type?? && dataMap?? && dataMap?is_hash>
        <#if type == "radio">
            <#list dataMap.entrySet() as data>
            <div class="i-radio-checked<#if data_index == 0> t-flex-item</#if>">
                <input name="${name}" type="radio" value="${data.key}" <#if value?? && value==data.key> checked </#if> id="${item.fieldName}-${data_index}"
                />
                <label for="${item.fieldName}-${data_index}">
                    <em>${data.value}</em>
                </label>
            </div>
            <#if data_has_next><em>　</em></#if>
            </#list>
        <#elseif type == "checkbox">
            <div class="i-checkbox-wrap t-flex-item">
                <#list dataMap.entrySet() as data>
                    <label for="${item.fieldName}-${data_index}">
                        <input type="checkbox" name="${name}" value="${data.key}" id="${item.fieldName}-${data_index}"
                        />
                        <em>${data.value}</em>
                    </label>
                </#list>
            </div>
        <#elseif type == "select">
            <div class="t-flex-item">
                <select name="${name}" <#if item.isCheck()>class="{required:true,messages:{required:'<#if item.remark?? && item.remark?length gt 0>${item.remark}<#else>请选择</#if>'}}"</#if>>
                    <option value="${defaultValue}"><#if item.remark?? && item.remark?length gt 0>${item.remark}<#else>请选择</#if></option>
                    <#list dataMap.entrySet() as data>
                        <option value="${data.key}">${data.value}</option>
                    </#list>
                </select>
            </div>
        </#if>
    </#if>
</#macro>
<#macro freeItem item value>
    <#if item?? && item.itemDataType??>
    <section class="form-item-box <#if item.itemDataType.code != 2>t-flex-wrap</#if>
     <#if item.itemDataType.code == 4>zh</#if><#if item.itemDataType.code == 3 && item.showName?length gt 21>zh</#if>">
        <span><#if item.isCheck()><i>*</i></#if>${item.showName!''}</span>
        <#if item.itemDataType.code == 1>
            <div class="t-flex-item">
                <input type="text" name="${item.fieldName?lower_case}" value="" maxlength="50"
                       <#if item.remark?? && item.remark?length gt 0>placeholder="${item.remark}"</#if>
                      />
            </div>
        <#elseif item.itemDataType.code == 2>
            <div class="bottom-ta">
                <textarea name="${item.fieldName?lower_case}"
                          <#if item.remark?? && item.remark?length gt 0>placeholder="${item.remark}" <#else>placeholder="请输入"</#if>
                          >
                </textarea>
            </div>
        <#elseif item.itemDataType.code == 3 && item.code?? && item.code?length gt 0 && globalDataService.getCodeDataByTypeKeyword(item.code)??>
            <#assign dataMap = globalDataService.getCodeDataByTypeKeyword(item.code)/>
            <div class="i-radio-checked t-flex-item">

                <#list dataMap.entrySet() as data>
                <label for="${item.fieldName}-${data_index}">

                    <input name="${item.fieldName?lower_case}" type="radio" value="${data.key}" <#if value?? && value==data.key> checked </#if> id="${item.fieldName}-${data_index}" />

                    <em>${data.value}</em>
                </label>
            </#list>
            </div>
        <#elseif item.itemDataType.code == 4 && item.code?? && item.code?length gt 0 && globalDataService.getCodeDataByTypeKeyword(item.code)??>
            <#assign dataMap = globalDataService.getCodeDataByTypeKeyword(item.code)/>
            <div class="i-checkbox-wrap t-flex-item">
                <#list dataMap.entrySet() as data>
                <label for="${item.fieldName}-${data_index}">
                    <input type="checkbox" name="${item.fieldName?lower_case}" value="${data.key}" id="${item.fieldName}-${data_index}"/>
                    <em>${data.value}</em>
                </label>
                </#list>
            </div>
        <#elseif item.itemDataType.code == 5 && item.code?? && item.code?length gt 0 && globalDataService.getCodeDataByTypeKeyword(item.code)??>
            <#assign dataMap = globalDataService.getCodeDataByTypeKeyword(item.code)/>
            <div class="t-flex-item">
                <select name="${item.fieldName?lower_case}" >
                    <option value=""><#if item.remark?? && item.remark?length gt 0>${item.remark}<#else>请选择</#if></option>
                    <#list dataMap.entrySet() as data>
                    <option value="${data.key}">${data.value}</option>
                    </#list>
                </select>
            </div>
        </#if>
    </section>
    </#if>
</#macro>
<#macro freeItemPreview item value>
    <#if item?? && item.itemDataType?? && value?? && value?length gt 0>
    <div class="t-flex-wrap">
        <div>${item.showName!''}：</div>
        <div class="t-flex-item">
            <#if item.itemDataType.code == 1 || item.itemDataType.code == 2>
                ${value}
            <#elseif (item.itemDataType.code == 3 || item.itemDataType.code == 4 || item.itemDataType.code == 5) && item.code?? && item.code?length gt 0 && globalDataService.getCodeDataByTypeKeyword(item.code)??>
                <#assign dataMap = globalDataService.getCodeDataByTypeKeyword(item.code)/>
                <#list dataMap.entrySet() as data>
                    <#assign valueArr= value?split(",")/>
                    <#list valueArr as v>
                        <#if v == data.key>
                            ${data.value}&nbsp;
                        </#if>
                    </#list>
                </#list>
            </#if>
        </div>
    </div>
    </#if>
</#macro>

<#macro freeItemIndex item value>
            <#if item.itemDataType.code == 1 || item.itemDataType.code == 2>
                <#assign freeValue= "${value}"/>
            <#elseif (item.itemDataType.code == 3 || item.itemDataType.code == 4 || item.itemDataType.code == 5) && item.code?? && item.code?length gt 0 && globalDataService.getCodeDataByTypeKeyword(item.code)??>
                <#assign dataMap = globalDataService.getCodeDataByTypeKeyword(item.code)/>
                <#list dataMap.entrySet() as data>
                    <#assign valueArr= value?split(",")/>
                    <#list valueArr as v>
                        <#if v == data.key>
                       <#assign freeValue="${data.value}"/>
                        </#if>
                    </#list>
                </#list>
            </#if>
<tr>
    <td class="name">${(item.showName)!''}：</td>
    <td class="value">${freeValue!'待完善'}</td>
</tr>
</#macro>

