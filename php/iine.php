<?php
// var_dump($_GET);
// exit();
// 関数ファイルの読み込み

session_start();
include("functions.php");
check_session_id();

$user_id = $_GET['user_id'];
$kanso_id = $_GET['kanso_id'];


// DB接続
$pdo = connect_to_db();

// いいね状態のチェック（COUNTで件数を取得できる！）
$sql = 'SELECT COUNT(*) FROM iine_table WHERE user_id=:user_id AND kanso_id=:kanso_id';
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':user_id', $user_id, PDO::PARAM_INT);
$stmt->bindValue(':kanso_id', $kanso_id, PDO::PARAM_INT);
$status = $stmt->execute();
if ($status == false) {
    // エラー処理
    $error = $stmt->errorInfo();
    echo json_encode(["error_msg" => "{$error[2]}"]);
    exit();
} else {
    $iine_count = $stmt->fetch();
    // いいねしていれば削除，していなければ追加のSQLを作成
    if ($iine_count[0] != 0) {
        //いいねされている条件
        $sql = 'DELETE FROM iine_table WHERE user_id=:user_id AND kanso_id=:kanso_id';
    } else {
        //いいねされていない条件
        $sql = 'INSERT INTO iine_table(id, user_id, kanso_id, created_at) 
        VALUES(NULL, :user_id, :kanso_id, sysdate())';
    }
    // INSERTのSQLは前項で使用したものと同じ！
    // 以降（SQL実行部分と一覧画面への移動）は変更なし！
    // SQL文は1行にまとめる

    // $sql = 'INSERT INTO iine_table(id, user_id, contact_id, created_at) VALUES(NULL, :user_id, :contact_id, sysdate())'; // SQL作成
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':user_id', $user_id, PDO::PARAM_INT);
    $stmt->bindValue(':kanso_id', $kanso_id, PDO::PARAM_INT);
    $status = $stmt->execute(); // SQL実行
    if ($status == false) {
        // エラー処理
        $error = $stmt->errorInfo();
        echo json_encode(["error_msg" => "{$error[2]}"]);
        exit();
    } else {
        header('Location:kanso_read.php');
    }

    // var_dump($iine_count[0]); // データの件数を確認しよう！
    // exit();
}