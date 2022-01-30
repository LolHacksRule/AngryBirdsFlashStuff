package §,#§
{
   import §"!G§.§3!f§;
   import §&!>§.§'!x§;
   import §&!>§.LoginHandlerEvent;
   import §'&§.§3W§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §>P§.§,3§;
   import com.angrybirds.§4"6§;
   
   public class §=!8§ extends §@!4§
   {
      
      public static const §'u§:String = "LoginState";
       
      
      private var §2" §:§'!x§;
      
      private var §`! §:Boolean = false;
      
      public function §=!8§(param1:§3"&§, param2:§3!f§, param3:§'!x§, param4:Boolean, param5:String = "LoginState")
      {
         super(param1,param4,param5,param2);
         this.§2" § = param3;
      }
      
      protected function §'!N§() : XML
      {
         return §8!1§.§31§.Views.ViewLogin[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(this.§'!N§());
      }
      
      public function §7I§(param1:String) : void
      {
         §'"6§(param1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-O§.§5!1§.§-6§.closeAllPopups(false);
         §4"6§.§;!k§.§7!X§(false);
         (§-O§.§5!1§ as AngryBirdsCustom).§+!S§(true);
         §-O§.§5!1§.§-6§.openPopup(new §3W§(this.§2" §,this));
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!b§(true);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+;§(true);
         AngryBirdsCustom.§"-§();
         if(this.§2" §.§6!k§())
         {
            this.§2" §.addEventListener(LoginHandlerEvent.§`O§,this.§2!M§);
            this.§2" §.addEventListener(LoginHandlerEvent.ERROR,this.§1L§);
            this.§2" §.§^p§(this.§2" §.name,this.§2" §.password,this.§2" §.language,this.§2" §.country,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §-O§.§5!1§.§-6§.closeAllPopups();
               §'"6§(§>!e§.§'u§);
         }
      }
      
      private function §2!M§(param1:LoginHandlerEvent) : void
      {
         this.§2" §.removeEventListener(LoginHandlerEvent.§`O§,this.§2!M§);
         this.§2" §.removeEventListener(LoginHandlerEvent.ERROR,this.§1L§);
         §'"6§(§=%§.§'u§);
      }
      
      private function §1L§(param1:LoginHandlerEvent) : void
      {
         this.§2" §.removeEventListener(LoginHandlerEvent.§`O§,this.§2!M§);
         this.§2" §.removeEventListener(LoginHandlerEvent.ERROR,this.§1L§);
      }
   }
}
