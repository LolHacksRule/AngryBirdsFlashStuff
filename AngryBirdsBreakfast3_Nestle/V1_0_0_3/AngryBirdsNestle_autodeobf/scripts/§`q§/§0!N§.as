package §`q§
{
   import § !H§.§0!m§;
   import §%!9§.PopupSidebarEvent;
   import §&+§.§,=§;
   import §&+§.§?J§;
   import §+j§.§@!_§;
   import §-!F§.§[!Q§;
   import §<[§.HighscoreSidebar;
   import §=!7§.§%!%§;
   import §=X§.§`!3§;
   import §>!L§.§-"#§;
   import §>!a§.§5l§;
   import §@f§.§&!"§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   import §[<§.AbstractPopup;
   import §`!6§.§!s§;
   import §`!6§.§,"4§;
   import §`!6§.§3B§;
   import §`!6§.§?E§;
   
   public class §0!N§ extends AbstractPopup
   {
      
      private static var §]!o§:Class = §-v§;
      
      private static var §<L§:HighscoreSidebar = null;
       
      
      private var §<!2§:§@!_§;
      
      private var §1!A§:int = -1;
      
      private var §=!T§:int = -1;
      
      private var §"!T§:§`!3§;
      
      public function §0!N§(param1:§`!3§)
      {
         super(§%!T§.§0"1§,§#!q§.DEFAULT,§%!%§.§<!0§(§]!o§));
         this.§"!T§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§<L§ == null)
         {
            §<L§ = new HighscoreSidebar();
         }
         §<L§.§"!J§(§#t§);
         this.updateTextFields();
         this.§0"%§();
         §<L§.§ D§(HighscoreSidebar.§8c§);
      }
      
      public function §0"%§() : void
      {
         §#t§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §#t§.getItemByName("MovieClip_SoundOff").setVisibility(!§&N§.§3!M§());
         var _loc1_:Boolean = this.§1T§();
         §<L§.§,v§(_loc1_);
         §<L§.§2E§(!_loc1_);
         §#t§.getItemByName("Button_Credits").setVisibility(_loc1_);
         §#t§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         §#t§.getItemByName("Button_Login").setVisibility(false);
         §#t§.getItemByName("Button_Logout").setVisibility(true);
         this.§[k§.§67§((§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§2!7§);
      }
      
      public function §0"$§(param1:Boolean = true) : void
      {
         §<L§.container.getItemByName("Button_Credits").setVisibility(param1);
         §<L§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §"B§(param1:Boolean) : void
      {
         §<L§.§2E§(param1);
      }
      
      public function §,v§(param1:Boolean) : void
      {
         §<L§.§,v§(param1);
      }
      
      public function §`"1§() : Boolean
      {
         return §<L§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         §<L§.§>5§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               (§&N§.§#Y§ as AngryBirdsCustom).setSoundsEnabled(!§&N§.§3!M§());
               §#t§.getItemByName("MovieClip_SoundOff").setVisibility(!§&N§.§3!M§());
               break;
            case "LOGOUT":
               §&N§.§#Y§.§@!H§.openPopup(new §%i§(this.§"!T§));
               this.§[k§.§67§(false);
               break;
            case "LOGIN":
               (§&N§.§#Y§ as AngryBirdsCustom).§8=§(§!s§.§]O§);
               break;
            case "CREDITS":
               this.§ <§();
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§@!Y§));
               break;
            case "TUTORIAL":
               this.§`![§();
         }
      }
      
      protected function §`![§() : void
      {
         var _loc1_:§?J§ = §&N§.§#Y§.§1"3§;
         var _loc2_:Vector.<String> = _loc1_.§,!x§.getTutorialNamesForMapping(§,=§.§0"-§);
         _loc1_.§`4§(_loc2_,true,true,true,true,null,true,true);
      }
      
      private function § <§() : void
      {
         var _loc1_:§5l§ = (§&N§.§#Y§ as AngryBirdsCustom).§2!V§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§5+§));
         (§&N§.§#Y§ as AngryBirdsCustom).§8=§(§,"4§.§]O§);
      }
      
      private function §%j§(param1:String) : void
      {
         §[!Q§.§=J§.setLanguage(param1);
         §@d§.setLanguage(param1);
         param1 = §[!Q§.§=J§.§"" §();
         §0!m§.§<Q§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §[!Q§.§=J§.updateTextFields(§#t§,"HighscoreSidebar");
      }
      
      protected function §1T§() : Boolean
      {
         if((§&N§.§#Y§ as AngryBirdsCustom).§9!a§() == §?E§.§]O§ || (§&N§.§#Y§ as AngryBirdsCustom).§9!a§() == §3B§.§]O§)
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
      
      override protected function runTransition(param1:§-"#§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §[k§() : HighscoreSidebar
      {
         return §<L§;
      }
      
      public function get §"§() : §`!3§
      {
         return this.§"!T§;
      }
   }
}
