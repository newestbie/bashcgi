<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <title>莫名之地</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="CGI,Linux,Perl,Bash,Shell,Tcl/Tk,Database">
    <meta name="description" content="这是一个用 shell cgi 写成的简单博客系统，用来测试 shell 在不擅长领域的表现">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/ico/apple-touch-icon-57-precomposed.png">
  </head>
  <body>
    <table class="table table-bordered">
      <thead><tr><th colspan="2" style="text-align: center">GET 参数</th></tr></thead>
      <tbody>
        <?
            for k in ${_GET[@]}; do
                eval "v=\$_GET_$k"
                echo "<tr><td>$k</td><td>$v</td></tr>"
            done | sed "2,\$s/^/$LEADSTR/"
        ?>
      </tbody>
    </table>

    <table class="table table-bordered">
      <thead><tr><th colspan="2" style="text-align: center">POST 参数</th></tr></thead>
      <tbody>
        <?
            for k in ${_POST[@]}; do
                eval "v=\$_POST_$k"
                echo "<tr><td>$k</td><td>$v</td></tr>"
            done | sed "2,\$s/^/$LEADSTR/"
        ?>
      </tbody>
    </table>

    <table class="table table-bordered">
      <thead><tr><th colspan="2" style="text-align: center">COOKIE 参数</th></tr></thead>
      <tbody>
        <?
            for k in ${_COOKIE[@]}; do
                eval "v=\$_COOKIE_$k"
                echo "<tr><td>$k</td><td>$v</td></tr>"
            done | sed "2,\$s/^/$LEADSTR/"
        ?>
      </tbody>
    </table>

    <table class="table table-bordered">
      <thead><tr><th colspan="2" style="text-align: center">环境变数</th></tr></thead>
      <tbody>
        <?
            for line in $(env); do
                old_ifs=$IFS
                IFS='='
                while read -r k v; do
                    echo "<tr><td>$k</td><td>$v</td></tr>"
                done < <(echo "$line")
                IFS=$old_ifs
            done | sed "2,\$s/^/$LEADSTR/"
        ?>
      </tbody>
    </table>
  </body>
</html>
