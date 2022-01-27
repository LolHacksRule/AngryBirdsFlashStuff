package §]!x§
{
   import §&!o§.§2"E§;
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §1!K§.§2!h§;
   import §4u§.§!H§;
   import §5"@§.§!"'§;
   import §5"@§.§0x§;
   import §5"@§.§1!N§;
   import §5"@§.LoginHandlerEvent;
   import §7!6§.§@Y§;
   import §9%§.StateEpisodeSelection;
   import §>!x§.HighscoreSidebar;
   import §`!w§.§?!U§;
   
   public class §8!#§ extends §5!O§
   {
      
      private static var §1!w§:Class = §5!7§;
       
      
      private var §-!$§:Boolean;
      
      private var §>!Z§:§0x§;
      
      public function §8!#§(param1:§0x§)
      {
         §<"5§ = true;
         §8!X§ = true;
         super(§>§.§<=§,§'!h§.§3"4§,§?!U§.§3!c§(§1!w§));
         this.§>!Z§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§-!$§ = false;
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§-!$§ = true;
               close();
               break;
            case "LOGOUT_NO":
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§-!$§)
         {
            this.§-!$§ = false;
            §2!h§.§?3§ = true;
            (§2&§.§6o§ as §@T§).§"!b§();
            §1!N§.levelProfile = [];
            §1!N§.§,!<§ = new §!"'§();
            (§2&§.§6o§ as §@T§).§'"5§.§ ^§ = false;
            this.§>!Z§.§ !k§();
            §2"E§.§3R§.§ !#§();
            §2&§.§6o§.§ !I§(StateEpisodeSelection.STATE_NAME);
            (§2&§.§6o§ as §@T§).§56§.§&&§();
            ((§2&§.§6o§ as §@T§).§^7§ as §=0§).§ "%§(false,false,true);
            _loc3_ = (§2&§.§6o§ as §@T§).§56§.§`a§;
            _loc3_.reset();
            _loc3_.§4!o§();
            _loc3_.changeState(HighscoreSidebar.§#!V§);
            this.§>!Z§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§[!G§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §!H§.§3R§.updateTextFields(§3!a§,"Logout_Popup");
      }
   }
}
