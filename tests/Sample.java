package demo.sample;

import java.util.ArrayList;
import java.util.List;

/**
 * Testdatei: Javadoc mit {@code Code} und <b>HTML</b>.
 * @param <T> Elementtyp
 */
public class Sample<T extends Comparable<T>> {
    // Zeilenkommentar
    public static final int MAX_ITEMS = 0x7F;
    private static final String LABEL = "Tab\t \"quoted\" \u00e9";
    private final List<T> items = new ArrayList<>();
    protected double ratio = 3.14e-2;
    char letter = '\n';

    /** Berechnet die Fläche. */
    public double area(double width, double height) {
        int unused = 42;
        var result = width * height / 2;
        for (int i = 0; i < MAX_ITEMS; i++) {
            if (i % 2 == 0 && result > 100) continue;
            result += ratio;
        }
        return result;
    }

    @Override
    public String toString() { return LABEL + items; }
    @Deprecated
    public static String legacy(String name) {
        return name == null ? LABEL : name.trim();
    }

    public static void main(String[] args) {
        Sample<String> s = new Sample<>();
        System.out.println(legacy("alpha") + s.area(2, 3) + true + null);
    }
}
