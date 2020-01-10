<?php
$srv = "<%= @srv %>";
$user = "<%= @user %>";
$pwd = "<%= @pwd %>";
$db = "<%= @db %>";
	
$conn = mysqli_connect($srv,$user,$pwd,$db) or die('Error connecting to MySQL server.');
?>
	
<head>
</head>
<body>
<h1>Simple Web App connected to external DB</h1>
<table style="width:100%">
<tr>
<th align="left">Firstname</th>
<th align="left">Lastname</th>
<th align="left">Email</th>
</tr>
		
<?php
$sql = "SELECT * FROM customers";
$res = mysqli_query($conn, $sql) or die('Error querying database.');
		
while ($row = mysqli_fetch_array($res)) {
  echo '<tr><td>' . $row['firstname'] . '</td><td>' . $row['lastname'] . '</td><td>' . $row['email'] . '</td></tr>';
}
?>

</table>
</body>
</html>


