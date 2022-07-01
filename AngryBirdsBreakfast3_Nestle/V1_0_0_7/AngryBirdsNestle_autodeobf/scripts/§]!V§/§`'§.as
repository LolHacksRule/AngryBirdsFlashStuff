package §]!V§
{
   import §!P§.§5!1§;
   import §"q§.§8[§;
   import §"q§.LoginHandlerEvent;
   import §%r§.§ L§;
   import §'!u§.§&S§;
   import §<!0§.§'!%§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   
   public class §`'§ extends §>!9§
   {
      
      public static const §+a§:String = "LoginState";
       
      
      private var §8l§:§8[§;
      
      private var §]!`§:Boolean = false;
      
      public function §`'§(param1:§5!1§, param2:§&S§, param3:§8[§, param4:Boolean, param5:String = "LoginState")
      {
         super(param1,param4,param5,param2);
         this.§8l§ = param3;
      }
      
      protected function §[x§() : XML
      {
         return §=!A§.§`O§.Views.ViewLogin[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(this.§[x§());
      }
      
      public function §;v§(param1:String) : void
      {
         §8!`§(param1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!X§.§>!G§.§5!K§.closeAllPopups(false);
         §#Z§.§'0§.§#o§(false);
         (§,!X§.§>!G§ as AngryBirdsCustom).§%>§(true);
         §,!X§.§>!G§.§5!K§.openPopup(new § L§(this.§8l§,this));
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§5!D§(true);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§?q§(true);
         AngryBirdsCustom.§ " §();
         if(this.§8l§.§^l§())
         {
            this.§8l§.addEventListener(LoginHandlerEvent.§=!5§,this.§`&§);
            this.§8l§.addEventListener(LoginHandlerEvent.ERROR,this.§'1§);
            this.§8l§.§^"§(this.§8l§.name,this.§8l§.password,this.§8l§.language,this.§8l§.country,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §,!X§.§>!G§.§5!K§.closeAllPopups();
               §8!`§(§@j§.§+a§);
         }
      }
      
      private function §`&§(param1:LoginHandlerEvent) : void
      {
         this.§8l§.removeEventListener(LoginHandlerEvent.§=!5§,this.§`&§);
         this.§8l§.removeEventListener(LoginHandlerEvent.ERROR,this.§'1§);
         §8!`§(§&g§.§+a§);
      }
      
      private function §'1§(param1:LoginHandlerEvent) : void
      {
         this.§8l§.removeEventListener(LoginHandlerEvent.§=!5§,this.§`&§);
         this.§8l§.removeEventListener(LoginHandlerEvent.ERROR,this.§'1§);
      }
   }
}
