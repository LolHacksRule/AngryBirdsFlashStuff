package §1!]§
{
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §'#§.§^4§;
   import §4!t§.§95§;
   import §6"6§.§1";§;
   import §6"6§.§40§;
   import §6"6§.§>o§;
   import §6"6§.LoginHandlerEvent;
   import §7!c§.StateEpisodeSelection;
   import §7!s§.HighscoreSidebar;
   import §;+§.§3!n§;
   import §package§.§<@§;
   
   public class §'"0§ extends §%"%§
   {
      
      private static var §!g§:Class = §&"5§;
       
      
      private var §%!#§:Boolean;
      
      private var §1!^§:§>o§;
      
      public function §'"0§(param1:§>o§)
      {
         §&"<§ = true;
         § !z§ = true;
         super(§&r§.§="B§,§3o§.§0!n§,§=Q§.§%!g§(§!g§));
         this.§1!^§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%!#§ = false;
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§%!#§ = true;
               close();
               break;
            case "LOGOUT_NO":
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§%!#§)
         {
            this.§%!#§ = false;
            §3!n§.§=c§ = true;
            (§&!h§.§ u§ as §^"=§).§&l§();
            §40§.levelProfile = [];
            §40§.§1"$§ = new §1";§();
            (§&!h§.§ u§ as §^"=§).§^!7§.§,n§ = false;
            this.§1!^§.§0m§();
            §<@§.§<"B§.§5!_§();
            §&!h§.§ u§.§2g§(StateEpisodeSelection.STATE_NAME);
            (§&!h§.§ u§ as §^"=§).§?P§.§'!L§();
            ((§&!h§.§ u§ as §^"=§).§-"F§ as §8'§).§<!B§(false,false,true);
            _loc3_ = (§&!h§.§ u§ as §^"=§).§?P§.§?!,§;
            _loc3_.reset();
            _loc3_.§#!V§();
            _loc3_.changeState(HighscoreSidebar.§7>§);
            this.§1!^§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§@!;§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §^4§.§<"B§.updateTextFields(§&#§,"Logout_Popup");
      }
   }
}
