<%@ tag trimDirectiveWhitespaces="true" %>
<%@ tag description="studentHome - Course table" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/student/home" prefix="home" %>
<%@ tag import="teammates.common.util.Const" %>
<%@ attribute name="sessionRows" type="java.util.Collection" required="true" %>
<table class="table-responsive table table-striped table-bordered margin-0" id="Sort_table" onload="sortTable()">
  <c:choose>
    <c:when test="${not empty sessionRows}">
      <thead>
        <tr>
          <th>Session Name</th>
          <th class="button_sortenddate button-sort-none toggle-sort"
              data-toggle-sort-comparator="sortDate"
              data-toggle-sort-extractor="dateStampExtractor">Deadline<span class="icon-sort unsorted"></span></th>
          <th class="toggle-sort"
              data-toggle-sort-comparator="sortBase"
              data-toggle-sort-extractor="textExtractor">Submissions<span class="icon-sort unsorted"></span></th>
          <th>Responses</th>
          <th class="studentHomeActions">Action(s)</th>
        </tr>
      </thead>
      <c:forEach items="${sessionRows}" var="sessionRow">
        <tr class="home_evaluations_row" id="evaluation${sessionRow.index}">
          <td<c:choose>
            <c:when test="${sessionRow.submissionStatus=='Closed'}">
              style="background-color: #cca0a4"
            </c:when>
          </c:choose>>${sessionRow.name}</td>
          <td <c:choose>
            <c:when test="${sessionRow.submissionStatus=='Closed'}">
              style="background-color: #cca0a4"
            </c:when>
          </c:choose>data-date-stamp="${sessionRow.endTimeIso8601Utc}">${sessionRow.endTime}</td>
          <td <c:choose>
            <c:when test="${sessionRow.submissionStatus=='Closed'}">
              style="background-color: #cca0a4"
            </c:when>
          </c:choose>>
            <c:choose>
              <c:when test="${sessionRow.submissionStatus=='Closed'}">
                <span style="display: none">z</span>
              </c:when>
            </c:choose>
            <span data-toggle="tooltip" data-placement="top" title="${sessionRow.submissionsTooltip}">
              ${sessionRow.submissionStatus}
            </span>
          </td>
          <td <c:choose>
            <c:when test="${sessionRow.submissionStatus=='Closed'}">
              style="background-color: #cca0a4"
            </c:when>
          </c:choose>>
            <span data-toggle="tooltip" data-placement="top" title="${sessionRow.publishedTooltip}">
              ${sessionRow.publishedStatus}
            </span>
          </td>
          <td <c:choose>
            <c:when test="${sessionRow.submissionStatus=='Closed'}">
              style="background-color: #cca0a4"
            </c:when>
          </c:choose>class="studentHomeActions">
            <home:rowActions actions="${sessionRow.actions}" index="${sessionRow.index}" />
          </td>
        </tr>
      </c:forEach>
    </c:when>
    <c:otherwise>
      <tr>
        <th class="align-center bold color_white">
          Currently, there are no open evaluation/feedback sessions in this course. When a session is open for submission you will be notified.
        </th>
      </tr>
    </c:otherwise>
  </c:choose>
</table>
