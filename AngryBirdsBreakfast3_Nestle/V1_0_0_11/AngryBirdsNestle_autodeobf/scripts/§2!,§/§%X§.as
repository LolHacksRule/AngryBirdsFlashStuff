package §2!,§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §!R§.§9!8§;
   import §#!]§.§+!a§;
   import §1!s§.§8!f§;
   import §1!s§.§finally§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §6!!§.§4G§;
   import §8!$§.§1b§;
   import §9!!§.§+!c§;
   import §9!!§.§21§;
   import §;X§.§4!@§;
   import §>!7§.§%!J§;
   import §>!7§.§1L§;
   import §>!7§.§<"3§;
   import §`!s§.§^2§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §%X§ extends §,!#§
   {
      
      private static var §0Z§:Class = §!§;
       
      
      private var §;[§:§1L§;
      
      private var § !p§:§1L§;
      
      private var mParentContainer:§%n§;
      
      private var §+!S§:§21§;
      
      private var §in §:§ `§;
      
      private var §`"!§:§ `§;
      
      public function §%X§(param1:§%n§)
      {
         §&5§ = false;
         §2L§ = false;
         §[!k§ = true;
         super(§8!f§.§7!N§,§finally§.DEFAULT,this.§';§());
         this.mParentContainer = param1;
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §1b§.§?!R§(§0Z§);
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§9!§();
         §;"#§.getItemByName("Button_Play").setVisibility(false);
         §;"#§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!2§.§[!A§());
      }
      
      private function §9!§() : void
      {
         this.§+!S§ = (§-!2§.§7O§ as AngryBirdsCustom).§-"'§;
         this.§ !!§();
         §1!!§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
      }
      
      private function § !!§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §;"#§.getItemByName("Container_CountrySelection").mClip;
         _loc2_ = this.§+!S§.§]!t§();
         if(!this.§;[§)
         {
            this.§;[§ = new §1L§(_loc1_.width,_loc1_.height,§;"#§.getItemByName("Container_CountrySelection") as §%n§,_loc2_,§<"3§,0,0);
            _loc1_.addChild(this.§;[§.§<&§);
         }
         this.§[U§();
      }
      
      private function §^!%§(param1:String) : void
      {
         var _loc3_:Array = null;
         var _loc2_:MovieClip = §;"#§.getItemByName("Container_LanguageSelection").mClip;
         if(this.§ !p§)
         {
            this.§ !p§.dispose();
            _loc2_.removeChild(this.§ !p§.§<&§);
         }
         _loc3_ = this.§+!S§.§&g§(param1);
         this.§ !p§ = new §1L§(_loc2_.width,_loc2_.height,§;"#§.getItemByName("Container_LanguageSelection") as §%n§,_loc3_,§%!J§,0,0);
         _loc2_.addChild(this.§ !p§.§<&§);
         this.§?b§();
         var _loc4_:§ `§ = this.§ !p§.§,"6§(0);
         this.§"0§(_loc4_);
         if(_loc3_.length > 1)
         {
            §;"#§.getItemByName("Container_SelectLanguageWindow").setVisibility(true);
         }
         else
         {
            §;"#§.getItemByName("Container_SelectLanguageWindow").setVisibility(false);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         var _loc4_:String = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "SCROLL_COUNTRY_UP":
               this.§1l§(-this.§;[§.§`!P§);
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "SCROLL_COUNTRY_DOWN":
               this.§1l§(this.§;[§.§`!P§);
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "SCROLL_LANGUAGE_DOWN":
               this.§<!<§(this.§ !p§.§`!P§);
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "SCROLL_LANGUAGE_UP":
               this.§<!<§(-this.§ !p§.§`!P§);
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "SCROLLITEM_COUNTRY_CLICK":
               _loc4_ = (param3 as § `§).mName.substr("ScrollItem_".length);
               this.§^!%§(_loc4_);
               §^2§.§&!;§.§,[§(_loc4_.toUpperCase());
               this.§2"'§(param3 as § `§);
               this.§,K§();
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "SCROLLITEM_LANGUAGE_CLICK":
               this.§"0§(param3 as § `§);
               this.§,K§();
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "BUTTON_PLAY":
               §-!2§.§7O§.§]a§(§+!a§.§]!y§);
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !§-!2§.§[!A§();
               (§-!2§.§7O§ as AngryBirdsCustom).setSoundsEnabled(_loc5_);
               §;"#§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
               §4!@§.§`!w§("Menu_Confirm");
         }
      }
      
      private function §2"'§(param1:§ `§) : void
      {
         var _loc2_:§9!8§ = null;
         if(this.§in §)
         {
            for each(_loc2_ in (§;"#§.getItemByName("Container_CountrySelection") as §%n§).§@U§)
            {
               if(_loc2_ is § `§)
               {
                  if(_loc2_.mName == this.§in §.mName)
                  {
                     (_loc2_ as § `§).setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc2_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§-!T§.§,!H§);
         this.§in § = param1;
         this.§;[§.§<!l§ = param1.mName;
      }
      
      private function §"0§(param1:§ `§) : void
      {
         var _loc3_:§9!8§ = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         this.§else§(_loc2_);
         if(this.§`"!§)
         {
            for each(_loc3_ in (§;"#§.getItemByName("Container_LanguageSelection") as §%n§).§@U§)
            {
               if(_loc3_ is § `§)
               {
                  if(_loc3_.mName == this.§`"!§.mName)
                  {
                     (_loc3_ as § `§).setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc3_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§-!T§.§,!H§);
         this.§`"!§ = param1;
         this.§ !p§.§<!l§ = param1.mName;
      }
      
      private function §1l§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§;[§.scroll(param1);
            this.§[U§();
         }
      }
      
      private function §<!<§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§ !p§.scroll(param1);
            this.§?b§();
         }
      }
      
      private function §[U§() : void
      {
         var _loc1_:* = this.§;[§.offset != 0;
         var _loc2_:* = this.§;[§.offset != this.§;[§.data.length - this.§;[§.§`!P§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §;"#§.getItemByName("Button_Country_ArrowUp").setVisibility(_loc1_);
         §;"#§.getItemByName("Button_Country_ArrowDown").setVisibility(_loc2_);
      }
      
      private function §?b§() : void
      {
         var _loc1_:* = this.§ !p§.offset != 0;
         var _loc2_:* = this.§ !p§.offset != this.§ !p§.data.length - this.§ !p§.§`!P§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §;"#§.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
         §;"#§.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
      }
      
      override public function updateTextFields() : void
      {
         §^2§.§&!;§.updateTextFields(§;"#§,"SelectCountry_Popup");
         §^2§.§&!;§.updateTextFields(this.mParentContainer,"CountrySelectionState");
      }
      
      private function §else§(param1:String) : void
      {
         §^2§.§&!;§.setLanguage(param1);
         §%E§.setLanguage(param1);
         §;"#§.getItemByName("Button_Play").setVisibility(true);
      }
      
      private function §'!>§(param1:uint) : void
      {
         var _loc6_:§+!c§ = null;
         var _loc2_:String = String.fromCharCode(param1).toLocaleLowerCase();
         var _loc3_:int = 0;
         var _loc4_:§+!c§ = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§;[§.data.length)
         {
            if((_loc6_ = this.§;[§.data[_loc5_]).name.charAt(0).toLocaleLowerCase() == _loc2_)
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
         this.§1l§(this.§;[§.§&3§ + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:RegExp = /[A-Za-z]/;
         if(String.fromCharCode(param1.charCode).match(_loc2_))
         {
            this.§'!>§(param1.charCode);
         }
         else if(param1.keyCode == Keyboard.UP)
         {
            this.§1l§(-this.§;[§.§`!P§);
         }
         else if(param1.keyCode == Keyboard.DOWN)
         {
            this.§1l§(this.§;[§.§`!P§);
         }
      }
      
      override public function dispose() : void
      {
         §1!!§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         super.dispose();
      }
      
      private function §,K§() : void
      {
         var _loc1_:String = §^2§.§&!;§.§]T§();
         var _loc2_:String = §^2§.§&!;§.§1!a§();
         var _loc3_:String = _loc2_ + "_" + _loc1_;
         §4G§.§&!7§("onFlashLanguageChange",_loc3_);
      }
   }
}
