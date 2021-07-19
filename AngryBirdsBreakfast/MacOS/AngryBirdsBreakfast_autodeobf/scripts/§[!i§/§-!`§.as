package §[!i§
{
   import §"n§.§!!G§;
   import §#![§.§%!W§;
   import §&!F§.§%!r§;
   import §&!F§.§5v§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §,L§.§;[§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import §5!G§.§#!6§;
   import §5!G§.§64§;
   import §8!K§.§5!Y§;
   import §;!§.§-!v§;
   import §;!§.§1A§;
   import each.§8!N§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §-!`§ extends §@"§
   {
      
      private static var §%!4§:Class = §=C§;
       
      
      private var §=P§:§5v§;
      
      private var mParentContainer:§"!a§;
      
      private var §2j§:§;§;
      
      private var §7o§:§64§;
      
      public function §-!`§(param1:§"!a§)
      {
         §-!w§ = false;
         §@!X§ = false;
         §0!T§ = false;
         super(§1!<§.§20§,§]l§.DEFAULT,this.§`!K§());
         this.mParentContainer = param1;
      }
      
      private function §^""§() : void
      {
         var _loc1_:* = this.§=P§.offset != 0;
         var _loc2_:* = this.§=P§.offset != this.§=P§.data.length - this.§=P§.§=I§;
         §@'§.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
         §@'§.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
      }
      
      override public function updateTextFields() : void
      {
         §!!G§.§2Z§.updateTextFields(§@'§,"SelectLanguage_Popup");
         §!!G§.§2Z§.updateTextFields(this.mParentContainer,"LanguageSelectionState");
      }
      
      private function §0t§(param1:String) : void
      {
         §!!G§.§2Z§.setLanguage(param1);
         §-!]§.setLanguage(param1);
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §8!N§.§?!c§(§%!4§);
         return §4!=§.§'!u§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§[v§();
         §@'§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §@'§.getItemByName("MovieClip_SoundOff").mClip.visible = !(§6!!§.singleton as §4!=§).soundsEnabled;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§-S§();
      }
      
      private function §[v§() : void
      {
         this.§7o§ = new §64§();
         this.§5Q§();
         §6!c§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
      }
      
      private function §5Q§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §@'§.getItemByName("Container_LanguageSelection").mClip;
         _loc2_ = this.§7o§.§5!U§();
         if(!this.§=P§)
         {
            this.§=P§ = new §5v§(_loc1_.width,_loc1_.height,§@'§.getItemByName("Container_LanguageSelection") as §"!a§,_loc2_,§%!r§,0,0);
            _loc1_.addChild(this.§=P§.§`h§);
         }
         this.§^""§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         switch(param2)
         {
            case "SCROLL_LANGUAGE_DOWN":
               this.§,!0§(this.§=P§.§=I§);
               §'!c§.§3!f§("Menu_Back");
               break;
            case "SCROLL_LANGUAGE_UP":
               this.§,!0§(-this.§=P§.§=I§);
               §'!c§.§3!f§("Menu_Back");
               break;
            case "SCROLLITEM_LANGUAGE_CLICK":
               this.§[o§(param3 as §;§);
               §@'§.getItemByName("Button_Play").setVisibility(true);
               §'!c§.§3!f§("Menu_Confirm");
               break;
            case "BUTTON_PLAY":
               _loc4_ = this.§2j§.mName.substr("ScrollItem_".length);
               (§6!!§.singleton as §4!=§).§?!b§.§[o§(_loc4_);
               §6!!§.singleton.§<f§(§1A§.§-!q§);
               (§6!!§.singleton as §4!=§).§=D§(true);
               §'!c§.§3!f§("Menu_Confirm");
               break;
            case "BUTTON_EXIT":
               §6!!§.singleton.§%![§.openPopup(new §[!x§());
               §'!c§.§3!f§("Menu_Confirm");
               break;
            case "BUTTON_CREDITS":
               this.§%!n§();
               §'!c§.§3!f§("Menu_Confirm");
               break;
            case "BUTTON_MUTE":
               (§6!!§.singleton as §4!=§).§5@§();
               _loc5_ = (§6!!§.singleton as §4!=§).soundsEnabled;
               §@'§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
               §'!c§.§3!f§("Menu_Confirm");
               break;
            case "BUTTON_FULLSCREEN":
               (§6!!§.singleton as §4!=§).§?!l§();
               §'!c§.§3!f§("Menu_Confirm");
         }
      }
      
      override protected function updateMuteButtonState() : void
      {
         var _loc1_:Boolean = (§6!!§.singleton as §4!=§).soundsEnabled;
         §@'§.getItemByName("MovieClip_SoundOff").setVisibility(_loc1_);
         §'!c§.§3!f§("Menu_Confirm");
      }
      
      private function §-S§() : void
      {
         var _loc1_:Boolean = (§6!!§.singleton as §4!=§).soundsEnabled;
         §@'§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc1_);
      }
      
      private function §[o§(param1:§;§) : void
      {
         var _loc3_:§;[§ = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         this.§0t§(_loc2_);
         if(this.§2j§)
         {
            for each(_loc3_ in (§@'§.getItemByName("Container_LanguageSelection") as §"!a§).§<C§)
            {
               if(_loc3_ is §;§)
               {
                  if(_loc3_.mName == this.§2j§.mName)
                  {
                     (_loc3_ as §;§).setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc3_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§%J§.§2!r§);
         this.§2j§ = param1;
         this.§=P§.§9F§ = param1.mName;
      }
      
      private function §,!0§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§=P§.scroll(param1);
            this.§^""§();
         }
      }
      
      private function §%!n§() : void
      {
         var _loc1_:§5!Y§ = (§6!!§.singleton as §4!=§).§@!R§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(§%!W§.§ H§));
         (§6!!§.singleton as §4!=§).§<f§(§-!v§.§-!q§);
         §6!!§.singleton.§%![§.§[!"§();
      }
      
      private function §<g§(param1:uint) : void
      {
         var _loc6_:§#!6§ = null;
         var _loc2_:String = String.fromCharCode(param1);
         var _loc3_:int = 0;
         var _loc4_:§#!6§ = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§=P§.data.length)
         {
            if((_loc6_ = this.§=P§.data[_loc5_]).nativeName.charAt(0).toLocaleLowerCase() == _loc2_.toLocaleLowerCase())
            {
               _loc3_ = _loc5_;
               _loc4_ = _loc6_;
               break;
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            return;
         }
         this.§,!0§(this.§=P§.§!4§ + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:RegExp = /[A-Za-z]/;
         if(String.fromCharCode(param1.charCode).match(_loc2_))
         {
            this.§<g§(param1.charCode);
         }
         else if(param1.keyCode == Keyboard.UP)
         {
            this.§,!0§(-this.§=P§.§=I§);
         }
         else if(param1.keyCode == Keyboard.DOWN)
         {
            this.§,!0§(this.§=P§.§=I§);
         }
      }
      
      override protected function closePressed() : void
      {
      }
      
      override public function dispose() : void
      {
         §6!c§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         super.dispose();
      }
   }
}
