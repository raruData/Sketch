#> example:handler/on_open
#
# 登録済みのチェスト付きトロッコを開いたときに呼び出される
#
# @within tag/function sketch:on_open

# 開くと1ページ目になるように設定
    scoreboard players set @s Page 1

# メニューを作成
    function example:menu/container/create
