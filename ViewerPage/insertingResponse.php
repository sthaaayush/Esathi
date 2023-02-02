<?php
require_once("connectToDb.php");
//Query for inserting response in database
$idOfMessage = (int) $_POST["message_id"];
if (isset($_POST['response']) && !empty($_POST['response'])) {
    $sql = "INSERT INTO responses
    SET
    response = '" . $_POST['response'] . "',
    id =" . $idOfMessage;
    $query = mysqli_query($conn, $sql);
    if ($query) {
        header("location:viewer_page.php");
    }
}
?>
<html>

<head>
    <title>esathi</title>
</head>

<body>

</body>

</html>