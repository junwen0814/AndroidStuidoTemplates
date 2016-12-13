package ${packageName};

import android.content.Context;

import com.litesuits.orm.LiteOrm;
import com.litesuits.orm.db.assit.QueryBuilder;
import com.litesuits.orm.db.assit.WhereBuilder;

import java.util.List;

/**
*描述:Lite数据库操作类
*作者:卜俊文
*邮箱:344176791@qq.com
*创建时间: 2016/12/13 16:34
*/
public class LiteDbManager {

    private static LiteOrm liteOrm;

    public static void init(Context context, String DB_NAME) {
        liteOrm = LiteOrm.newSingleInstance(context, DB_NAME);
        liteOrm.setDebugged(true);
    }

    /**
     * 描述:保存对象
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:11
     */
    public static <T> long saveData(T data) {
        return liteOrm.save(data);
    }

    /**
     * 描述:保存列表对象
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:11
     */
    public static <T> int saveData(List<T> data) {
        return liteOrm.save(data);
    }

    /**
     * 描述:删除对象
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:11
     */
    public static <T> int deleteData(T data) {
        return liteOrm.delete(data);
    }

    /**
     * 描述:删除列表对象
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:11
     */
    public static <T> int deleteData(List<T> dataList) {
        return liteOrm.delete(dataList);
    }

    /**
     * 描述:根据条件删除对应对象
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:11
     */
    public static int deleteData(WhereBuilder whereBuilder) {
        return liteOrm.delete(whereBuilder);
    }

    /**
     * 描述:删除数据库
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:12
     */
    public static boolean deleteDataBase() {
        return liteOrm.deleteDatabase();
    }

    /**
     * 描述:删除表中所有数据
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:12
     */
    public static <T> int deleteAll(Class<T> tClass) {
        return liteOrm.deleteAll(tClass);
    }

    /**
     * 描述:删除表
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:27
     */
    public static void deleteTable(String tableName) {
        liteOrm.dropTable(tableName);
    }

    /**
     * 描述:更新对象
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:21
     */
    public static <T> int updateData(T data) {
        return liteOrm.update(data);
    }

    /**
     * 描述:更新一个集合
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:22
     */
    public static <T> int updateData(List<T> dataList) {
        return liteOrm.update(dataList);
    }

    /**
     * 描述:根据对象类型返回对应表的所有数据
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:24
     */
    public static <T> List<T> getData(Class<T> classez) {
        return liteOrm.query(classez);
    }

    /**
     * 描述:根据组合的条件返回对应的集合对象
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:25
     */
    public static <T> List<T> getData(QueryBuilder<T> queryBuilder) {
        return liteOrm.query(queryBuilder);
    }

    /**
     * 描述:返回表中有多少条目
     * 作者:卜俊文
     * 邮箱:344176791@qq.com
     * 创建时间: 2016/12/13 16:27
     */
    public static <T> long getDataCount(Class<T> classez) {
        return liteOrm.queryCount(classez);
    }

}
