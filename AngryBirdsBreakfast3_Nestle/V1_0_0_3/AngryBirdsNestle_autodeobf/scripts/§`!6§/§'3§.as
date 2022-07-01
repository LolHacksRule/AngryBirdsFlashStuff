package §`!6§
{
   import §;U§.§`"2§;
   import §=X§.LoginHandlerEvent;
   import §=X§.§`!3§;
   import §>!a§.§5l§;
   import §@f§.§&!"§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   
   public class §'3§ extends §-!c§
   {
      
      public static const §]O§:String = "LoginState";
       
      
      private var §"!T§:§`!3§;
      
      private var §3!F§:Boolean = false;
      
      public function §'3§(param1:§5l§, param2:§-!<§, param3:§`!3§, param4:Boolean, param5:String = "LoginState")
      {
         super(param1,param4,param5,param2);
         this.§"!T§ = param3;
      }
      
      protected function §@A§() : XML
      {
         return §"!j§.§3=§.Views.ViewLogin[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(this.§@A§());
      }
      
      public function §-"'§(param1:String) : void
      {
         §8=§(param1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&N§.§#Y§.§@!H§.closeAllPopups(false);
         §4!l§.§,!8§.§&!L§(false);
         (§&N§.§#Y§ as AngryBirdsCustom).§1"%§(true);
         §&N§.§#Y§.§@!H§.openPopup(new §`"2§(this.§"!T§,this));
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"$§(true);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§,v§(true);
         AngryBirdsCustom.§''§();
         if(this.§"!T§.§>"%§())
         {
            this.§"!T§.addEventListener(LoginHandlerEvent.§%T§,this.§&"&§);
            this.§"!T§.addEventListener(LoginHandlerEvent.ERROR,this.§0!L§);
            this.§"!T§.§switch§(this.§"!T§.name,this.§"!T§.password,this.§"!T§.language,this.§"!T§.country,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §&N§.§#Y§.§@!H§.closeAllPopups();
               §8=§(§!s§.§]O§);
         }
      }
      
      private function §&"&§(param1:LoginHandlerEvent) : void
      {
         this.§"!T§.removeEventListener(LoginHandlerEvent.§%T§,this.§&"&§);
         this.§"!T§.removeEventListener(LoginHandlerEvent.ERROR,this.§0!L§);
         §8=§(§?E§.§]O§);
      }
      
      private function §0!L§(param1:LoginHandlerEvent) : void
      {
         this.§"!T§.removeEventListener(LoginHandlerEvent.§%T§,this.§&"&§);
         this.§"!T§.removeEventListener(LoginHandlerEvent.ERROR,this.§0!L§);
      }
   }
}
