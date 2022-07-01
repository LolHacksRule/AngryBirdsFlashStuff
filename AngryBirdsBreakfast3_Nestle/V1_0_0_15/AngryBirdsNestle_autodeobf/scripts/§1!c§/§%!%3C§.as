package §1!c§
{
   import §%!B§.§0![§;
   import §&!y§.§14§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4[§.§4Z§;
   import §4[§.LoginHandlerEvent;
   
   public class §%!<§ extends §7X§
   {
      
      public static const §8"%§:String = "LoginState";
       
      
      private var §3!+§:§4Z§;
      
      private var §;!B§:Boolean = false;
      
      public function §%!<§(param1:§0![§, param2:§+f§, param3:§4Z§, param4:Boolean, param5:String = "LoginState")
      {
         super(param1,param4,param5,param2);
         this.§3!+§ = param3;
      }
      
      protected function §'!,§() : XML
      {
         return §7I§.§7!%§.Views.ViewLogin[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(this.§'!,§());
      }
      
      public function §'l§(param1:String) : void
      {
         §7"6§(param1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § !4§.§%"7§.§+!J§.closeAllPopups(false);
         §@!S§.§2A§.§`!V§(false);
         (§ !4§.§%"7§ as AngryBirdsCustom).§+!a§(true);
         § !4§.§%"7§.§+!J§.openPopup(new §14§(this.§3!+§,this));
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§9!z§(true);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§;!I§(true);
         AngryBirdsCustom.§get §();
         if(this.§3!+§.§8"§())
         {
            this.§3!+§.addEventListener(LoginHandlerEvent.§8h§,this.§+!=§);
            this.§3!+§.addEventListener(LoginHandlerEvent.ERROR,this.§>!w§);
            this.§3!+§.§]"#§(this.§3!+§.name,this.§3!+§.password,this.§3!+§.language,this.§3!+§.country,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               § !4§.§%"7§.§+!J§.closeAllPopups();
               §7"6§(§?"7§.§8"%§);
         }
      }
      
      private function §+!=§(param1:LoginHandlerEvent) : void
      {
         this.§3!+§.removeEventListener(LoginHandlerEvent.§8h§,this.§+!=§);
         this.§3!+§.removeEventListener(LoginHandlerEvent.ERROR,this.§>!w§);
         §7"6§(§^j§.§8"%§);
      }
      
      private function §>!w§(param1:LoginHandlerEvent) : void
      {
         this.§3!+§.removeEventListener(LoginHandlerEvent.§8h§,this.§+!=§);
         this.§3!+§.removeEventListener(LoginHandlerEvent.ERROR,this.§>!w§);
      }
   }
}
