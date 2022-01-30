package §@!l§
{
   import § !Q§.§=!3§;
   import §!!&§.§`!$§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   import §!!n§.§#%§;
   import §!!n§.§[i§;
   import §'!'§.§0!p§;
   import §;!S§.§"K§;
   import §;!S§.§%<§;
   import §;!S§.§-7§;
   import §;s§.§%!c§;
   import §<!0§.§ !B§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import §]!V§.§`'§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §0§ extends §-"+§
   {
      
      private static var §-!#§:Class = §4F§;
       
      
      private var §[!9§:§%<§;
      
      private var §,"4§:§%<§;
      
      private var mParentContainer:§]"4§;
      
      private var §>B§:§[i§;
      
      private var §,i§:§73§;
      
      private var §<!g§:§73§;
      
      public function §0§(param1:§]"4§)
      {
         §@_§ = false;
         §!"6§ = false;
         §>,§ = true;
         super(§>!&§.§@!w§,§4!f§.DEFAULT,this.§[x§());
         this.mParentContainer = param1;
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!3§.§0I§(§-!#§);
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§6M§();
         §-"1§.getItemByName("Button_Play").setVisibility(false);
         §-"1§.getItemByName("MovieClip_SoundOff").setVisibility(!§,!X§.§>m§());
      }
      
      private function §6M§() : void
      {
         this.§>B§ = (§,!X§.§>!G§ as AngryBirdsCustom).§!&§;
         this.§8=§();
         §6!x§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
      }
      
      private function §8=§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §-"1§.getItemByName("Container_CountrySelection").mClip;
         _loc2_ = this.§>B§.§,!x§();
         if(!this.§[!9§)
         {
            this.§[!9§ = new §%<§(_loc1_.width,_loc1_.height,§-"1§.getItemByName("Container_CountrySelection") as §]"4§,_loc2_,§-7§,0,0);
            _loc1_.addChild(this.§[!9§.§0C§);
         }
         this.§>[§();
      }
      
      private function §=-§(param1:String) : void
      {
         var _loc3_:Array = null;
         var _loc2_:MovieClip = §-"1§.getItemByName("Container_LanguageSelection").mClip;
         if(this.§,"4§)
         {
            this.§,"4§.dispose();
            _loc2_.removeChild(this.§,"4§.§0C§);
         }
         _loc3_ = this.§>B§.§0!7§(param1);
         this.§,"4§ = new §%<§(_loc2_.width,_loc2_.height,§-"1§.getItemByName("Container_LanguageSelection") as §]"4§,_loc3_,§"K§,0,0);
         _loc2_.addChild(this.§,"4§.§0C§);
         this.§2"+§();
         var _loc4_:§73§ = this.§,"4§.§"!D§(0);
         this.§^!M§(_loc4_);
         if(_loc3_.length > 1)
         {
            §-"1§.getItemByName("Container_SelectLanguageWindow").setVisibility(true);
         }
         else
         {
            §-"1§.getItemByName("Container_SelectLanguageWindow").setVisibility(false);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         var _loc4_:String = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "SCROLL_COUNTRY_UP":
               this.§3!O§(-this.§[!9§.§,!c§);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "SCROLL_COUNTRY_DOWN":
               this.§3!O§(this.§[!9§.§,!c§);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "SCROLL_LANGUAGE_DOWN":
               this.§5l§(this.§,"4§.§,!c§);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "SCROLL_LANGUAGE_UP":
               this.§5l§(-this.§,"4§.§,!c§);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "SCROLLITEM_COUNTRY_CLICK":
               _loc4_ = (param3 as §73§).mName.substr("ScrollItem_".length);
               this.§=-§(_loc4_);
               §`!$§.§>!P§.§<$§(_loc4_.toUpperCase());
               this.§2y§(param3 as §73§);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "SCROLLITEM_LANGUAGE_CLICK":
               this.§^!M§(param3 as §73§);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "BUTTON_PLAY":
               §,!X§.§>!G§.§8!`§(§`'§.§+a§);
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !§,!X§.§>m§();
               (§,!X§.§>!G§ as AngryBirdsCustom).setSoundsEnabled(_loc5_);
               §-"1§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
               §%!c§.§8" §("Menu_Confirm");
         }
      }
      
      private function §2y§(param1:§73§) : void
      {
         var _loc2_:§ !B§ = null;
         if(this.§,i§)
         {
            for each(_loc2_ in (§-"1§.getItemByName("Container_CountrySelection") as §]"4§).§ !"§)
            {
               if(_loc2_ is §73§)
               {
                  if(_loc2_.mName == this.§,i§.mName)
                  {
                     (_loc2_ as §73§).setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc2_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§3!W§.§9k§);
         this.§,i§ = param1;
         this.§[!9§.§implements§ = param1.mName;
      }
      
      private function §^!M§(param1:§73§) : void
      {
         var _loc3_:§ !B§ = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         _loc2_ = "en";
         this.§0!@§(_loc2_);
         if(this.§<!g§)
         {
            for each(_loc3_ in (§-"1§.getItemByName("Container_LanguageSelection") as §]"4§).§ !"§)
            {
               if(_loc3_ is §73§)
               {
                  if(_loc3_.mName == this.§<!g§.mName)
                  {
                     (_loc3_ as §73§).setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc3_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§3!W§.§9k§);
         this.§<!g§ = param1;
         this.§,"4§.§implements§ = param1.mName;
      }
      
      private function §3!O§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§[!9§.scroll(param1);
            this.§>[§();
         }
      }
      
      private function §5l§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§,"4§.scroll(param1);
            this.§2"+§();
         }
      }
      
      private function §>[§() : void
      {
         var _loc1_:* = this.§[!9§.offset != 0;
         var _loc2_:* = this.§[!9§.offset != this.§[!9§.data.length - this.§[!9§.§,!c§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §-"1§.getItemByName("Button_Country_ArrowUp").setVisibility(_loc1_);
         §-"1§.getItemByName("Button_Country_ArrowDown").setVisibility(_loc2_);
      }
      
      private function §2"+§() : void
      {
         var _loc1_:* = this.§,"4§.offset != 0;
         var _loc2_:* = this.§,"4§.offset != this.§,"4§.data.length - this.§,"4§.§,!c§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §-"1§.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
         §-"1§.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
      }
      
      override public function updateTextFields() : void
      {
         §`!$§.§>!P§.updateTextFields(§-"1§,"SelectCountry_Popup");
         §`!$§.§>!P§.updateTextFields(this.mParentContainer,"CountrySelectionState");
      }
      
      private function §0!@§(param1:String) : void
      {
         §`!$§.§>!P§.setLanguage(param1);
         §-F§.setLanguage(param1);
         §-"1§.getItemByName("Button_Play").setVisibility(true);
         param1 = §`!$§.§>!P§.§?!2§();
         §0!p§.§`_§("language",param1);
      }
      
      private function §>"0§(param1:uint) : void
      {
         var _loc6_:§#%§ = null;
         var _loc2_:String = String.fromCharCode(param1).toLocaleLowerCase();
         var _loc3_:int = 0;
         var _loc4_:§#%§ = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§[!9§.data.length)
         {
            if((_loc6_ = this.§[!9§.data[_loc5_]).name.charAt(0).toLocaleLowerCase() == _loc2_)
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
         this.§3!O§(this.§[!9§.§,!b§ + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:RegExp = /[A-Za-z]/;
         if(String.fromCharCode(param1.charCode).match(_loc2_))
         {
            this.§>"0§(param1.charCode);
         }
         else if(param1.keyCode == Keyboard.UP)
         {
            this.§3!O§(-this.§[!9§.§,!c§);
         }
         else if(param1.keyCode == Keyboard.DOWN)
         {
            this.§3!O§(this.§[!9§.§,!c§);
         }
      }
      
      override public function dispose() : void
      {
         §6!x§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         super.dispose();
      }
   }
}
