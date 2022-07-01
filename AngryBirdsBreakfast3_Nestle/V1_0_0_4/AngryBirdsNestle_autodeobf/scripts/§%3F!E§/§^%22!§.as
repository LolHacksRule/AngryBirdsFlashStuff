package §?!E§
{
   import §'<§.§=!o§;
   import §-!G§.LoginHandlerEvent;
   import §-!G§.§]!V§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §8D§.§ " §;
   import §;!b§.§%>§;
   import §[!b§.§'!R§;
   import com.angrybirds.§6U§;
   
   public class §^"!§ extends §5"#§
   {
      
      public static const §+B§:String = "LoginState";
       
      
      private var §2!b§:§]!V§;
      
      private var §4!T§:Boolean = false;
      
      public function §^"!§(param1:§=!o§, param2:§%>§, param3:§]!V§, param4:Boolean, param5:String = "LoginState")
      {
         super(param1,param4,param5,param2);
         this.§2!b§ = param3;
      }
      
      protected function §^!!§() : XML
      {
         return §+!b§.§#!P§.Views.ViewLogin[0];
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(this.§^!!§());
      }
      
      public function §2w§(param1:String) : void
      {
         §0!w§(param1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §-!l§.§"x§.§,!W§.closeAllPopups(false);
         §6U§.§+_§.§ W§(false);
         (§-!l§.§"x§ as AngryBirdsCustom).§,;§(true);
         §-!l§.§"x§.§,!W§.openPopup(new § " §(this.§2!b§,this));
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§;!m§(true);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§!!g§(true);
         AngryBirdsCustom.§"H§();
         if(this.§2!b§.§7!I§())
         {
            this.§2!b§.addEventListener(LoginHandlerEvent.§6!$§,this.§^!J§);
            this.§2!b§.addEventListener(LoginHandlerEvent.ERROR,this.§ !V§);
            this.§2!b§.§2!j§(this.§2!b§.name,this.§2!b§.password,this.§2!b§.language,this.§2!b§.country,true);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               §-!l§.§"x§.§,!W§.closeAllPopups();
               §0!w§(§3!i§.§+B§);
         }
      }
      
      private function §^!J§(param1:LoginHandlerEvent) : void
      {
         this.§2!b§.removeEventListener(LoginHandlerEvent.§6!$§,this.§^!J§);
         this.§2!b§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !V§);
         §0!w§(§]l§.§+B§);
      }
      
      private function § !V§(param1:LoginHandlerEvent) : void
      {
         this.§2!b§.removeEventListener(LoginHandlerEvent.§6!$§,this.§^!J§);
         this.§2!b§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !V§);
      }
   }
}
