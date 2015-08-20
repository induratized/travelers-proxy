<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
  border-radius: 3px;
  padding-top: 10px;
  padding-bottom: 10px;
  /* border: solid 1px #eee; */
}

.searchBar {
  float: left;
  margin-left: 20px;
  margin-top: 6px;
  border: solid 0px 0px 1px 1px #CCCCCC;
  border-radius: 3px;
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
  border-radius: 3px;
}

.searchResult {
  border-bottom: solid #CCCCCC 1px;
  box-shadow: 2px 2px 4px #CCCCCC;

}

.searchResultConatiner {
  color: #999;
  font-family: Geneva, Tahoma, Verdana, sans-serif;
  position: relative;
  width:  1200px;
  height: 600px;
  margin-top: 5px;
  border-radius: 3px;
}

.searchResultHeader {
  width: auto;
  /* font-family: "Franklin Gothic Medium", "Franklin Gothic", "ITC Franklin Gothic", Arial, sans-serif; */
  font-family: "Rockwell Extra Bold", "Rockwell Bold", monospace;
  font-size: large;
  color: #FFF;
  background-color: #61a2ad; /* #4285F4 #61a2ad #296AAB #53949f*/
  padding: 12px 0px 12px 12px;
  position: relative;
  margin: 27px 50px 0px 9px;
  border-radius: 3px;
}

.preferenceFilter {
  width: auto;
  box-shadow: -2px -2px 4px #CCCCCC;
  border-radius: 3px;
  padding-top: 0px;
  padding-bottom: 10px;
  margin: 0px 10px 10px 10px;
}

.preferenceFilter input[type="submit"] {
  padding: 5px 10px;
  border: 0 none;
  border-radius: 3px;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  color: white;
  background: #f56444;
}

table#searchResultTable {
  background-color: #4285F4;
}

</style>

</head>
<body >
  <!-- SEARCH AREA MAIN DIV -->
  <div class="searchArea">
    <!-- SEARCH BAR CONTAINER DIV -->
    <div class="searchBarConatiner" style="">
      <div class="searchBar"><p style="display: inline-block;">From &nbsp;</p><input type="text" id="departure" name="departure" placeholder="London" style="border: none;"></div>
      <div class="searchBar"><p style="display: inline-block;">To &nbsp;</p><input type="text" id="arrival" name="arrival" placeholder="Paris" style="border: none;"></div>
      <div class="searchBar"><p style="display: inline-block;">Out &nbsp;</p><input type="text" id="datepicker_from" name="date_from" placeholder="01/01/2015" style="border: none; width: 100px;">
        <img alt="" src="images/calendar.png" id="calendarImg" class="icon" width="19" height="19" style="position: relative; top: 4px;"></div>
      <div class="searchBar"><p style="display: inline-block;">In &nbsp;</p><input type="text" id="datepicker_to" name="date_to" placeholder="01/01/2015" style="border: none; width: 100px;">
        <img alt="" src="images/calendar.png" id="calendarImg" class="icon" width="19" height="19" style="position: relative; top: 4px;"></div>
      <div id="" class="searchBar"><p style="display: inline-block;">Preferences &nbsp;</p></div>
      <div class="searchBar searchbtn" style="" height="50px"; width="100px">Search</div>
    </div>

    <!-- SEARCH RESULT DIV -->
    <div class="searchResultConatiner">
      <!-- SEARCH RESULT FILTER DIV -->
      <div class="searchResultFilter" style="float: left; width: 240px; height: 600px;">
        <div class="searchResultHeader" style="margin-left: 9px; margin-right: 10px;">SEARCH FILTER</div>
        <form action="" method="get">
        <div class="preferenceFilter">
            <div align="center" style="padding: 10px 0px 10px 0px; background-color: #EEEFFF">Preferences</div><br /> <!-- border-bottom: solid 1px #CCC -->
            <div style="padding: 10px;">
              <input type="checkbox" style="margin: 0px 10px 0px 10px;">Leisure<br />
              <input type="checkbox" style="margin: 0px 10px 0px 10px;">Leisure<br />
              <input type="checkbox" style="margin: 0px 10px 0px 10px;">Leisure<br />
              <input type="checkbox" style="margin: 0px 10px 0px 10px;">Leisure<br />
              <input type="checkbox" style="margin: 0px 10px 0px 10px;">Leisure<br />
              <input type="checkbox" style="margin: 0px 10px 0px 10px;">Leisure<br />
              <input type="checkbox" style="margin: 0px 10px 0px 10px;">Leisure<br />
            </div>
            <div style="float: right;">
            <input type="submit" value="Filter" id="prefFilter">
            </div>
           <%--
            <c:forEach items="${preferences}" var="pref">
            <tr>
              <td><input type="checkbox" value="${pref.key }"></td>
              <td>${pref.prefName }</td>
            </tr>
            </c:forEach>
           --%>
        </div>
        </form>
      </div>

      <!-- SEARCH RESULT SECTION DIV -->
      <div class="searchResult" style="float: left; width: 955px; height: 600px; margin-left: 5px;">
        <div class="searchResultHeader" id="searchResultHeaderId" >USER</div>
        <div class="event">
          <span>USER_1</span>
          <div class="info">
            sylar_ <br /> Abhinav
          </div>
          <div class="info" style="left: 60px;">
            abydict@gmail.com <br /> Sharma
          </div>
        </div>

        <div class="searchResultHeader">GROUP</div>
        <div class="event">
          <span>GROUP_1</span>
          <div class="info">
            ginger_bread <br /> Adios
          </div>
          <div class="info" style="left: 60px;">
            milindsapra123@gmail.com <br /> Amigos
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>