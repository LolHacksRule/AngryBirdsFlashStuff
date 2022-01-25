package §'!3§
{
   import §&!y§.§14§;
   import §'"!§.§+§;
   import §1!c§.§?"7§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §4!i§.§@"#§;
   import §4[§.§2P§;
   import §4[§.§4Z§;
   import §4[§.LoginHandlerEvent;
   import §<S§.HighscoreSidebar;
   import §[!Z§.§>D§;
   
   public class §7!<§ extends §;!o§
   {
      
      private static var §6B§:Class = §@!s§;
       
      
      private var §%!f§:Boolean;
      
      private var §3!+§:§4Z§;
      
      private var §'!O§:Boolean;
      
      public function §7!<§(param1:§4Z§)
      {
         §9p§ = true;
         §]G§ = true;
         §^J§ = true;
         super(§`!t§.§3"1§,§4z§.DEFAULT,this.§'!,§());
         this.§3!+§ = param1;
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§6B§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%!f§ = false;
         this.updateTextFields();
         this.§'!O§ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§-H§;
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§%!f§ = true;
               (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(this.§'!O§);
               §>D§.§9!q§("Menu_Confirm");
               close();
               break;
            case "LOGOUT_NO":
               (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§4!4§(true);
               (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(this.§'!O§);
               §>D§.§9!q§("Menu_Back");
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§%!f§)
         {
            this.§%!f§ = false;
            §14§.§>c§ = true;
            (§ !4§.§%"7§ as AngryBirdsCustom).§[M§();
            §2P§.levelProfile = [];
            (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§5!z§ = false;
            this.§3!+§.§4!s§();
            § !4§.§%"7§.§7"6§(§?"7§.§8"%§);
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§@!0§();
            ((§ !4§.§%"7§ as AngryBirdsCustom).§+!J§ as §;!H§).§=!5§(false,false,true);
            _loc3_ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§;
            _loc3_.reset();
            _loc3_.§5!Z§();
            §>D§.§>!%§();
            this.§3!+§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§]!2§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §@"#§.§,2§.updateTextFields(§29§,"Logout_Popup");
      }
   }
}
