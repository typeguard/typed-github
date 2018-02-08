package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class Author {
    private String email;
    private String name;

    @JsonProperty("email")
    public String getEmail() { return email; }
    @JsonProperty("email")
    public void setEmail(String value) { this.email = value; }

    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }
}
