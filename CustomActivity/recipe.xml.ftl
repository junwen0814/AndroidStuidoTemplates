<?xml version="1.0"?>
<recipe>


    <dependency mavenUrl="com.android.support:support-v4:${targetApi}.+" />
	<dependency mavenUrl="com.android.support:appcompat-v7:${targetApi}.+"/>

    <dependency mavenUrl="com.jakewharton:butterknife:7.0.1" /> //ButterKnife控件绑定

    <dependency mavenUrl="com.github.niorgai:StatusBarCompat:2.1.1" /> //StatusBarCompat沉浸式

    <dependency mavenUrl="com.android.support:design:24.2.1" /> //Desingn控件

	<#if isRecovery>
	<dependency mavenUrl="com.zxy.android:recovery:0.0.8" /> //异常捕获
    </#if>

    <#if isCardview>
    <dependency mavenUrl="com.android.support:cardview-v7:23.4.0" /> //CardView卡片样式
    </#if>

    <#if isGlide>
    <dependency mavenUrl="com.github.bumptech.glide:glide:3.7.0" /> //Glide图片加载
    </#if>

    <#if isRvadapter>
    <dependency mavenUrl="com.zhy:base-rvadapter:3.0.3" /> //万能RecycleView适配器 : https://github.com/hongyangAndroid/baseAdapter
    </#if>

    <#if isXRecyclerview>
        <dependency mavenUrl="com.jcodecraeer:xrecyclerview:1.3.2" /> //XRecyclerview : https://github.com/jianghejie/XRecyclerView
   </#if>

    <#if isKlog>
        <dependency mavenUrl="com.github.zhaokaiqiang.klog:library:1.6.0" /> //Klog日志库 : https://github.com/ZhaoKaiQiang/KLog
   </#if>

    <#if isSublimepickerlibrary>
           <dependency mavenUrl="com.appeaser.sublimepickerlibrary:sublimepickerlibrary:2.1.1" /> //Material样式的日期选择器 : https://github.com/vikramkakkar/SublimePicker
      </#if>

       <#if isSwitchbutton>
           <dependency mavenUrl="com.kyleduo.switchbutton:library:1.4.4" /> //开关切换控件 : https://github.com/kyleduo/SwitchButton
      </#if>

     <#if isBottomdialog>
           <dependency mavenUrl="me.shaohui:bottomdialog:1.1.9" /> //至下往上自定义弹窗 : https://github.com/shaohui10086/BottomDialog
      </#if>

      <#if isChangeskin>
                 <dependency mavenUrl="com.zhy:changeskin:4.0.2" /> //应用换肤 : https://github.com/hongyangAndroid/AndroidChangeSkin
       </#if>

        <#if isEventbus>
                        <dependency mavenUrl="org.greenrobot:eventbus:3.0.0" /> //Eventbus
              </#if>

        <#if isFastjson>
                        <dependency mavenUrl="com.alibaba:fastjson:1.2.12" /> //Fastjson
              </#if>

          <#if isZxing>
                                  <dependency mavenUrl="me.dm7.barcodescanner:zxing:1.8.4" /> //Zxing
                        </#if>

  <merge from="root/AndroidManifest.xml.ftl"
               to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

   <merge from="root/res/values/manifest_strings.xml.ftl"
               to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

  <merge from="root/res/values/styles.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

 <merge from="root/res/values/colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/colors.xml" />

    <#if isLiteOrm>
    <instantiate from="root/src/app_package/LiteDbManager.java.ftl"
         	to="${escapeXmlAttribute(srcOut)}/LiteDbManager.java" />
    </#if>

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
         	to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="root/src/app_package/BaseActivity.java.ftl"
             	to="${escapeXmlAttribute(srcOut)}/BaseActivity.java" />

<instantiate from="root/src/app_package/BaseFragment.java.ftl"
             	to="${escapeXmlAttribute(srcOut)}/BaseFragment.java" />

    <instantiate from="root/res/layout/activity_main.xml.ftl"
    		to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />


</recipe>
