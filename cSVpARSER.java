import java.io.BufferedReader;
import java.io.IOException;
import java.io.PushbackReader;
import java.io.Reader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

/**
 * Simple RFC4180-like CSV parser.
 * Save as cSVpARSER.JAVA
 */
public class cSVpARSER {
    private final char delimiter;

    public cSVpARSER() {
        this(',');
    }

    public cSVpARSER(char delimiter) {
        this.delimiter = delimiter;
    }

    /**
     * Parse all CSV rows from a Reader. Returns list of String[] (one array per row).
     * Handles quoted fields, doubled quotes for escaping, newlines inside quoted fields,
     * CR, LF, or CRLF line endings.
     */
    public List<String[]> parse(Reader reader) throws IOException {
        try (PushbackReader in = new PushbackReader(new BufferedReader(reader), 1)) {
            List<String[]> rows = new ArrayList<>();
            List<String> row = new ArrayList<>();
            StringBuilder field = new StringBuilder();
            boolean inQuotes = false;

            int r;
            while ((r = in.read()) != -1) {
                char ch = (char) r;

                if (ch == '"') {
                    if (inQuotes) {
                        int next = in.read();
                        if (next == '"') { // escaped quote
                            field.append('"');
                        } else { // end quote
                            inQuotes = false;
                            if (next != -1) in.unread(next);
                        }
                    } else {
                        // start quote (only if field is empty or contains only whitespace? RFC allows)
                        inQuotes = true;
                    }
                    continue;
                }

                if (!inQuotes) {
                    if (ch == delimiter) {
                        row.add(field.toString());
                        field.setLength(0);
                        continue;
                    }

                    if (ch == '\n' || ch == '\r') {
                        row.add(field.toString());
                        field.setLength(0);
                        rows.add(row.toArray(new String[0]));
                        row = new ArrayList<>();
                        // consume LF after CR if present
                        if (ch == '\r') {
                            int next = in.read();
                            if (next != '\n' && next != -1) in.unread(next);
                        }
                        continue;
                    }
                }

                // regular character (including newline when inside quotes)
                field.append(ch);
            }

            // handle last field/row if file didn't end with newline
            // If there's anything in field or row, add them. If completely empty file, return empty list.
            boolean hasContent = field.length() > 0 || !row.isEmpty();
            if (hasContent) {
                row.add(field.toString());
                rows.add(row.toArray(new String[0]));
            }

            return rows;
        }
    }

    /**
     * Convenience: parse from a file path using UTF-8.
     */
    public List<String[]> parseFile(Path path) throws IOException {
        try (Reader r = Files.newBufferedReader(path, StandardCharsets.UTF_8)) {
            return parse(r);
        }
    }

    // Example main for quick testing (can be removed)
    public static void main(String[] args) throws Exception {
        String example = "name,age,quote\n\"Doe, John\",30,\"He said \"\"Hello\"\"\\nand left\"\nAlice,25,NoQuote";
        cSVpARSER parser = new cSVpARSER(',');
        List<String[]> rows = parser.parse(new java.io.StringReader(example));
        for (String[] row : rows) {
            System.out.println(java.util.Arrays.toString(row));
        }
    }
}