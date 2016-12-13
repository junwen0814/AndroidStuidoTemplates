
package ${packageName};
import android.content.Intent;
import android.support.annotation.ColorInt;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import butterknife.ButterKnife;
import qiu.niorgai.StatusBarCompat;

public abstract class BaseActivity extends AppCompatActivity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getLayout());
        ButterKnife.bind(this);
        StatusBarCompat.setStatusBarColor(this, getResources().getColor(R.color.colorPrimary));
        initView();
        initData();
        initListener();
    }

    public abstract int getLayout();

    public abstract void initView();

    public abstract void initData();

    public abstract void initListener();

    /**
     * 设置标题栏颜色
     *
     * @param statusColor
     */
    public void setStatusBarColor(@ColorInt int statusColor) {
        StatusBarCompat.setStatusBarColor(this, statusColor);
    }

    /**
         * 跳转Activity
         *
         * @param tClass
         * @param <T>
         */
        public <T> void jumpToActivity(Class<T> tClass) {
            Intent intent = new Intent(getApplicationContext(), tClass);
            startActivity(intent);
        }

        /**
         * 跳转Activity
         *
         * @param tClass
         * @param <T>
         */
        public <T> void jumpToActivityForResule(Class<T> tClass, int requestCode) {
            Intent intent = new Intent(getApplicationContext(), tClass);
            startActivity(intent);
            startActivityForResult(intent, requestCode);
        }

        /**
         * 跳转Activity
         *
         * @param intent
         * @param <T>
         */
        public <T> void jumpToActivity(Intent intent) {
            startActivity(intent);
        }

        /**
         * 跳转Activity
         *
         * @param intent
         * @param <T>
         */
        public <T> void jumpToActivityForResult(Intent intent, int requestCode) {
           startActivityForResult(intent, requestCode);
        }

}
