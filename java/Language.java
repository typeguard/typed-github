package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

public enum Language {
    APEX, CSS, JAVA_SCRIPT, MARKDOWN, TEXT;

    @JsonValue
    public String toValue() {
        switch (this) {
        case APEX: return "Apex";
        case CSS: return "CSS";
        case JAVA_SCRIPT: return "JavaScript";
        case MARKDOWN: return "Markdown";
        case TEXT: return "Text";
        }
        return null;
    }

    @JsonCreator
    public static Language forValue(String value) throws IOException {
        if (value.equals("Apex")) return APEX;
        if (value.equals("CSS")) return CSS;
        if (value.equals("JavaScript")) return JAVA_SCRIPT;
        if (value.equals("Markdown")) return MARKDOWN;
        if (value.equals("Text")) return TEXT;
        throw new IOException("Cannot deserialize Language");
    }
}
