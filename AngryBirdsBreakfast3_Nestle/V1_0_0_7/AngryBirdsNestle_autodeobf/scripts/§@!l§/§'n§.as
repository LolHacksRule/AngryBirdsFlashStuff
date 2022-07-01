package §@!l§
{
   import § !Q§.§=!3§;
   import §!!&§.§`!$§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   import §!!`§.AbstractPopup;
   import §!!i§.§6!%§;
   import §!!i§.§>!j§;
   import §!P§.§5!1§;
   import §"V§.§0"#§;
   import §"q§.§8[§;
   import §'!'§.§0!p§;
   import §0!E§.HighscoreSidebar;
   import §4;§.PopupSidebarEvent;
   import §8!$§.§@![§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §]!V§.§&g§;
   import §]!V§.§5"'§;
   import §]!V§.§>!Z§;
   import §]!V§.§@j§;
   import §]!V§.§`'§;
   
   public class §'n§ extends AbstractPopup
   {
      
      private static var §,t§:Class = § get§;
      
      private static var §5!H§:HighscoreSidebar = null;
       
      
      private var §1!X§:§@![§;
      
      private var §5^§:int = -1;
      
      private var §]G§:int = -1;
      
      private var §8l§:§8[§;
      
      public function §'n§(param1:§8[§)
      {
         super(§>!&§.§7!t§,§4!f§.DEFAULT,§=!3§.§0I§(§,t§));
         this.§8l§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§5!H§ == null)
         {
            §5!H§ = new HighscoreSidebar();
         }
         §5!H§.§;!o§(§-"1§);
         this.updateTextFields();
         this.§#!r§();
         §5!H§.§9!s§(HighscoreSidebar.§4!T§);
      }
      
      public function §#!r§() : void
      {
         §-"1§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §-"1§.getItemByName("MovieClip_SoundOff").setVisibility(!§,!X§.§>m§());
         var _loc1_:Boolean = this.§<g§();
         §5!H§.§?q§(_loc1_);
         §5!H§.§2t§(!_loc1_);
         §-"1§.getItemByName("Button_Credits").setVisibility(_loc1_);
         §-"1§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         §-"1§.getItemByName("Button_Login").setVisibility(false);
         §-"1§.getItemByName("Button_Logout").setVisibility(true);
         this.§<!%§.§1!P§((§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§2!?§);
      }
      
      public function §5!D§(param1:Boolean = true) : void
      {
         §5!H§.container.getItemByName("Button_Credits").setVisibility(param1);
         §5!H§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §9!X§(param1:Boolean) : void
      {
         §5!H§.§2t§(param1);
      }
      
      public function §?q§(param1:Boolean) : void
      {
         §5!H§.§?q§(param1);
      }
      
      public function §^D§() : Boolean
      {
         return §5!H§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         §5!H§.§-!a§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               (§,!X§.§>!G§ as AngryBirdsCustom).setSoundsEnabled(!§,!X§.§>m§());
               §-"1§.getItemByName("MovieClip_SoundOff").setVisibility(!§,!X§.§>m§());
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "LOGOUT":
               §,!X§.§>!G§.§5!K§.openPopup(new § !u§(this.§8l§));
               this.§<!%§.§1!P§(false);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "LOGIN":
               (§,!X§.§>!G§ as AngryBirdsCustom).§8!`§(§@j§.§+a§);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "CREDITS":
               this.§"!l§();
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§^N§));
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "TUTORIAL":
               this.§%!"§();
               §%!c§.§8" §("Menu_Confirm");
         }
      }
      
      protected function §%!"§() : void
      {
         var _loc1_:§>!j§ = §,!X§.§>!G§.§%"6§;
         var _loc2_:Vector.<String> = _loc1_.§40§.getTutorialNamesForMapping(§6!%§.§%C§);
         _loc1_.§^u§(_loc2_,true,true,true,true,null,true,true);
      }
      
      private function §"!l§() : void
      {
         var _loc1_:§5!1§ = (§,!X§.§>!G§ as AngryBirdsCustom).§5!c§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§&!T§));
         (§,!X§.§>!G§ as AngryBirdsCustom).§8!`§(§>!Z§.§+a§);
      }
      
      private function §0!@§(param1:String) : void
      {
         §`!$§.§>!P§.setLanguage(param1);
         §-F§.setLanguage(param1);
         param1 = §`!$§.§>!P§.§?!2§();
         §0!p§.§`_§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §`!$§.§>!P§.updateTextFields(§-"1§,"HighscoreSidebar");
      }
      
      protected function §<g§() : Boolean
      {
         var _loc1_:String = (§,!X§.§>!G§ as AngryBirdsCustom).§=!+§();
         if(_loc1_ == §&g§.§+a§ || _loc1_ == §5"'§.§+a§ || _loc1_ == §`'§.§+a§)
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
      
      override protected function runTransition(param1:§0"#§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §<!%§() : HighscoreSidebar
      {
         return §5!H§;
      }
      
      public function get §@!&§() : §8[§
      {
         return this.§8l§;
      }
   }
}
