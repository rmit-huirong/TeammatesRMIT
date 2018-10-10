package teammates.common.util.retry;

import teammates.storage.entity.Course;

import java.util.Arrays;
import java.util.List;

/**
 * This is a helper class to hold nationality-related functions.
 */
public final class CourseHelper     {

    /**
     * This list of nationalities was created for the dropdown list and contains
     * 198 nationalities and an 'Other' option.
     * reference : "https://mytaskhelper.com/forums/5-faq-s/topics/98-nationality-dropdown-list"
     */
    private static final String[] Courses = {
            "Afghan",
            "None",
            "Other"
    };

    private CourseHelper() {
        // utility class
    }

    /**
     * Returns with the nationalities list.
     */
    public static List<String> getCourses() {
        return Arrays.asList(Courses);
    }

}
