package §#!]§
{
   import §!"§.§@]§;
   import §!"§.LoginHandlerEvent;
   import §!R§.§#!L§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §3!0§.§`i§;
   import §4"!§.§?!#§;
   import §7"6§.§^!_§;
   
   public class §+!a§ extends §3_§
   {
      
      public static const §]!y§:String = "LoginState";
       
      
      private var §&I§:§@]§;
      
      private var §2D§:Boolean = false;
      
      public function §+!a§(param1:§-g§, param2:§^!_§, param3:§@]§, param4:Boolean, param5:String = "LoginState")
      {
         super(param1,param4,param5,param2);
         this.§&I§ = param3;
      }
      
      protected function §';§() : XML
      {
         return §%!-§.§#t§.Views.ViewLogin[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(this.§';§());
      }
      
      public function §]?§(param1:String) : void
      {
         §]a§(param1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!2§.§7O§.§0!l§.closeAllPopups(false);
         §`i§.§&!L§.§2!J§(false);
         (§-!2§.§7O§ as AngryBirdsCustom).§;!§(true);
         §-!2§.§7O§.§0!l§.openPopup(new §?!#§(this.§&I§,this));
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§,!a§(true);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!§(true);
         AngryBirdsCustom.§>q§();
         if(this.§&I§.§[!l§())
         {
            this.§&I§.addEventListener(LoginHandlerEvent.§ %§,this.§&!9§);
            this.§&I§.addEventListener(LoginHandlerEvent.ERROR,this.§&@§);
            this.§&I§.§>"6§(this.§&I§.name,this.§&I§.password,this.§&I§.language,this.§&I§.country,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §-!2§.§7O§.§0!l§.closeAllPopups();
               §]a§(§!!P§.§]!y§);
         }
      }
      
      private function §&!9§(param1:LoginHandlerEvent) : void
      {
         this.§&I§.removeEventListener(LoginHandlerEvent.§ %§,this.§&!9§);
         this.§&I§.removeEventListener(LoginHandlerEvent.ERROR,this.§&@§);
         §]a§(§^!m§.§]!y§);
      }
      
      private function §&@§(param1:LoginHandlerEvent) : void
      {
         this.§&I§.removeEventListener(LoginHandlerEvent.§ %§,this.§&!9§);
         this.§&I§.removeEventListener(LoginHandlerEvent.ERROR,this.§&@§);
      }
   }
}
