<?php
require_once("connectToDb.php");
//Displaying (SELECT) data from "messsages"
$sql = "SELECT * FROM messsages";
$query = mysqli_query($conn, $sql);
$message_data = mysqli_fetch_all($query, MYSQLI_ASSOC);

//Displaying (SELECT) data from "messsages"
$sql = "SELECT * FROM responses";
$query = mysqli_query($conn, $sql);
$response_data = mysqli_fetch_all($query, MYSQLI_ASSOC);
?>

<html>

<head>
    <title>esathi.viewer</title>
    <link rel="stylesheet" href="cssForViewer.css">
</head>

<body>
    <div class="header">
        <div class="logo">
            <img src="../UserPage/esathi.jpg" alt="LOGO" class="logo_img">
        </div>
        <div class="header_left">
            <a href="../UserPage/user_page.php" class="user_page">User</a>
            <a href="#" class="about">About</a>
            <a href="#" class="contact">Contact</a>
        </div>
    </div>

    <div class="bottom_body">
        <div class="chatbox">
        <body>
    <div id="bot">
        <div id="container">
            <div id="body">
                <?php foreach ($message_data as $message_value) { ?>
                    <div class="userSection">
                        <div class="messages user-message">
                            <?php echo $message_value['message'] ?>
                            <form action="viewer_page_response.php" method="POST" class="respond_button"> 
                                <input type="submit" id="send" value="Response" class="respond_button">
                                <input type="number" name="message_id" id="message_id" value=<?php echo $message_value["id"] ?>
                                    hidden>
                            </form>
                        </div>
                        <br>
                        <div class="seperator"></div>
                    </div>
                    <?php foreach ($response_data as $value) {
                        if ($message_value['id'] == $value['id']) { ?>
                            <div class="botSection">
                                <div class="messages bot-reply">
                                    <?php echo $value['response'] ?>
                                </div>
                                <div class="seperator"></div>
                            </div>
                        <?php }
                    } ?>
                <?php } ?>

                <?php foreach ($response_data as $value) {
                    ?>
                    <div class="botSection">
                        <div class="messages bot-reply">
                            <?php echo $value['response'] ?>
                        </div>
                        <div class="seperator"></div>
                    </div>
                <?php } ?>


            </div>
        </div>
    </div>
        </div>
    </div>

</body>

</html>