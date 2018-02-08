package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

public enum GravatarID {
    EMPTY;

    @JsonValue
    public String toValue() {
        switch (this) {
        case EMPTY: return "";
        }
        return null;
    }

    @JsonCreator
    public static GravatarID forValue(String value) throws IOException {
        if (value.equals("")) return EMPTY;
        throw new IOException("Cannot deserialize GravatarID");
    }
}
