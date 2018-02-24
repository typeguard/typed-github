package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.annotation.*;

public enum UserType {
    ORGANIZATION, USER;

    @JsonValue
    public String toValue() {
        switch (this) {
        case ORGANIZATION: return "Organization";
        case USER: return "User";
        }
        return null;
    }

    @JsonCreator
    public static UserType forValue(String value) throws IOException {
        if (value.equals("Organization")) return ORGANIZATION;
        if (value.equals("User")) return USER;
        throw new IOException("Cannot deserialize UserType");
    }
}
