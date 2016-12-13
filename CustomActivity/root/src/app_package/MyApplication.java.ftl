
package ${packageName};

import android.app.Application;
import android.support.v7.app.AppCompatActivity;
<#if isRecovery>
import com.zxy.recovery.core.Recovery;
</#if>
public class ${applicationName} extends Application{
    @Override
    public void onCreate() {
        super.onCreate();
        <#if isRecovery>
        initCrash(); //捕获异常
        </#if>
    }


    <#if isRecovery>
    /**
    *描述:初始化异常捕获
    *作者:卜俊文
    *邮箱:344176791@qq.com
    *创建时间: 2016/12/6 16:10
    */
    private void initCrash() {
        Recovery.getInstance()
                        .debug(true)
                        .recoverInBackground(false)
                        .silent(false, Recovery.SilentMode.RECOVER_ACTIVITY_STACK)
                        .init(this);
    }
    </#if>
}

