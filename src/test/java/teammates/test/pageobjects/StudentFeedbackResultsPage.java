package teammates.test.pageobjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.ArrayList;
import java.util.List;

public class StudentFeedbackResultsPage extends AppPage {

    public StudentFeedbackResultsPage(Browser browser) {
        super(browser);
    }

    @Override
    protected boolean containsExpectedPageContents() {
        return getPageSource().contains("<h1>Feedback Results</h1>");
    }

    public void clickQuestionAdditionalInfoButton(int qnNumber, String additionalInfoId) {
        click(By.id("questionAdditionalInfoButton-" + qnNumber + "-" + additionalInfoId));
    }

    public boolean isQuestionAdditionalInfoVisible(int qnNumber, String additionalInfoId) {
        return isElementVisible("questionAdditionalInfo-" + qnNumber + "-" + additionalInfoId);
    }

    public String getQuestionAdditionalInfoButtonText(int qnNumber, String additionalInfoId) {
        WebElement qnAdditionalInfoButton = browser.driver.findElement(
                By.id("questionAdditionalInfoButton-" + qnNumber + "-" + additionalInfoId));
        return qnAdditionalInfoButton.getText();
    }
    public void clickPdfView() {

        /**
         * Click the pdf button
         */
        List<WebElement> viewTeamLinks = browser.driver.findElements(By.id("response_submit_button"));

        click(viewTeamLinks.get(0));
        waitForPageToLoad();


        /**
         * check if tabs created by switching back and forth
         */
        ArrayList<String> tabs = new ArrayList<String> (browser.driver.getWindowHandles());
        browser.driver.switchTo().window(tabs.get(1));

        browser.driver.switchTo().window(tabs.get(0));

    }
}
