[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]

[{ if $readonly }]
    [{assign var="readonly" value="readonly disabled"}]
[{else}]
    [{assign var="readonly" value=""}]
[{/if}]

<form name="transfer" id="transfer" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{ $oViewConf->getHiddenSid() }]
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="cl" value="AttributeSetMainControllerAS">
    <input type="hidden" name="editlanguage" value="[{ $editlanguage }]">
</form>

<form name="myedit" id="myedit" action="[{ $oViewConf->getSelfLink() }]" method="post">
[{ $oViewConf->getHiddenSid() }]
<input type="hidden" name="cl" value="AttributeSetMainControllerAS">
<input type="hidden" name="fnc" value="">
<input type="hidden" name="oxid" value="[{ $oxid }]">
<input type="hidden" name="editval[as_tbl_set__oxid]" value="[{ $oxid }]">




<table cellspacing="0" cellpadding="0" border="0" width="98%">
<tr>
    <td valign="top" class="edittext">

        <table cellspacing="0" cellpadding="0" border="0">
           
            <tr>
                <td class="edittext" width="120">
                <b>[{ oxmultilang ident="FroeziMarketTranslation_ATTSETMAIN_TITLE" }]</b>
                </td>
                <td class="edittext">
                <input type="text" class="editinput" size="20" maxlength="[{$edit->as_tbl_set__oxsettitle->fldmax_length}]" name="editval[as_tbl_set__oxsettitle]" value="[{$edit->as_tbl_set__oxsettitle->value}]" [{ $readonly }]>
                </td>
            </tr>
            <tr>
                <td class="edittext" width="120">
                <b>[{ oxmultilang ident="FroeziMarketTranslation_ATTSETMAIN_DESCRIPT" }]</b>
                </td>
                <td class="edittext">
                <input type="text" class="editinput" size="35" maxlength="[{$edit->as_tbl_set__oxdescriptor->fldmax_length}]" name="editval[as_tbl_set__oxdescriptor]" value="[{$edit->as_tbl_set__oxdescriptor->value}]" [{ $readonly }]>
                </td>
            </tr>
             <tr>
                <td class="edittext" width="120">
                <b>explizite ID</b>
                </td>
                <td class="edittext">
                <input [{ if $oxid!="-1" }] readonly [{/if}] type="text" class="editinput" size="25" maxlength="25" name="explicitOXID" value="[{$oxid}]" >
                </td>
            </tr>
            <tr>
           	 	<td class="edittext">
            	</td>
            	<td class="edittext"><br>
                		[{include file="language_edit.tpl"}]
            	</td>
        	</tr>
	  	<tr>
            	<td class="edittext"></td>
            	<td class="edittext"><br>
           	 		<input type="submit" class="edittext" name="save" value="[{ oxmultilang ident="FroeziMarketTranslation_SAVEBUTTON" }]" onClick="Javascript:document.myedit.fnc.value='save'" [{ $readonly }]><br>
           		 </td>
        	</tr>
		<tr>
            	<td class="edittext"></td>
            	<td class="edittext"><br>
           	 		<input type="submit" class="edittext" name="maintain" value="[{ oxmultilang ident="FroeziMarketTranslation_ATTSETMAIN_MAINTAIN_DB_ENTRIES" }]" onClick="Javascript:document.myedit.fnc.value='maintain_dependicies'" [{ $readonly }]><br>
           		 </td>
        	</tr>


       </table>
    </td>
    <!-- Anfang rechte Seite -->
    <td valign="top" class="edittext" align="left" width="50%">
[{ if $oxid!="-1" }]
          <input type="button" value="[{ oxmultilang ident="FroeziMarketTranslation_ATTSETMAIN_ASSIGN_ATTRIBUTES" }]" class="edittext" onclick="JavaScript:showDialog('&cl=Attributes2SetControllerAS&oxid=[{ $oxid }]');">
[{else}]
	&nbsp;
[{/if}]
	</td>
    <!-- Ende rechte Seite -->
    </tr>
</table>
</form>
[{include file="BottomNaviTemplateAS.tpl"}]

[{include file="bottomitem.tpl"}]
