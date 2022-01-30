package §%9§
{
   import §"I§.§ !R§;
   import §#@§.§5l§;
   import §#@§.§^!^§;
   import §&5§.HighscoreSidebar;
   import §'<§.§=!o§;
   import §-!G§.§]!V§;
   import §9!a§.§@S§;
   import §?!4§.§6"&§;
   import §?!E§.§2S§;
   import §?!E§.§3!i§;
   import §?!E§.§[!+§;
   import §?!E§.§]l§;
   import §?-§.§do §;
   import §??§.PopupSidebarEvent;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   import §?N§.AbstractPopup;
   import §[!b§.§'!R§;
   import §`6§.§!!]§;
   
   public class §+!&§ extends AbstractPopup
   {
      
      private static var §#"2§:Class = §8g§;
      
      private static var §'![§:HighscoreSidebar = null;
       
      
      private var §'!4§:§@S§;
      
      private var §"!L§:int = -1;
      
      private var §-c§:int = -1;
      
      private var §2!b§:§]!V§;
      
      public function §+!&§(param1:§]!V§)
      {
         super(§9r§.§=k§,§>!H§.DEFAULT,§ !R§.§`G§(§#"2§));
         this.§2!b§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§'![§ == null)
         {
            §'![§ = new HighscoreSidebar();
         }
         §'![§.§&!&§(§0+§);
         this.updateTextFields();
         this.§6c§();
         §'![§.§0!"§(HighscoreSidebar.§%!3§);
      }
      
      public function §6c§() : void
      {
         §0+§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §0+§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!l§.§&!<§());
         var _loc1_:Boolean = this.§+!§();
         §'![§.§!!g§(_loc1_);
         §'![§.§%v§(!_loc1_);
         §0+§.getItemByName("Button_Credits").setVisibility(_loc1_);
         §0+§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         §0+§.getItemByName("Button_Login").setVisibility(false);
         §0+§.getItemByName("Button_Logout").setVisibility(true);
         this.§,!-§.§#"%§((§-!l§.§"x§ as AngryBirdsCustom).§7f§.§&!P§);
      }
      
      public function §;!m§(param1:Boolean = true) : void
      {
         §'![§.container.getItemByName("Button_Credits").setVisibility(param1);
         §'![§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §<<§(param1:Boolean) : void
      {
         §'![§.§%v§(param1);
      }
      
      public function §!!g§(param1:Boolean) : void
      {
         §'![§.§!!g§(param1);
      }
      
      public function §4!2§() : Boolean
      {
         return §'![§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         §'![§.§&b§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               (§-!l§.§"x§ as AngryBirdsCustom).setSoundsEnabled(!§-!l§.§&!<§());
               §0+§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!l§.§&!<§());
               break;
            case "LOGOUT":
               §-!l§.§"x§.§,!W§.openPopup(new §"!3§(this.§2!b§));
               this.§,!-§.§#"%§(false);
               break;
            case "LOGIN":
               (§-!l§.§"x§ as AngryBirdsCustom).§0!w§(§3!i§.§+B§);
               break;
            case "CREDITS":
               this.§1y§();
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§-W§));
               break;
            case "TUTORIAL":
               this.§;D§();
         }
      }
      
      protected function §;D§() : void
      {
         var _loc1_:§^!^§ = §-!l§.§"x§.§`9§;
         var _loc2_:Vector.<String> = _loc1_.§-"4§.getTutorialNamesForMapping(§5l§.§29§);
         _loc1_.§-!#§(_loc2_,true,true,true,true,null,true,true);
      }
      
      private function §1y§() : void
      {
         var _loc1_:§=!o§ = (§-!l§.§"x§ as AngryBirdsCustom).§6!N§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§'n§));
         (§-!l§.§"x§ as AngryBirdsCustom).§0!w§(§[!+§.§+B§);
      }
      
      private function §6"3§(param1:String) : void
      {
         §!!]§.§?!+§.setLanguage(param1);
         §"q§.setLanguage(param1);
         param1 = §!!]§.§?!+§.§[!;§();
         §do §.§>"-§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §!!]§.§?!+§.updateTextFields(§0+§,"HighscoreSidebar");
      }
      
      protected function §+!§() : Boolean
      {
         if((§-!l§.§"x§ as AngryBirdsCustom).§]3§() == §]l§.§+B§ || (§-!l§.§"x§ as AngryBirdsCustom).§]3§() == §2S§.§+B§)
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
      
      override protected function runTransition(param1:§6"&§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §,!-§() : HighscoreSidebar
      {
         return §'![§;
      }
      
      public function get §4d§() : §]!V§
      {
         return this.§2!b§;
      }
   }
}
