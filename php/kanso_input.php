<?php
session_start();
include("functions.php");
check_session_id();
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>お客様からのご感想</title>
</head>

<body>
  <form action="kanso_create.php" method="POST">
    <fieldset>
      <legend>お客様からのご感想</legend>
      <a href="kanso_read.php">一覧画面</a>
    <!-- ?<a href="kanso_logout.php">logout</a> -->
      <div>
        タイトル: <input type="text" name="title">
      </div>
      <div>
        レビュー: <input type="text" name="messages">
      </div>
      <div>
        <button>送信</button>
      </div>
    </fieldset>
  </form>

</body>

</html>