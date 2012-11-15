<!DOCTYPE html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <title><? echo -n ${title:-$PROJECT} ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="<? echo -n $DOCUMENT_PREFIX ?>/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="<? echo -n $DOCUMENT_PREFIX ?>/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="<? echo -n $DOCUMENT_PREFIX ?>/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<? echo -n $DOCUMENT_PREFIX ?>/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<? echo -n $DOCUMENT_PREFIX ?>/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<? echo -n $DOCUMENT_PREFIX ?>/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<? echo -n $DOCUMENT_PREFIX ?>/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>
<? echo "$content" ?>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
<?  cat <<JS_URLS
    <script src="$DOCUMENT_PREFIX/js/jquery.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-transition.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-alert.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-modal.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-dropdown.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-scrollspy.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-tab.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-tooltip.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-popover.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-button.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-collapse.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-carousel.js"></script>
    <script src="$DOCUMENT_PREFIX/js/bootstrap-typeahead.js"></script>
JS_URLS
?>
  </body>
</html>
