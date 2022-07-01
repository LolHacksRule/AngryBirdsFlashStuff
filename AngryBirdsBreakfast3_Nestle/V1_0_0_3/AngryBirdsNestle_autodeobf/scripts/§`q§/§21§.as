package §`q§
{
   import § !H§.§0!m§;
   import §'9§.§+A§;
   import §'9§.§0!k§;
   import §-!F§.§[!Q§;
   import §1W§.§&!+§;
   import §1W§.§'"4§;
   import §1W§.§]!r§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §=!7§.§%!%§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §@f§.§7h§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   import §`!6§.§'3§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §21§ extends §'!O§
   {
      
      private static var §`"§:Class = §1!y§;
       
      
      private var §-"§:§&!+§;
      
      private var §"""§:§&!+§;
      
      private var mParentContainer:§5" §;
      
      private var §@"§:§0!k§;
      
      private var §9J§:§?v§;
      
      private var §`!c§:§?v§;
      
      public function §21§(param1:§5" §)
      {
         §=!c§ = false;
         §1!b§ = false;
         §0!2§ = true;
         super(§%!T§.§#e§,§#!q§.DEFAULT,this.§@A§());
         this.mParentContainer = param1;
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §%!%§.§<!0§(§`"§);
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§%!X§();
         §#t§.getItemByName("Button_Play").setVisibility(false);
         §#t§.getItemByName("MovieClip_SoundOff").setVisibility(!§&N§.§3!M§());
      }
      
      private function §%!X§() : void
      {
         this.§@"§ = (§&N§.§#Y§ as AngryBirdsCustom).§7!J§;
         this.§;!B§();
         §6R§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
      }
      
      private function §;!B§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §#t§.getItemByName("Container_CountrySelection").mClip;
         _loc2_ = this.§@"§.§^!P§();
         if(!this.§-"§)
         {
            this.§-"§ = new §&!+§(_loc1_.width,_loc1_.height,§#t§.getItemByName("Container_CountrySelection") as §5" §,_loc2_,§'"4§,0,0);
            _loc1_.addChild(this.§-"§.§!d§);
         }
         this.§-"1§();
      }
      
      private function §^q§(param1:String) : void
      {
         var _loc3_:Array = null;
         var _loc2_:MovieClip = §#t§.getItemByName("Container_LanguageSelection").mClip;
         if(this.§"""§)
         {
            this.§"""§.dispose();
            _loc2_.removeChild(this.§"""§.§!d§);
         }
         _loc3_ = this.§@"§.§!!y§(param1);
         this.§"""§ = new §&!+§(_loc2_.width,_loc2_.height,§#t§.getItemByName("Container_LanguageSelection") as §5" §,_loc3_,§]!r§,0,0);
         _loc2_.addChild(this.§"""§.§!d§);
         this.§3!k§();
         var _loc4_:§?v§ = this.§"""§.§8!`§(0);
         this.§-Q§(_loc4_);
         if(_loc3_.length > 1)
         {
            §#t§.getItemByName("Container_SelectLanguageWindow").setVisibility(true);
         }
         else
         {
            §#t§.getItemByName("Container_SelectLanguageWindow").setVisibility(false);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         var _loc4_:String = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "SCROLL_COUNTRY_UP":
               this.§!"0§(-this.§-"§.§=H§);
               break;
            case "SCROLL_COUNTRY_DOWN":
               this.§!"0§(this.§-"§.§=H§);
               break;
            case "SCROLL_LANGUAGE_DOWN":
               this.§^!`§(this.§"""§.§=H§);
               break;
            case "SCROLL_LANGUAGE_UP":
               this.§^!`§(-this.§"""§.§=H§);
               break;
            case "SCROLLITEM_COUNTRY_CLICK":
               _loc4_ = (param3 as §?v§).mName.substr("ScrollItem_".length);
               this.§^q§(_loc4_);
               §[!Q§.§=J§.§#!5§(_loc4_.toUpperCase());
               this.§<N§(param3 as §?v§);
               break;
            case "SCROLLITEM_LANGUAGE_CLICK":
               this.§-Q§(param3 as §?v§);
               break;
            case "BUTTON_PLAY":
               §&N§.§#Y§.§8=§(§'3§.§]O§);
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !§&N§.§3!M§();
               (§&N§.§#Y§ as AngryBirdsCustom).setSoundsEnabled(_loc5_);
               §#t§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
         }
      }
      
      private function §<N§(param1:§?v§) : void
      {
         var _loc2_:§7h§ = null;
         if(this.§9J§)
         {
            for each(_loc2_ in (§#t§.getItemByName("Container_CountrySelection") as §5" §).§ q§)
            {
               if(_loc2_ is §?v§)
               {
                  if(_loc2_.mName == this.§9J§.mName)
                  {
                     (_loc2_ as §?v§).setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc2_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§4d§.§&!i§);
         this.§9J§ = param1;
         this.§-"§.§^!M§ = param1.mName;
      }
      
      private function §-Q§(param1:§?v§) : void
      {
         var _loc3_:§7h§ = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         _loc2_ = "en";
         this.§%j§(_loc2_);
         if(this.§`!c§)
         {
            for each(_loc3_ in (§#t§.getItemByName("Container_LanguageSelection") as §5" §).§ q§)
            {
               if(_loc3_ is §?v§)
               {
                  if(_loc3_.mName == this.§`!c§.mName)
                  {
                     (_loc3_ as §?v§).setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc3_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§4d§.§&!i§);
         this.§`!c§ = param1;
         this.§"""§.§^!M§ = param1.mName;
      }
      
      private function §!"0§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§-"§.scroll(param1);
            this.§-"1§();
         }
      }
      
      private function §^!`§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§"""§.scroll(param1);
            this.§3!k§();
         }
      }
      
      private function §-"1§() : void
      {
         var _loc1_:* = this.§-"§.offset != 0;
         var _loc2_:* = this.§-"§.offset != this.§-"§.data.length - this.§-"§.§=H§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §#t§.getItemByName("Button_Country_ArrowUp").setVisibility(_loc1_);
         §#t§.getItemByName("Button_Country_ArrowDown").setVisibility(_loc2_);
      }
      
      private function §3!k§() : void
      {
         var _loc1_:* = this.§"""§.offset != 0;
         var _loc2_:* = this.§"""§.offset != this.§"""§.data.length - this.§"""§.§=H§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §#t§.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
         §#t§.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
      }
      
      override public function updateTextFields() : void
      {
         §[!Q§.§=J§.updateTextFields(§#t§,"SelectCountry_Popup");
         §[!Q§.§=J§.updateTextFields(this.mParentContainer,"CountrySelectionState");
      }
      
      private function §%j§(param1:String) : void
      {
         §[!Q§.§=J§.setLanguage(param1);
         §@d§.setLanguage(param1);
         §#t§.getItemByName("Button_Play").setVisibility(true);
         param1 = §[!Q§.§=J§.§"" §();
         §0!m§.§<Q§("language",param1);
      }
      
      private function § w§(param1:uint) : void
      {
         var _loc6_:§+A§ = null;
         var _loc2_:String = String.fromCharCode(param1);
         var _loc3_:int = 0;
         var _loc4_:§+A§ = null;
         var _loc5_:* = 0;
         while(_loc5_ < this.§-"§.data.length)
         {
            if((_loc6_ = this.§-"§.data[_loc5_]).name.charAt(0).toLocaleLowerCase() == _loc2_.toLocaleLowerCase())
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
         this.§-"§.scroll(this.§-"§.§8!j§ + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:RegExp = /[A-Za-z]/;
         if(String.fromCharCode(param1.charCode).match(_loc2_))
         {
            this.§ w§(param1.charCode);
         }
         else if(param1.keyCode == Keyboard.UP)
         {
            this.§!"0§(-this.§-"§.§=H§);
         }
         else if(param1.keyCode == Keyboard.DOWN)
         {
            this.§!"0§(this.§-"§.§=H§);
         }
      }
      
      override public function dispose() : void
      {
         §6R§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         super.dispose();
      }
   }
}
