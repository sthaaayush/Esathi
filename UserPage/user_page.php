<?php
require_once("connectToDb.php");
$data = "";
if (isset($_POST['messages']) && !empty($_POST['messages'])) {
    //Query for inserting message in database
    $sql = "INSERT INTO messsages
        SET
        message = '" . $_POST['messages'] . "'";

    //Runs Query in database
    $query = mysqli_query($conn, $sql);

    //Check for database error and set display message
    if ($query) {
        $data = $_POST['messages'];
    } else {
        echo mysqli_error($conn);
    }
}
?>

<html>

<head>
    <title>esathi.user</title>
    <link rel="stylesheet" href="cssForUser.css">
</head>

<body>
    <div class="header">
        <div class="logo">
            <img src="esathi.jpg" alt="LOGO" class="logo_img">
        </div>
        <div class="header_left">
            <a href="../ViewerPage/viewer_page.php" class="viewer_page">Viewer</a>
            <a href="#" class="about">About</a>
            <a href="#" class="contact">Contact</a>
        </div>
    </div>

    <div class="bottom_body">
        <div class="sidebar">
            <a href="#">CHECK</a>
            <a href="#">E-BOOKS</a>
            <a href="#">VIDEOS</a>
            <a href="#">ARTICLES</a>
        </div>
        <div class="chatbox">
        <div id="bot">
        <div id="container">
            <div id="body">
                <div class="userSection">
                    <div class="messages user-message">
                        <?php echo $data; ?>
                    </div>
                    <div class="seperator"></div>
                </div>
            </div>

            <div id="inputArea">
                <form action=<?php echo $_SERVER["PHP_SELF"]; ?> method="POST">
                    <input type="text" name="messages" id="userInput" placeholder="Confess Here..." required>
                    <input type="submit" id="send" value="Send">
                </form>
            </div>
        </div>
    </div>
        </div>
    </div>

</body>

</html>