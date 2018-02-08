// To use this code, add the following Maven dependency to your project:
//
//     com.fasterxml.jackson.core : jackson-databind : 2.9.0
//
// Import this package:
//
//     import io.quicktype.Converter;
//
// Then you can deserialize a JSON string with
//
//     Map<String, String> data = Converter.APIDataFromJsonString(jsonString);
//     Map<String, String> data = Converter.EmojisFromJsonString(jsonString);
//     Events[] data = Converter.EventsFromJsonString(jsonString);
//     Gists[] data = Converter.GistsFromJsonString(jsonString);
//     Meta data = Converter.MetaFromJsonString(jsonString);

package io.quicktype;

import java.util.Map;
import java.io.IOException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.core.JsonProcessingException;

public class Converter {
    // Serialize/deserialize helpers

    public static Map<String, String> APIDataFromJsonString(String json) throws IOException {
        return getAPIDataObjectReader().readValue(json);
    }

    public static String APIDataToJsonString(Map<String, String> obj) throws JsonProcessingException {
        return getAPIDataObjectWriter().writeValueAsString(obj);
    }

    public static Map<String, String> EmojisFromJsonString(String json) throws IOException {
        return getEmojisObjectReader().readValue(json);
    }

    public static String EmojisToJsonString(Map<String, String> obj) throws JsonProcessingException {
        return getEmojisObjectWriter().writeValueAsString(obj);
    }

    public static Events[] EventsFromJsonString(String json) throws IOException {
        return getEventsObjectReader().readValue(json);
    }

    public static String EventsToJsonString(Events[] obj) throws JsonProcessingException {
        return getEventsObjectWriter().writeValueAsString(obj);
    }

    public static Gists[] GistsFromJsonString(String json) throws IOException {
        return getGistsObjectReader().readValue(json);
    }

    public static String GistsToJsonString(Gists[] obj) throws JsonProcessingException {
        return getGistsObjectWriter().writeValueAsString(obj);
    }

    public static Meta MetaFromJsonString(String json) throws IOException {
        return getMetaObjectReader().readValue(json);
    }

    public static String MetaToJsonString(Meta obj) throws JsonProcessingException {
        return getMetaObjectWriter().writeValueAsString(obj);
    }

    private static ObjectReader APIDataReader;
    private static ObjectWriter APIDataWriter;

    private static void instantiateAPIDataMapper() {
        ObjectMapper mapper = new ObjectMapper();
        APIDataReader = mapper.reader(Map.class);
        APIDataWriter = mapper.writerFor(Map.class);
    }

    private static ObjectReader getAPIDataObjectReader() {
        if (APIDataReader == null) instantiateMapper();
        return APIDataReader;
    }

    private static ObjectWriter getAPIDataObjectWriter() {
        if (APIDataWriter == null) instantiateMapper();
        return APIDataWriter;
    }

    private static ObjectReader EmojisReader;
    private static ObjectWriter EmojisWriter;

    private static void instantiateEmojisMapper() {
        ObjectMapper mapper = new ObjectMapper();
        EmojisReader = mapper.reader(Map.class);
        EmojisWriter = mapper.writerFor(Map.class);
    }

    private static ObjectReader getEmojisObjectReader() {
        if (EmojisReader == null) instantiateMapper();
        return EmojisReader;
    }

    private static ObjectWriter getEmojisObjectWriter() {
        if (EmojisWriter == null) instantiateMapper();
        return EmojisWriter;
    }

    private static ObjectReader EventsReader;
    private static ObjectWriter EventsWriter;

    private static void instantiateEventsMapper() {
        ObjectMapper mapper = new ObjectMapper();
        EventsReader = mapper.reader(Events[].class);
        EventsWriter = mapper.writerFor(Events[].class);
    }

    private static ObjectReader getEventsObjectReader() {
        if (EventsReader == null) instantiateMapper();
        return EventsReader;
    }

    private static ObjectWriter getEventsObjectWriter() {
        if (EventsWriter == null) instantiateMapper();
        return EventsWriter;
    }

    private static ObjectReader GistsReader;
    private static ObjectWriter GistsWriter;

    private static void instantiateGistsMapper() {
        ObjectMapper mapper = new ObjectMapper();
        GistsReader = mapper.reader(Gists[].class);
        GistsWriter = mapper.writerFor(Gists[].class);
    }

    private static ObjectReader getGistsObjectReader() {
        if (GistsReader == null) instantiateMapper();
        return GistsReader;
    }

    private static ObjectWriter getGistsObjectWriter() {
        if (GistsWriter == null) instantiateMapper();
        return GistsWriter;
    }

    private static ObjectReader MetaReader;
    private static ObjectWriter MetaWriter;

    private static void instantiateMetaMapper() {
        ObjectMapper mapper = new ObjectMapper();
        MetaReader = mapper.reader(Meta.class);
        MetaWriter = mapper.writerFor(Meta.class);
    }

    private static ObjectReader getMetaObjectReader() {
        if (MetaReader == null) instantiateMapper();
        return MetaReader;
    }

    private static ObjectWriter getMetaObjectWriter() {
        if (MetaWriter == null) instantiateMapper();
        return MetaWriter;
    }
}
