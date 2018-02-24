package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

public enum FileType {
    APPLICATION_JAVASCRIPT, TEXT_CSS, TEXT_PLAIN;

    @JsonValue
    public String toValue() {
        switch (this) {
        case APPLICATION_JAVASCRIPT: return "application/javascript";
        case TEXT_CSS: return "text/css";
        case TEXT_PLAIN: return "text/plain";
        }
        return null;
    }

    @JsonCreator
    public static FileType forValue(String value) throws IOException {
        if (value.equals("application/javascript")) return APPLICATION_JAVASCRIPT;
        if (value.equals("text/css")) return TEXT_CSS;
        if (value.equals("text/plain")) return TEXT_PLAIN;
        throw new IOException("Cannot deserialize FileType");
    }
}
