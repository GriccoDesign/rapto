[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]

<script type="text/javascript">
<!--
function editThis( sID )
{
    var oTransfer = top.basefrm.edit.document.getElementById( "transfer");
    oTransfer.oxid.value = sID;
    oTransfer.cl.value = top.basefrm.list.sDefClass;

    //forcing edit frame to reload after submit
    top.forceReloadingEditFrame();

    var oSearch = top.basefrm.list.document.getElementById( "search");
    oSearch.oxid.value = sID;
    oSearch.actedit.value = 0;
    oSearch.submit();
}
[{if !$oxparentid}]
window.onload = function ()
{
    [{ if $updatelist == 1}]
        top.oxid.admin.updateList('[{ $oxid }]');
    [{ /if}]
    var oField = top.oxid.admin.getLockTarget();
    oField.onchange = oField.onkeyup = oField.onmouseout = top.oxid.admin.unlockSave;
}
[{/if}]
//-->
</script>

[{ if $readonly}]
    [{assign var="readonly" value="readonly disabled"}]
[{else}]
    [{assign var="readonly" value=""}]
[{/if}]
<form name="transfer" id="transfer" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="oxidCopy" value="[{ $oxid }]">
    <input type="hidden" name="cl" value="AttributeSet2ArticleControllerAS">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>

[{ if $readonly}]
    [{assign var="readonly" value="readonly disabled"}]
[{else}]
    [{assign var="readonly" value=""}]
[{/if}]


<form name="myedit" id="myedit" action="[{ $oViewConf->getSelfLink() }]" method="post">
[{ $oViewConf->getHiddenSid() }]
<input type="hidden" name="cl" value="AttributeSet2ArticleControllerAS">
<input type="hidden" name="fnc" value="save">
<input type="hidden" name="oxid" value="[{ $oxid }]">
<input type="hidden" name="editval[oxarticle__oxid]" value="[{ $oxid }]">

<input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
<input type="hidden" name="attsetid" value="[{ $attsetid }]">


<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tr>
    <td valign="top" class="edittext">

        <table cellspacing="0" cellpadding="0" border="0">
               
<!-- Attribute Sets Start-->
			  <tr>
                    <td class="edittext"><b>[{ oxmultilang ident="FroeziMarketTranslation_ATTSETTOARTICLE_HEADER" }]</b></td>
                    <td class="edittext">
                    	<select onChange='document.forms.myedit.submit();' class="editinput" name="attsetid_to_article" [{ $readonly }]>
                        	<option value="" selected>---</option>

                       	[{assign var="selectedAttSetId" value=''}]
				[{foreach from=$attsetlist item=oas_attset }]
 					[{if $oas_attset.settoarticle_OXATTSETID == $oas_attset.attset_OXID}]
						[{assign var="selectedAttSetId" value = $oas_attset.attset_OXID }]
					[{/if}]
				<option value="[{$oas_attset.attset_OXID}]"[{if $oas_attset.settoarticle_OXATTSETID == $oas_attset.attset_OXID}] selected[{/if}]>[{ $oas_attset.attset_OXSETTITLE }]</option>
                        [{/foreach}]
                        </select>

	                	[{if $oxid != '-1'}]
					<!--
						<input type="button" value="assign Values" class="edittext" onclick="if( document.forms.myedit.attsetid_to_article.value!='' ){showDialog('&cl=AttributeVals2ArticleControllerAS&aoc=5&editlanguage=[{$editlanguage }]&oxid=[{ $oxid }]&attsetid=[{$selectedAttSetId}]');} else { alert('please select an as_attset first');}">
					-->
					<input type="button" value="[{ oxmultilang ident="FroeziMarketTranslation_ATTSETTOARTICLE_ASSIGN_BUTTON" }]" class="edittext" onclick="showDialog('&cl=AttributeVals2ArticleControllerAS&aoc=5&editlanguage=[{$editlanguage }]&oxid=[{ $oxid }]&attsetid=[{$selectedAttSetId}]');">
				[{/if}]


				</td>
                  </tr>
			<!-- Attribute Sets End-->
	
	
       </table>
    </td>
    <!-- Anfang rechte Seite -->
    <td valign="top" class="edittext" align="left" width="50%"></td>
    <!-- Ende rechte Seite -->
    </tr>
</table>
</form>


[{include file="bottomitem.tpl"}]