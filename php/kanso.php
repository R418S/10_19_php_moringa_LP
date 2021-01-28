<!DOCTYPE html>
<html lang="jp">

<head>
  <meta charset="utf-8">
  <title>ご感想フォーム</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP" rel="stylesheet">
  <link rel="stylesheet" href="/main.css">
</head>

<body>
  <form action="kanso_create.php" method="POST">

    <div class="container">
      <div class="row">
        <div class="col-xs-offset-4 col-xs-4">
          <h1>商品のご感想</h1>

          <form action="kanso_create.php" method="post">
            <div class="form-group">
              <input type="text" class="form-control" name="user" placeholder="ニックネーム">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="title" placeholder="件名">
            </div>
            <div class="form-group">
              <textarea class="form-control" name="messages" rows="5" placeholder="本文"></textarea>
            </div>
            <button type="submit" class="btn btn-success btn-block">送信</button>
          </form>
        </div>
      </div>
    </div>
  </form>
</body>

</html>