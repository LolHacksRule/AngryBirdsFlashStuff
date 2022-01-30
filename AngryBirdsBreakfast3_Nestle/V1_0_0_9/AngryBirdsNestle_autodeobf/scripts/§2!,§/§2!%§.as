package §2!,§
{
   import §!"§.§@]§;
   import §!R§.§#!L§;
   import §#!]§.§!!P§;
   import §#!]§.§&"5§;
   import §#!]§.§'"$§;
   import §#!]§.§+!a§;
   import §#!]§.§=A§;
   import §&!I§.§8!@§;
   import §1!s§.§8!f§;
   import §1!s§.AbstractPopup;
   import §1!s§.§finally§;
   import §4!4§.PopupSidebarEvent;
   import §6!!§.§4G§;
   import §7;§.§ K§;
   import §7;§.§%!D§;
   import §8!$§.§1b§;
   import §;X§.§4!@§;
   import §="5§.HighscoreSidebar;
   import §?9§.§ x§;
   import §`!s§.§^2§;
   
   public class §2!%§ extends AbstractPopup
   {
      
      private static var §%!t§:Class = §;5§;
      
      private static var §4"%§:HighscoreSidebar = null;
       
      
      private var §3F§:§ x§;
      
      private var §!=§:int = -1;
      
      private var §2!P§:int = -1;
      
      private var §&I§:§@]§;
      
      public function §2!%§(param1:§@]§)
      {
         super(§8!f§.§+9§,§finally§.DEFAULT,§1b§.§?!R§(§%!t§));
         this.§&I§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§4"%§ == null)
         {
            §4"%§ = new HighscoreSidebar();
         }
         §4"%§.§[4§(§;"#§);
         this.updateTextFields();
         this.§-!w§();
         §4"%§.§5N§(HighscoreSidebar.§4N§);
      }
      
      public function §-!w§() : void
      {
         §;"#§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §;"#§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!2§.§[!A§());
         var _loc1_:Boolean = this.§,f§();
         §4"%§.§?!§(_loc1_);
         §4"%§.§,"§(!_loc1_);
         §;"#§.getItemByName("Button_Credits").setVisibility(_loc1_);
         §;"#§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         §;"#§.getItemByName("Button_Login").setVisibility(false);
         §;"#§.getItemByName("Button_Logout").setVisibility(true);
         this.§?!+§.§-_§((§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§'R§);
      }
      
      public function §,!a§(param1:Boolean = true) : void
      {
         §4"%§.container.getItemByName("Button_Credits").setVisibility(param1);
         §4"%§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §%"-§(param1:Boolean) : void
      {
         §4"%§.§,"§(param1);
      }
      
      public function §?!§(param1:Boolean) : void
      {
         §4"%§.§?!§(param1);
      }
      
      public function §;9§() : Boolean
      {
         return §4"%§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         §4"%§.§#%§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               (§-!2§.§7O§ as AngryBirdsCustom).setSoundsEnabled(!§-!2§.§[!A§());
               §;"#§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!2§.§[!A§());
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "LOGOUT":
               §-!2§.§7O§.§0!l§.openPopup(new §>!=§(this.§&I§));
               this.§?!+§.§-_§(false);
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "LOGIN":
               (§-!2§.§7O§ as AngryBirdsCustom).§]a§(§!!P§.§]!y§);
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "CREDITS":
               this.§6!B§();
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§+!f§));
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "TUTORIAL":
               this.§2=§();
               §4!@§.§`!w§("Menu_Confirm");
         }
      }
      
      protected function §2=§() : void
      {
         var _loc1_:§ K§ = §-!2§.§7O§.§-"7§;
         var _loc2_:Vector.<String> = _loc1_.§"!1§.getTutorialNamesForMapping(§%!D§.§<"#§);
         _loc1_.openMultipleTutorialPopups(_loc2_,true,true,true,true,null,true,true);
      }
      
      private function §6!B§() : void
      {
         var _loc1_:§-g§ = (§-!2§.§7O§ as AngryBirdsCustom).§8S§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§6r§));
         (§-!2§.§7O§ as AngryBirdsCustom).§]a§(§&"5§.§]!y§);
      }
      
      private function §else§(param1:String) : void
      {
         §^2§.§&!;§.setLanguage(param1);
         §%E§.setLanguage(param1);
         param1 = §^2§.§&!;§.§1!a§();
         §4G§.§&!7§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §^2§.§&!;§.updateTextFields(§;"#§,"HighscoreSidebar");
      }
      
      protected function §,f§() : Boolean
      {
         var _loc1_:String = (§-!2§.§7O§ as AngryBirdsCustom).§>`§();
         if(_loc1_ == §=A§.§]!y§ || _loc1_ == §'"$§.§]!y§ || _loc1_ == §+!a§.§]!y§)
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
      
      override protected function runTransition(param1:§8!@§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §?!+§() : HighscoreSidebar
      {
         return §4"%§;
      }
      
      public function get §'2§() : §@]§
      {
         return this.§&I§;
      }
   }
}
