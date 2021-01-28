<?php
session_start();
include("functions.php");
check_session_id();

$user_id = $_SESSION['id'];

// DB接続
$pdo = connect_to_db();


//データ表示SQL作成
// $sql = 'SELECT * FROM kanso_table'; // <- select文を変更
$sql = 'SELECT * FROM kanso_table
LEFT OUTER JOIN (SELECT kanso_id, COUNT(id) AS cnt
FROM iine_table GROUP BY kanso_id) AS iine
ON kanso_table.id = iine.kanso_id';

// SQL準備&実行
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

// データ登録処理後
if ($status == false) {
  // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
  $error = $stmt->errorInfo();
  echo json_encode(["error_msg" => "{$error[2]}"]);
  exit();
} else {
  // 正常にSQLが実行された場合は入力ページファイルに移動し，入力ページの処理を実行する
  // fetchAll()関数でSQLで取得したレコードを配列で取得できる
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);  // データの出力用変数（初期値は空文字）を設定
  $output = "";
  // <tr><td>deadline</td><td>kanso</td><tr>の形になるようにforeachで順番に$outputへデータを追加
  // `.=`は後ろに文字列を追加する，の意味
  foreach ($result as $record) {
    $output .= "<tr>";
    $output .= "<td>{$record["deadline"]}</td>";
    $output .= "<td>{$record["kanso"]}</td>";
    // タグ生成部分
    $output .= "<td><a href='iine_create.php?user_id={$user_id}&kanso_id={$record["id"]}'>iine{$record["cnt"]}</a></td>";
    // いいねボタン


    // edit deleteリンクを追加
    $output .= "<td><a href='kanso_edit.php?id={$record["id"]}'>edit</a></td>";
    $output .= "<td><a href='kanso_delete.php?id={$record["id"]}'>delete</a></td>";
    $output .= "</tr>";
  }
  // $valueの参照を解除する．解除しないと，再度foreachした場合に最初からループしない
  // 今回は以降foreachしないので影響なし
  unset($value);
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型kansoリスト（一覧画面）</title>
</head>

<body>
  <fieldset>
    <legend>DB連携型kansoリスト（一覧画面）</legend>
    <a href="kanso_input.php">入力画面</a>
    <a href="kanso_logout.php">logout</a>
    <table>
      <thead>
        <tr>
          <th>deadline</th>
          <th>kanso</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <!-- ここに<tr><td>deadline</td><td>kanso</td><tr>の形でデータが入る -->
        <?= $output ?>
      </tbody>
    </table>
  </fieldset>
</body>

</html>