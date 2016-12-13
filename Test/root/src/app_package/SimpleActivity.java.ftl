package ${packageName};
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.widget.Toast;

public class ${activity} extends AppCompatActivity {

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${simpleLayoutName});
        Toast.makeText(getApplicationContext(), "我是一个模版Activity", Toast.LENGTH_SHORT).show();
    }
}
