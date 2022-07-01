package §%9§
{
   import §"I§.§ !R§;
   import §0!%§.§ X§;
   import §0!%§.§,q§;
   import §9"&§.§7n§;
   import §9"&§.§<!1§;
   import §9"&§.§=!l§;
   import §?!E§.§^"!§;
   import §?-§.§do §;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   import §@#§.§4!O§;
   import §@#§.§9!'§;
   import §[!b§.§'!R§;
   import §[!b§.§2!O§;
   import §[!b§.§]"-§;
   import §`6§.§!!]§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §3!p§ extends §<a§
   {
      
      private static var §#U§:Class = §`""§;
       
      
      private var §70§:§7n§;
      
      private var §"!T§:§7n§;
      
      private var mParentContainer:§9!'§;
      
      private var §%!I§:§,q§;
      
      private var §?x§:§4!O§;
      
      private var §4!U§:§4!O§;
      
      public function §3!p§(param1:§9!'§)
      {
         §?!^§ = false;
         §+!X§ = false;
         §8!^§ = true;
         super(§9r§.§"d§,§>!H§.DEFAULT,this.§^!!§());
         this.mParentContainer = param1;
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = § !R§.§`G§(§#U§);
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§#8§();
         §0+§.getItemByName("Button_Play").setVisibility(false);
         §0+§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!l§.§&!<§());
      }
      
      private function §#8§() : void
      {
         this.§%!I§ = (§-!l§.§"x§ as AngryBirdsCustom).§=!Q§;
         this.§false§();
         §9!1§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
      }
      
      private function §false§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §0+§.getItemByName("Container_CountrySelection").mClip;
         _loc2_ = this.§%!I§.§#!-§();
         if(!this.§70§)
         {
            this.§70§ = new §7n§(_loc1_.width,_loc1_.height,§0+§.getItemByName("Container_CountrySelection") as §9!'§,_loc2_,§=!l§,0,0);
            _loc1_.addChild(this.§70§.§9B§);
         }
         this.§7!1§();
      }
      
      private function §3!1§(param1:String) : void
      {
         var _loc3_:Array = null;
         var _loc2_:MovieClip = §0+§.getItemByName("Container_LanguageSelection").mClip;
         if(this.§"!T§)
         {
            this.§"!T§.dispose();
            _loc2_.removeChild(this.§"!T§.§9B§);
         }
         _loc3_ = this.§%!I§.§3w§(param1);
         this.§"!T§ = new §7n§(_loc2_.width,_loc2_.height,§0+§.getItemByName("Container_LanguageSelection") as §9!'§,_loc3_,§<!1§,0,0);
         _loc2_.addChild(this.§"!T§.§9B§);
         this.§[!J§();
         var _loc4_:§4!O§ = this.§"!T§.§>2§(0);
         this.§!"#§(_loc4_);
         if(_loc3_.length > 1)
         {
            §0+§.getItemByName("Container_SelectLanguageWindow").setVisibility(true);
         }
         else
         {
            §0+§.getItemByName("Container_SelectLanguageWindow").setVisibility(false);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         var _loc4_:String = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "SCROLL_COUNTRY_UP":
               this.§^!I§(-this.§70§.§?"+§);
               break;
            case "SCROLL_COUNTRY_DOWN":
               this.§^!I§(this.§70§.§?"+§);
               break;
            case "SCROLL_LANGUAGE_DOWN":
               this.§"!b§(this.§"!T§.§?"+§);
               break;
            case "SCROLL_LANGUAGE_UP":
               this.§"!b§(-this.§"!T§.§?"+§);
               break;
            case "SCROLLITEM_COUNTRY_CLICK":
               _loc4_ = (param3 as §4!O§).mName.substr("ScrollItem_".length);
               this.§3!1§(_loc4_);
               §!!]§.§?!+§.§9Q§(_loc4_.toUpperCase());
               this.§!2§(param3 as §4!O§);
               break;
            case "SCROLLITEM_LANGUAGE_CLICK":
               this.§!"#§(param3 as §4!O§);
               break;
            case "BUTTON_PLAY":
               §-!l§.§"x§.§0!w§(§^"!§.§+B§);
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !§-!l§.§&!<§();
               (§-!l§.§"x§ as AngryBirdsCustom).setSoundsEnabled(_loc5_);
               §0+§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
         }
      }
      
      private function §!2§(param1:§4!O§) : void
      {
         var _loc2_:§2!O§ = null;
         if(this.§?x§)
         {
            for each(_loc2_ in (§0+§.getItemByName("Container_CountrySelection") as §9!'§).§3H§)
            {
               if(_loc2_ is §4!O§)
               {
                  if(_loc2_.mName == this.§?x§.mName)
                  {
                     (_loc2_ as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc2_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§]"-§.§2"0§);
         this.§?x§ = param1;
         this.§70§.§]M§ = param1.mName;
      }
      
      private function §!"#§(param1:§4!O§) : void
      {
         var _loc3_:§2!O§ = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         _loc2_ = "en";
         this.§6"3§(_loc2_);
         if(this.§4!U§)
         {
            for each(_loc3_ in (§0+§.getItemByName("Container_LanguageSelection") as §9!'§).§3H§)
            {
               if(_loc3_ is §4!O§)
               {
                  if(_loc3_.mName == this.§4!U§.mName)
                  {
                     (_loc3_ as §4!O§).setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc3_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§]"-§.§2"0§);
         this.§4!U§ = param1;
         this.§"!T§.§]M§ = param1.mName;
      }
      
      private function §^!I§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§70§.scroll(param1);
            this.§7!1§();
         }
      }
      
      private function §"!b§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§"!T§.scroll(param1);
            this.§[!J§();
         }
      }
      
      private function §7!1§() : void
      {
         var _loc1_:* = this.§70§.offset != 0;
         var _loc2_:* = this.§70§.offset != this.§70§.data.length - this.§70§.§?"+§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §0+§.getItemByName("Button_Country_ArrowUp").setVisibility(_loc1_);
         §0+§.getItemByName("Button_Country_ArrowDown").setVisibility(_loc2_);
      }
      
      private function §[!J§() : void
      {
         var _loc1_:* = this.§"!T§.offset != 0;
         var _loc2_:* = this.§"!T§.offset != this.§"!T§.data.length - this.§"!T§.§?"+§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §0+§.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
         §0+§.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
      }
      
      override public function updateTextFields() : void
      {
         §!!]§.§?!+§.updateTextFields(§0+§,"SelectCountry_Popup");
         §!!]§.§?!+§.updateTextFields(this.mParentContainer,"CountrySelectionState");
      }
      
      private function §6"3§(param1:String) : void
      {
         §!!]§.§?!+§.setLanguage(param1);
         §"q§.setLanguage(param1);
         §0+§.getItemByName("Button_Play").setVisibility(true);
         param1 = §!!]§.§?!+§.§[!;§();
         §do §.§>"-§("language",param1);
      }
      
      private function §"@§(param1:uint) : void
      {
         var _loc6_:§ X§ = null;
         var _loc2_:String = String.fromCharCode(param1);
         var _loc3_:int = 0;
         var _loc4_:§ X§ = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§70§.data.length)
         {
            if((_loc6_ = this.§70§.data[_loc5_]).name.charAt(0).toLocaleLowerCase() == _loc2_.toLocaleLowerCase())
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
         this.§^!I§(this.§70§.§3!9§ + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:RegExp = /[A-Za-z]/;
         if(String.fromCharCode(param1.charCode).match(_loc2_))
         {
            this.§"@§(param1.charCode);
         }
         else if(param1.keyCode == Keyboard.UP)
         {
            this.§^!I§(-this.§70§.§?"+§);
         }
         else if(param1.keyCode == Keyboard.DOWN)
         {
            this.§^!I§(this.§70§.§?"+§);
         }
      }
      
      override public function dispose() : void
      {
         §9!1§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         super.dispose();
      }
   }
}
