<?php
require_once("connectToDb.php");
$idOfMessage = $_POST["message_id"];
//Displaying (SELECT) data from "messages"
$sql = "SELECT * FROM messages WHERE id= " . $idOfMessage;
$query = mysqli_query($conn, $sql);
$message_data = mysqli_fetch_all($query, MYSQLI_ASSOC);


?>

<html>

<head>
    <title>esathi.viewer</title>
    <link rel="stylesheet" href="cssForViewerResponse.css">
</head>

<body>
    <div class="header">
        <div class="logo">
            <img src="../UserPage/esathi.jpg" alt="LOGO" class="logo_img">
        </div>
        <div class="header_left">
            <a href="../ViewerPage/viewer_page.php" class="viewer_page">Viewer</a>
            <a href="../UserPage/user_page.php" class="user_page">User</a>
            <a href="#" class="about">About</a>
            <a href="#" class="contact">Contact</a>
        </div>
    </div>

    <div class="bottom_body">
        <div class="chatbox">
            <div id="bot">
                <div id="container">
                    <div id="body">


                        <?php foreach ($message_data as $value) { ?>
                            <div class="userSection">
                                <div class="messages user-message">
                                    <?php echo $value['message'] ?>
                                    </form>
                                </div>
                                <br>
                                <div class="seperator"></div>
                            </div>
                        <?php } ?>

                    </div>
                    <div id="inputArea">
                        <form action="insertingResponse.php" method="POST">
                            <input type="text" name="response" id="userInput" placeholder="Respond Here..." required>
                            <input type="number" name="message_id" id="message_id" value=<?php echo $idOfMessage ?>
                                hidden>
                            <input type="submit" id="send" value="Send">
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>

</body>

</html>