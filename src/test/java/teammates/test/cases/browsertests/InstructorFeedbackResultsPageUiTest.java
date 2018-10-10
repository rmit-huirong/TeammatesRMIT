package teammates.test.cases.browsertests;


import teammates.common.util.Const;
import teammates.test.driver.Priority;
import teammates.test.pageobjects.InstructorFeedbackResultsPage;

/**
 * SUT: {@link Const.ActionURIs#INSTRUCTOR_FEEDBACK_RESULTS_PAGE}.
 */
@Priority(-1)
public class InstructorFeedbackResultsPageUiTest extends BaseUiTestCase {

    private InstructorFeedbackResultsPage resultsPage;

    @Override
    protected void prepareTestData() {
        // the actual test data is refreshed before each test method
    }

}
