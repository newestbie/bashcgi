    <div class="container-fluid">

      <div class="row-fluid">
<?
    if [[ ${SPLIT_STYLE[0]} -gt 0 ]]; then
        context_render ${leftbar:-leftbar}
    fi
?>

        <div class="span<?= ${SPLIT_STYLE[1]} ?>">
<? context_render ${main:-main} ?>
        </div><!--/span-->

<?
    if [[ ${SPLIT_STYLE[2]} -gt 0 ]]; then
        context_render ${rightbar:-rightbar}
    fi
?>
      </div><!--/row-->

      <hr>

<? context_render footer ?>

    </div><!--/.fluid-container-->

