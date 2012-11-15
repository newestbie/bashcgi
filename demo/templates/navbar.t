    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="<? echo -n $DOCUMENT_PREFIX ?>/"><? echo -n $PROJECT ?></a>
          <div class="nav-collapse">
            <ul class="nav">
              <?
                for page in ${NAVBAR[@]}; do
                    if [[ "${page#*|}" == "${REQUEST_URI%%\?*}" ]]; then
                        echo "<li class=\"active\"><a href=\"${page#*|}\">${page%|*}</a></li>"
                    else
                        echo "<li><a href=\"${page#*|}\">${page%%|*}</a></li>"
                    fi
                done | indent_filter
              ?>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
