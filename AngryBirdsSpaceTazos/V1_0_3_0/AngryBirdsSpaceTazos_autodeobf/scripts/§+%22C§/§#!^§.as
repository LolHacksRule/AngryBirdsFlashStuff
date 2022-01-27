package §+"C§
{
   import § !K§.§+§;
   import §!"0§.§`"F§;
   import §!"4§.§;";§;
   import §!"4§.LoginHandlerEvent;
   import §!"4§.§]<§;
   import §!"4§.§]a§;
   import §'!n§.§[!I§;
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §6!C§.§7[§;
   import §6"A§.HighscoreSidebar;
   import §6B§.§?"2§;
   import §=" §.StateEpisodeSelection;
   
   public class §#!^§ extends §^"4§
   {
      
      private static var §%"7§:Class = §`P§;
       
      
      private var §9"#§:Boolean;
      
      private var §^§:§]<§;
      
      public function §#!^§(param1:§]<§)
      {
         §^">§ = true;
         §6"B§ = true;
         super(§?d§.§5!?§,§`B§.§-! §,§7[§.§[!n§(§%"7§));
         this.§^§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§9"#§ = false;
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§9"#§ = true;
               close();
               break;
            case "LOGOUT_NO":
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§9"#§)
         {
            this.§9"#§ = false;
            §`"F§.§1"H§ = true;
            (§&"<§.§<!7§ as §["!§).§>!J§();
            §;";§.levelProfile = [];
            §;";§.§3U§ = new §]a§();
            (§&"<§.§<!7§ as §["!§).§<!%§.§-"9§ = false;
            this.§^§.§,#§();
            §+§.§8!J§.§65§();
            §&"<§.§<!7§.§'Q§(StateEpisodeSelection.STATE_NAME);
            (§&"<§.§<!7§ as §["!§).§^"<§.§&!'§();
            ((§&"<§.§<!7§ as §["!§).§1"0§ as §"!k§).§@!$§(false,false,true);
            _loc3_ = (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§;
            _loc3_.reset();
            _loc3_.§7m§();
            _loc3_.changeState(HighscoreSidebar.§'r§);
            this.§^§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§-s§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §[!I§.§8!J§.updateTextFields(§ 1§,"Logout_Popup");
      }
   }
}
