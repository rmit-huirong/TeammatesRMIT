package teammates.test.cases.browsertests;

import java.io.File;

import org.openqa.selenium.By;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import teammates.common.datatransfer.attributes.FeedbackQuestionAttributes;
import teammates.common.util.AppUrl;
import teammates.common.util.Const;
import teammates.common.util.JsonUtils;
import teammates.common.util.SanitizationHelper;
import teammates.test.driver.BackDoor;
import teammates.test.driver.FileHelper;
import teammates.test.driver.Priority;
import teammates.test.driver.TestProperties;
import teammates.test.pageobjects.InstructorFeedbackEditPage;
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
