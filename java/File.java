package io.quicktype;

import java.util.Map;
import com.fasterxml.jackson.annotation.*;

public class File {
    private String filename;
    private String type;
    private String language;
    private String rawURL;
    private long size;

    @JsonProperty("filename")
    public String getFilename() { return filename; }
    @JsonProperty("filename")
    public void setFilename(String value) { this.filename = value; }

    @JsonProperty("type")
    public String getType() { return type; }
    @JsonProperty("type")
    public void setType(String value) { this.type = value; }

    @JsonProperty("language")
    public String getLanguage() { return language; }
    @JsonProperty("language")
    public void setLanguage(String value) { this.language = value; }

    @JsonProperty("raw_url")
    public String getRawURL() { return rawURL; }
    @JsonProperty("raw_url")
    public void setRawURL(String value) { this.rawURL = value; }

    @JsonProperty("size")
    public long getSize() { return size; }
    @JsonProperty("size")
    public void setSize(long value) { this.size = value; }
}
