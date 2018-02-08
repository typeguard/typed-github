package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

public enum Type {
    USER;

    @JsonValue
    public String toValue() {
        switch (this) {
        case USER: return "User";
        }
        return null;
    }

    @JsonCreator
    public static Type forValue(String value) throws IOException {
        if (value.equals("User")) return USER;
        throw new IOException("Cannot deserialize Type");
    }
}
