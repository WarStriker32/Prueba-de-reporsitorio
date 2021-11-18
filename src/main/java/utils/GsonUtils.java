package utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class GsonUtils {
    private static GsonUtils sInstance;
    private Gson mGson;

    private GsonUtils() {
        mGson = new GsonBuilder().setPrettyPrinting().create();
    }

    public static GsonUtils getInstance() {
        if (sInstance == null) sInstance = new GsonUtils();
        return sInstance;
    }

    public String toJson(Object object) {
        return mGson.toJson(object);
    }

    public <T> T fromJson(String json, Class<T> classOfT) {
        return mGson.fromJson(json, classOfT);
    }

    public String getContentType() {
        return "application/json; charset=UTF-8";
    }

    public Gson getGson() {
        return mGson;
    }
}
