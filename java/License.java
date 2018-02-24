package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class License {
    private String key;
    private String name;
    private Object spdxID;
    private Object url;

    @JsonProperty("key")
    public String getKey() { return key; }
    @JsonProperty("key")
    public void setKey(String value) { this.key = value; }

    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }

    @JsonProperty("spdx_id")
    public Object getSpdxID() { return spdxID; }
    @JsonProperty("spdx_id")
    public void setSpdxID(Object value) { this.spdxID = value; }

    @JsonProperty("url")
    public Object getURL() { return url; }
    @JsonProperty("url")
    public void setURL(Object value) { this.url = value; }
}
