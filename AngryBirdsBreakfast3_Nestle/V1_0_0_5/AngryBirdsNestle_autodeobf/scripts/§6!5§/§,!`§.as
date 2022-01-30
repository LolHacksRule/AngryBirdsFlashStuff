package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §&<§.§^!#§;
   import §63§.§=7§;
   import §63§.LoginHandlerEvent;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   import §const§.§!!`§;
   
   public class §,!`§ extends §3!3§
   {
      
      public static const §7w§:String = "LoginState";
       
      
      private var §9R§:§=7§;
      
      private var §%!N§:Boolean = false;
      
      public function §,!`§(param1:§ q§, param2:§>u§, param3:§=7§, param4:Boolean, param5:String = "LoginState")
      {
         super(param1,param4,param5,param2);
         this.§9R§ = param3;
      }
      
      protected function §;!<§() : XML
      {
         return §#p§.§'"0§.Views.ViewLogin[0];
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(this.§;!<§());
      }
      
      public function §2J§(param1:String) : void
      {
         §?n§(param1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!I§.§[f§.§@!C§.closeAllPopups(false);
         §6!E§.§7I§.§'F§(false);
         (§-!I§.§[f§ as AngryBirdsCustom).§%l§(true);
         §-!I§.§[f§.§@!C§.openPopup(new §!!`§(this.§9R§,this));
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§4!y§(true);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§70§(true);
         AngryBirdsCustom.§[g§();
         if(this.§9R§.§[<§())
         {
            this.§9R§.addEventListener(LoginHandlerEvent.§@!v§,this.§!!Z§);
            this.§9R§.addEventListener(LoginHandlerEvent.ERROR,this.§ !#§);
            this.§9R§.§<!7§(this.§9R§.name,this.§9R§.password,this.§9R§.language,this.§9R§.country,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §-!I§.§[f§.§@!C§.closeAllPopups();
               §?n§(§2!E§.§7w§);
         }
      }
      
      private function §!!Z§(param1:LoginHandlerEvent) : void
      {
         this.§9R§.removeEventListener(LoginHandlerEvent.§@!v§,this.§!!Z§);
         this.§9R§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !#§);
         §?n§(§^!+§.§7w§);
      }
      
      private function § !#§(param1:LoginHandlerEvent) : void
      {
         this.§9R§.removeEventListener(LoginHandlerEvent.§@!v§,this.§!!Z§);
         this.§9R§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !#§);
      }
   }
}
