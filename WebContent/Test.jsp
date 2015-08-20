<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HACKATHON</title>

<!-- EXTERNAL JS FILES -->
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/jquery.tablesorter.js"></script>
<script type="text/javascript" src="js/uiutils.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="//cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/prefixfree.min.js"></script>

<!-- EXTERNAL CSS FILES -->
<link rel="stylesheet" href="css/jquery-ui.css" />
<link rel="stylesheet" href="//cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">

<script type="text/javascript">

/* $(document).ready(function(){
  $("#searchResultTable").tablesorter({sortList: [[0,1], [4,1], [5,1]]} );
  $("#searchResultTable").dataTable();
}); */

</script>

<style type="text/css">

.icon:HOVER{
  cursor: pointer;
}

.searchBarConatiner {
  color: #888;
  width:  1200px;
  font-family: Geneva, Tahoma, Verdana, sans-serif;
  border-bottom: solid #CCCCCC 1px;
  height: 45px;
  box-shadow: 2px 2px 4px #CCCCCC;
  /* border: solid 1px #eee; */
}

.searchBar {
  float: left;
  margin-left: 20px;
  margin-top: 6px;
  border: solid 0px 0px 1px 1px #CCCCCC;
  border-radius:2px;
  padding: 6px;
  box-shadow: 1px -1px 4px #CCCCCC;

}

.searchBar > p{
  margin-top: 0px;
  margin-bottom: 0px;

}

.searchbtn {
  background-color: #F56444;
  color: white;
  cursor: pointer;
}

.searchResultFilter {
  border-bottom: solid #CCCCCC 1px;
  box-shadow: 1px 2px 4px #CCCCCC;
}

.searchResult {
  border-bottom: solid #CCCCCC 1px;
  box-shadow: 2px 2px 4px #CCCCCC;
}

.searchResultConatiner {
  color: #999;
  font-family: Geneva, Tahoma, Verdana, sans-serif;
  position: relative;
  margin-top: 5px;
  width:  1200px;
  height: 600px;
}

table#searchResultTable {
  background-color: #4285F4;
}

</style>

</head>
<body >
  <!-- Search Area Main Div -->
  <div class="searchArea">
    <!-- Search bar container div -->
    <div class="searchBarConatiner" style="">
      <div class="searchBar"><p style="display: inline-block;">From &nbsp;</p><input type="text" id="departure" name="departure" placeholder="London" style="border: none;"></div>
      <div class="searchBar"><p style="display: inline-block;">To &nbsp;</p><input type="text" id="arrival" name="arrival" placeholder="Paris" style="border: none;"></div>
      <div class="searchBar"><p style="display: inline-block;">Date &nbsp;</p><input type="text" id="datepicker" name="date" placeholder="Date.." style="border: none;">
      <img alt="" src="images/calendar.png" id="calendarImg" class="icon" width="19" height="19" style="position: relative; top: 4px;"></div>
      <div class="searchBar"><p style="display: inline-block;">Preferences &nbsp;</p></div>
      <div class="searchBar searchbtn" style="" height="50px"; width="100px">Search</div>
    </div>

  <!-- SEARCH RESULT AREA DIV -->
    <div class="searchResultConatiner">
    <!-- SEARCH RESULT FILTER DIV -->
      <div class="searchResultFilter" style="float: left; ; width: 240px; height: 600px;">
      </div>

    <!-- SEARCH RESULT DIV -->
      <div class="searchResult" style="float: left; width: 955px; height: 600px; margin-left: 5px;">
        <c:choose>
          <c:when test="${not empty map}">
            <c:forEach items="${map}" var="user">
              <tr>
                <div class="event">
                  <span>${user.key}</span>
                  <div class="info">
                    $(user.value.userName) <br /> $(user.value.firstName}
                  </div>
                  <div class="info" style="left: 60px;">
                    $(user.value.emailId} <br /> $(user.value.lastName}
                  </div>
                  <div class="info" style="left: 60px;">
                    $(user.value.} <br /> $(user.value.}
                  </div>
                </div>
              </tr>
            </c:forEach>
          </c:when>

          <c:otherwise>  <!-- sample data when no entry is there -->
            <div></div>
          </c:otherwise>
        </c:choose>
      </div>

    </div>
  </div>
</body>
</html>