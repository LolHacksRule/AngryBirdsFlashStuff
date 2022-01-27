package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §3D§.HighscoreSidebar;
   import §5X§.§+!#§;
   import §6"4§.§&a§;
   import §7!B§.§?A§;
   import §7!B§.§@!^§;
   import §7!B§.§@"@§;
   import §7!B§.LoginHandlerEvent;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §8!_§.StateEpisodeSelection;
   import §=r§.§7!r§;
   
   public class §[%§ extends §9!;§
   {
      
      private static var §@-§:Class = §<!q§;
       
      
      private var §`"9§:Boolean;
      
      private var §6">§:§@"@§;
      
      public function §[%§(param1:§@"@§)
      {
         §>"2§ = true;
         §1"$§ = true;
         super(§1#§.§["C§,§8"6§.§ K§,§0!g§.§[!y§(§@-§));
         this.§6">§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§`"9§ = false;
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§`"9§ = true;
               close();
               break;
            case "LOGOUT_NO":
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§`"9§)
         {
            this.§`"9§ = false;
            §&a§.§"!c§ = true;
            (§ !g§.§;!'§ as §`Y§).§?"3§();
            §@!^§.levelProfile = [];
            §@!^§.§2j§ = new §?A§();
            (§ !g§.§;!'§ as §`Y§).§]]§.§?m§ = false;
            this.§6">§.§1!m§();
            §7!r§.§[!1§.§#!§();
            § !g§.§;!'§.§8!^§(StateEpisodeSelection.STATE_NAME);
            (§ !g§.§;!'§ as §`Y§).§&,§.§1M§();
            ((§ !g§.§;!'§ as §`Y§).§>";§ as §4!!§).§,"+§(false,false,true);
            _loc3_ = (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§;
            _loc3_.reset();
            _loc3_.§!!I§();
            _loc3_.changeState(HighscoreSidebar.§9"§);
            this.§6">§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§%&§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §&$§.§[!1§.updateTextFields(§[S§,"Logout_Popup");
      }
   }
}
