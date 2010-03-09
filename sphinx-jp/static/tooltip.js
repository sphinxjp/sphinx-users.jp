/**
 * ツールチップを表示する
 */
var tooltip = function() {
  // ポップアップする位置の設定値
  // マウスの位置からの距離を設定する。
  xOffset = 0;
  yOffset = -150;

  $('#showsrc').hover(
  function(e) {
      this.t = this.title;
      this.title = '';
      $('body').append('<p id="tooltip">' + this.t + '</p>');
      $('#tooltip')
        .css('top',(e.pageY - yOffset) + 'px')    // マウスのページ上のY座標
        .css('left', (e.pageX + xOffset) + 'px')  // マウスのページ上のX座標
        .fadeIn('fast');
  },
  function() {
    this.title = this.t;
    $('#tooltip').remove();
  });
  $('#showsrc').mousemove(function(e) {
      $('#tooltip')
        .css('top',(e.pageY - xOffset) + 'px')
        .css('left', (e.pageX + yOffset) + 'px')
  });
};

