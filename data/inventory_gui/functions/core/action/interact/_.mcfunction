#> inventory_gui:core/action/interact/_
#
# インタラクト時に呼び出される
#
# @within advancement inventory_gui:interact

#>
# @within inventory_gui:core/action/interact/**
#declare score_holder $OhMyDatID

#>
# @private
#declare score_holder _


## 前処理
# インタラクト先のエンティティを探索
    function inventory_gui:core/action/interact/filter/search

# リセット
    advancement revoke @s only inventory_gui:interact


## メイン処理
# コールバック
    function #inventory_gui:interact

# idを設定 (OhMyDat)
    scoreboard players operation _ OhMyDatID = $OhMyDatID InventoryGui
    function #oh_its_dat:please
    data modify storage inventory_gui: out.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.id

# コールバック
    function #inventory_gui:callback


## 後処理
# リセット
    data remove storage inventory_gui: out
    scoreboard players reset $OhMyDatID InventoryGui