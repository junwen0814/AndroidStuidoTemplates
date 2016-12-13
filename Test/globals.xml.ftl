<?xml version="1.0"?>
<globals>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" /> //此变量引用了template.xml里面的布局文件名字
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <global id="activity" type="string" value="${activityClass}" /> //此变量引用了template,xml里面的类名
    <#include "../common/common_globals.xml.ftl" />
</globals>
