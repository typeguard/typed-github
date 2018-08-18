package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class HTML {
    private String href;

    @JsonProperty("href")
    public String getHref() { return href; }
    @JsonProperty("href")
    public void setHref(String value) { this.href = value; }
}
