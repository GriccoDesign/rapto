[{* as_attset *}]
    [{if $bottom_buttons->as_attset_new }]
    <li><a [{if !$firstitem}]class="firstitem"[{assign var="firstitem" value="1"}][{/if}] id="btn.new" href="#" onClick="Javascript:top.oxid.admin.editThis( -1 );return false" target="edit">[{ oxmultilang ident="FroeziMarketTranslation_ATTSETMAIN_BTNNEW_NAME" }]</a> |</li>
    [{/if}]
   [{* as_preselect *}]
    [{if $bottom_buttons->as_preselect_new }]
    <li><a [{if !$firstitem}]class="firstitem"[{assign var="firstitem" value="1"}][{/if}] id="btn.new" href="#" onClick="Javascript:top.oxid.admin.editThis( -1 );return false" target="edit">[{ oxmultilang ident="FroeziMarketTranslation_ATTSETSELECTLIST_BTNNEW_NAME" }]</a> |</li>
    [{/if}]
