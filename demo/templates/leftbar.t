        <div class="span<?= ${SPLIT_STYLE[0]} ?>">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
               <li class="nav-header">Action</li>
               <?
                for item in ${ACTION_URLS[@]}; do
                    item_url=${item#*|}
                    item_title=${item%|*}
                    active_flag=""
                    del_flag=""

                    if [[ -z "$item_url" ]]; then
                        del_flag=1
                    fi

                    if [[ "$SCRIPT_NAME" == $item_url ]]; then
                        active_flag=1
                    fi

                    echo "<li${active_flag:+ class=\"active\"}><a href=\"$item_url\">${del_flag:+<del>}$item_title${del_flag:+</del>}</a></li>"
                done | indent_filter
               ?>
            </ul>
          </div><!--/.well -->

          <div class="well sidebar-nav">
            <ul class="nav nav-list">
               <li class="nav-header">Links</li>
               <?
                 for link in ${LINKS[@]}; do
                     link_url=${link#*|}
                     link_title=${link%|*}

                     echo "<li><a href=\"$link_url\" target=\"_blank\">$link_title</a></li>"
                 done | indent_filter
               ?>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
