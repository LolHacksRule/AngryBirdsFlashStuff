package §'!3§
{
   import §!""§.§1=§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §1!c§.§%!<§;
   import §1!c§.§1!Z§;
   import §1!c§.§?"7§;
   import §1!c§.§^!,§;
   import §1!c§.§^j§;
   import §1!i§.§4z§;
   import §1!i§.AbstractPopup;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §37§.§9!c§;
   import §4!i§.§@"#§;
   import §4[§.§4Z§;
   import §;V§.§%c§;
   import §<S§.HighscoreSidebar;
   import §>G§.PopupSidebarEvent;
   import §[!Z§.§>D§;
   import §^"!§.§+!7§;
   import §^"!§.§;m§;
   
   public class §2!2§ extends AbstractPopup
   {
      
      private static var §?B§:Class = §[!<§;
      
      private static var §'!!§:HighscoreSidebar = null;
       
      
      private var §-!j§:§9!c§;
      
      private var §&E§:int = -1;
      
      private var § S§:int = -1;
      
      private var §3!+§:§4Z§;
      
      public function §2!2§(param1:§4Z§)
      {
         super(§`!t§.§4l§,§4z§.DEFAULT,§4!H§.§7o§(§?B§));
         this.§3!+§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§'!!§ == null)
         {
            §'!!§ = new HighscoreSidebar();
         }
         §'!!§.§0!t§(§29§);
         this.updateTextFields();
         this.§@!0§();
         §'!!§.§@w§(HighscoreSidebar.§+i§);
      }
      
      public function §@!0§() : void
      {
         §29§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §29§.getItemByName("MovieClip_SoundOff").setVisibility(!§ !4§.§4E§());
         var _loc1_:Boolean = this.§=^§();
         §'!!§.§;!I§(_loc1_);
         §'!!§.§-!<§(!_loc1_);
         §29§.getItemByName("Button_Credits").setVisibility(_loc1_);
         §29§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         §29§.getItemByName("Button_Login").setVisibility(false);
         §29§.getItemByName("Button_Logout").setVisibility(true);
         this.§08§.§4!4§((§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§5!z§);
      }
      
      public function §9!z§(param1:Boolean = true) : void
      {
         §'!!§.container.getItemByName("Button_Credits").setVisibility(param1);
         §'!!§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §2!J§(param1:Boolean) : void
      {
         §'!!§.§-!<§(param1);
      }
      
      public function §;!I§(param1:Boolean) : void
      {
         §'!!§.§;!I§(param1);
      }
      
      public function §8!E§() : Boolean
      {
         return §'!!§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         §'!!§.§<8§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               (§ !4§.§%"7§ as AngryBirdsCustom).setSoundsEnabled(!§ !4§.§4E§());
               §29§.getItemByName("MovieClip_SoundOff").setVisibility(!§ !4§.§4E§());
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "LOGOUT":
               § !4§.§%"7§.§+!J§.openPopup(new §7!<§(this.§3!+§));
               this.§08§.§4!4§(false);
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "LOGIN":
               (§ !4§.§%"7§ as AngryBirdsCustom).§7"6§(§?"7§.§8"%§);
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "CREDITS":
               this.§@!L§();
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§@n§));
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "TUTORIAL":
               this.§&!z§();
               §>D§.§9!q§("Menu_Confirm");
         }
      }
      
      protected function §&!z§() : void
      {
         var _loc1_:§+!7§ = § !4§.§%"7§.§=!e§;
         var _loc2_:Vector.<String> = _loc1_.§+!k§.getTutorialNamesForMapping(§;m§.§`X§);
         _loc1_.openMultipleTutorialPopups(_loc2_,true,true,true,true,null,true,true);
      }
      
      private function §@!L§() : void
      {
         var _loc1_:§0![§ = (§ !4§.§%"7§ as AngryBirdsCustom).§[!,§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§7!_§));
         (§ !4§.§%"7§ as AngryBirdsCustom).§7"6§(§^!,§.§8"%§);
      }
      
      private function §>0§(param1:String) : void
      {
         §@"#§.§,2§.setLanguage(param1);
         §8&§.setLanguage(param1);
         param1 = §@"#§.§,2§.§2"2§();
         §%c§.§6"§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §@"#§.§,2§.updateTextFields(§29§,"HighscoreSidebar");
      }
      
      protected function §=^§() : Boolean
      {
         var _loc1_:String = (§ !4§.§%"7§ as AngryBirdsCustom).§!!w§();
         if(_loc1_ == §^j§.§8"%§ || _loc1_ == §1!Z§.§8"%§ || _loc1_ == §%!<§.§8"%§)
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
      
      override protected function runTransition(param1:§1=§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §08§() : HighscoreSidebar
      {
         return §'!!§;
      }
      
      public function get §6!"§() : §4Z§
      {
         return this.§3!+§;
      }
   }
}
