package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class License {
    private String key;
    private String name;
    private String spdxID;
    private String url;
    private String nodeID;

    @JsonProperty("key")
    public String getKey() { return key; }
    @JsonProperty("key")
    public void setKey(String value) { this.key = value; }

    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }

    @JsonProperty("spdx_id")
    public String getSpdxID() { return spdxID; }
    @JsonProperty("spdx_id")
    public void setSpdxID(String value) { this.spdxID = value; }

    @JsonProperty("url")
    public String getURL() { return url; }
    @JsonProperty("url")
    public void setURL(String value) { this.url = value; }

    @JsonProperty("node_id")
    public String getNodeID() { return nodeID; }
    @JsonProperty("node_id")
    public void setNodeID(String value) { this.nodeID = value; }
}
