package §&_§
{
   import § !T§.§ q§;
   import §"r§.§"j§;
   import §&<§.§^!#§;
   import §-w§.§ !m§;
   import §-w§.§;3§;
   import §0!$§.§2!K§;
   import §1l§.PopupSidebarEvent;
   import §2W§.§+!d§;
   import §5u§.§+!]§;
   import §5u§.AbstractPopup;
   import §5u§.§^!=§;
   import §6!5§.§ !S§;
   import §6!5§.§2!E§;
   import §6!5§.§^!+§;
   import §6!5§.§`"$§;
   import §63§.§=7§;
   import §8,§.§?J§;
   import §8x§.§]"-§;
   import §@!6§.§3!5§;
   import §]K§.HighscoreSidebar;
   
   public class §9!R§ extends AbstractPopup
   {
      
      private static var §+!&§:Class = §7!&§;
      
      private static var §!h§:HighscoreSidebar = null;
       
      
      private var §@"'§:§"j§;
      
      private var §-k§:int = -1;
      
      private var §0!L§:int = -1;
      
      private var §9R§:§=7§;
      
      public function §9!R§(param1:§=7§)
      {
         super(§^!=§.§9!a§,§+!]§.DEFAULT,§2!K§.§5i§(§+!&§));
         this.§9R§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§!h§ == null)
         {
            §!h§ = new HighscoreSidebar();
         }
         §!h§.§&J§(§[!<§);
         this.updateTextFields();
         this.§%7§();
         §!h§.§=O§(HighscoreSidebar.§2t§);
      }
      
      public function §%7§() : void
      {
         §[!<§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §[!<§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!I§.§6!_§());
         var _loc1_:Boolean = this.§?!§();
         §!h§.§70§(_loc1_);
         §!h§.§ !h§(!_loc1_);
         §[!<§.getItemByName("Button_Credits").setVisibility(_loc1_);
         §[!<§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         §[!<§.getItemByName("Button_Login").setVisibility(false);
         §[!<§.getItemByName("Button_Logout").setVisibility(true);
         this.§`G§.§94§((§-!I§.§[f§ as AngryBirdsCustom).§=! §.§ !%§);
      }
      
      public function §4!y§(param1:Boolean = true) : void
      {
         §!h§.container.getItemByName("Button_Credits").setVisibility(param1);
         §!h§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §&!i§(param1:Boolean) : void
      {
         §!h§.§ !h§(param1);
      }
      
      public function §70§(param1:Boolean) : void
      {
         §!h§.§70§(param1);
      }
      
      public function § !`§() : Boolean
      {
         return §!h§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         §!h§.§""-§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               (§-!I§.§[f§ as AngryBirdsCustom).setSoundsEnabled(!§-!I§.§6!_§());
               §[!<§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!I§.§6!_§());
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "LOGOUT":
               §-!I§.§[f§.§@!C§.openPopup(new §[!Y§(this.§9R§));
               this.§`G§.§94§(false);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "LOGIN":
               (§-!I§.§[f§ as AngryBirdsCustom).§?n§(§2!E§.§7w§);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "CREDITS":
               this.§0j§();
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§3%§));
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "TUTORIAL":
               this.§9!5§();
               §3!5§.§<!9§("Menu_Confirm");
         }
      }
      
      protected function §9!5§() : void
      {
         var _loc1_:§;3§ = §-!I§.§[f§.§5!i§;
         var _loc2_:Vector.<String> = _loc1_.§-!#§.getTutorialNamesForMapping(§ !m§.§]H§);
         _loc1_.§"!4§(_loc2_,true,true,true,true,null,true,true);
      }
      
      private function §0j§() : void
      {
         var _loc1_:§ q§ = (§-!I§.§[f§ as AngryBirdsCustom).§+!t§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§+!W§));
         (§-!I§.§[f§ as AngryBirdsCustom).§?n§(§`"$§.§7w§);
      }
      
      private function §]D§(param1:String) : void
      {
         §+!d§.§<"5§.setLanguage(param1);
         §2e§.setLanguage(param1);
         param1 = §+!d§.§<"5§.§,!;§();
         §]"-§.§6V§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §+!d§.§<"5§.updateTextFields(§[!<§,"HighscoreSidebar");
      }
      
      protected function §?!§() : Boolean
      {
         if((§-!I§.§[f§ as AngryBirdsCustom).§,>§() == §^!+§.§7w§ || (§-!I§.§[f§ as AngryBirdsCustom).§,>§() == § !S§.§7w§)
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
      
      override protected function runTransition(param1:§?J§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §`G§() : HighscoreSidebar
      {
         return §!h§;
      }
      
      public function get §;"-§() : §=7§
      {
         return this.§9R§;
      }
   }
}
