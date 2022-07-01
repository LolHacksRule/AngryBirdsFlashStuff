package §?I§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import §%f§.§[@§;
   import §&!>§.§'!x§;
   import §&!>§.§2!V§;
   import §&!>§.LoginHandlerEvent;
   import §'&§.§3W§;
   import §,#§.§>!e§;
   import §8q§.§]d§;
   import §;4§.§%@§;
   import §=0§.HighscoreSidebar;
   import §>P§.§,3§;
   
   public class §?!4§ extends §1>§
   {
      
      private static var §-!9§:Class = §&5§;
       
      
      private var §'!X§:Boolean;
      
      private var §2" §:§'!x§;
      
      private var §]!&§:Boolean;
      
      public function §?!4§(param1:§'!x§)
      {
         §2!b§ = true;
         §@n§ = true;
         §!d§ = true;
         super(§4&§.§>!y§,§ !+§.DEFAULT,this.§'!N§());
         this.§2" § = param1;
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §%@§.set(§-!9§);
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§'!X§ = false;
         this.updateTextFields();
         this.§]!&§ = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§#!v§;
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(false);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§'!X§ = true;
               (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(this.§]!&§);
               §]d§.§^!J§("Menu_Confirm");
               close();
               break;
            case "LOGOUT_NO":
               (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§.§+!h§(true);
               (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(this.§]!&§);
               §]d§.§^!J§("Menu_Back");
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§'!X§)
         {
            this.§'!X§ = false;
            §3W§.§2-§ = true;
            (§-O§.§5!1§ as AngryBirdsCustom).§-"6§();
            §2!V§.levelProfile = [];
            (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§`!K§ = false;
            this.§2" §.get();
            §-O§.§5!1§.§'"6§(§>!e§.§'u§);
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§;!D§();
            ((§-O§.§5!1§ as AngryBirdsCustom).§-6§ as §4W§).§6O§(false,false,true);
            _loc3_ = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§;
            _loc3_.reset();
            _loc3_.§>!,§();
            §]d§.§]!u§();
            this.§2" §.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§'!h§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §[@§.§"e§.updateTextFields(§@!U§,"Logout_Popup");
      }
   }
}
