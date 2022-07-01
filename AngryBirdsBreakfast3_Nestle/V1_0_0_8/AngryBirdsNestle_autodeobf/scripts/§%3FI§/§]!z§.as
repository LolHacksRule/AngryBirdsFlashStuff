package §?I§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import § S§.AbstractPopup;
   import §%f§.§[@§;
   import §&!>§.§'!x§;
   import §,#§.§,!J§;
   import §,#§.§6L§;
   import §,#§.§=!8§;
   import §,#§.§=%§;
   import §,#§.§>!e§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §;4§.§%@§;
   import §<" §.§@!H§;
   import §=!k§.§2"§;
   import §=!k§.§[!4§;
   import §=&§.PopupSidebarEvent;
   import §=0§.HighscoreSidebar;
   import §>P§.§,3§;
   import §^C§.§5!L§;
   import §^t§.§4!C§;
   
   public class §]!z§ extends AbstractPopup
   {
      
      private static var §3R§:Class = §9p§;
      
      private static var §^f§:HighscoreSidebar = null;
       
      
      private var §;r§:§5!L§;
      
      private var §8k§:int = -1;
      
      private var §!!h§:int = -1;
      
      private var §2" §:§'!x§;
      
      public function §]!z§(param1:§'!x§)
      {
         super(§4&§.§&!O§,§ !+§.DEFAULT,§%@§.set(§3R§));
         this.§2" § = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§^f§ == null)
         {
            §^f§ = new HighscoreSidebar();
         }
         §^f§.§ !9§(§@!U§);
         this.updateTextFields();
         this.§;!D§();
         §^f§.§@!Z§(HighscoreSidebar.§ x§);
      }
      
      public function §;!D§() : void
      {
         §@!U§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §@!U§.getItemByName("MovieClip_SoundOff").setVisibility(!§-O§.§^j§());
         var _loc1_:Boolean = this.§<G§();
         §^f§.§+;§(_loc1_);
         §^f§.§!5§(!_loc1_);
         §@!U§.getItemByName("Button_Credits").setVisibility(_loc1_);
         §@!U§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         §@!U§.getItemByName("Button_Login").setVisibility(false);
         §@!U§.getItemByName("Button_Logout").setVisibility(true);
         this.§%!j§.§+!h§((§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§`!K§);
      }
      
      public function §%!b§(param1:Boolean = true) : void
      {
         §^f§.container.getItemByName("Button_Credits").setVisibility(param1);
         §^f§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §+$§(param1:Boolean) : void
      {
         §^f§.§!5§(param1);
      }
      
      public function §+;§(param1:Boolean) : void
      {
         §^f§.§+;§(param1);
      }
      
      public function §`!E§() : Boolean
      {
         return §^f§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         §^f§.§`t§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               (§-O§.§5!1§ as AngryBirdsCustom).setSoundsEnabled(!§-O§.§^j§());
               §@!U§.getItemByName("MovieClip_SoundOff").setVisibility(!§-O§.§^j§());
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "LOGOUT":
               §-O§.§5!1§.§-6§.openPopup(new §?!4§(this.§2" §));
               this.§%!j§.§+!h§(false);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "LOGIN":
               (§-O§.§5!1§ as AngryBirdsCustom).§'"6§(§>!e§.§'u§);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "CREDITS":
               this.§&2§();
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§#"2§));
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "TUTORIAL":
               this.§;K§();
               §]d§.§^!J§("Menu_Confirm");
         }
      }
      
      protected function §;K§() : void
      {
         var _loc1_:§[!4§ = §-O§.§5!1§.§=<§;
         var _loc2_:Vector.<String> = _loc1_.§@v§.getTutorialNamesForMapping(§2"§.§1!'§);
         _loc1_.openMultipleTutorialPopups(_loc2_,true,true,true,true,null,true,true);
      }
      
      private function §&2§() : void
      {
         var _loc1_:§3"&§ = (§-O§.§5!1§ as AngryBirdsCustom).§4!d§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§2@§));
         (§-O§.§5!1§ as AngryBirdsCustom).§'"6§(§,!J§.§'u§);
      }
      
      private function §6$§(param1:String) : void
      {
         §[@§.§"e§.setLanguage(param1);
         §>!L§.setLanguage(param1);
         param1 = §[@§.§"e§.§1-§();
         §4!C§.§6'§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §[@§.§"e§.updateTextFields(§@!U§,"HighscoreSidebar");
      }
      
      protected function §<G§() : Boolean
      {
         var _loc1_:String = (§-O§.§5!1§ as AngryBirdsCustom).§9"§();
         if(_loc1_ == §=%§.§'u§ || _loc1_ == §6L§.§'u§ || _loc1_ == §=!8§.§'u§)
         {
            return true;
         }
         return false;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override protected function runTransition(param1:§@!H§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §%!j§() : HighscoreSidebar
      {
         return §^f§;
      }
      
      public function get §-""§() : §'!x§
      {
         return this.§2" §;
      }
   }
}
