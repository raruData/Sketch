#> sketch:core/handler/on_interact/filter/found
#
# インタラクトされたチェスト付きトロッコに対する処理
#
# @within function sketch:core/handler/on_interact/filter/0

# 自身のIdをインタラクトしてきたプレイヤーに割り当てる
    scoreboard players operation @a[tag=Sketch.onInteract.this] SketchId = @s SketchId

# OhMyDatが未設定であれば設定
    execute unless score @s OhMyDatID matches -2147483648..2147483647 run function #oh_my_dat:please

# OhMyDatIDを取得
    execute store result storage sketch:temp OhMyDatID int 1.0 run scoreboard players get @s OhMyDatID
