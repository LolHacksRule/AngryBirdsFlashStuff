package §?I§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import §%f§.§[@§;
   import §,#§.§=!8§;
   import §2X§.§5L§;
   import §2X§.§]!F§;
   import §8q§.§]d§;
   import §;!9§.§"!_§;
   import §;!9§.§4!+§;
   import §;!9§.§["4§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §;4§.§%@§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import §>P§.§3!Z§;
   import §^t§.§4!C§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §8!W§ extends §1>§
   {
      
      private static var §'!E§:Class = §[!7§;
       
      
      private var §#m§:§["4§;
      
      private var §32§:§["4§;
      
      private var mParentContainer:§^!i§;
      
      private var §2§:§]!F§;
      
      private var §#!p§:§9!M§;
      
      private var §<H§:§9!M§;
      
      public function §8!W§(param1:§^!i§)
      {
         §2!b§ = false;
         §@n§ = false;
         §!d§ = true;
         super(§4&§.§@"$§,§ !+§.DEFAULT,this.§'!N§());
         this.mParentContainer = param1;
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §%@§.set(§'!E§);
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§-!X§();
         §@!U§.getItemByName("Button_Play").setVisibility(false);
         §@!U§.getItemByName("MovieClip_SoundOff").setVisibility(!§-O§.§^j§());
      }
      
      private function §-!X§() : void
      {
         this.§2§ = (§-O§.§5!1§ as AngryBirdsCustom).§;J§;
         this.§3"7§();
         §>!t§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
      }
      
      private function §3"7§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §@!U§.getItemByName("Container_CountrySelection").mClip;
         _loc2_ = this.§2§.§;'§();
         if(!this.§#m§)
         {
            this.§#m§ = new §["4§(_loc1_.width,_loc1_.height,§@!U§.getItemByName("Container_CountrySelection") as §^!i§,_loc2_,§4!+§,0,0);
            _loc1_.addChild(this.§#m§.§8!+§);
         }
         this.§do§();
      }
      
      private function §=!%§(param1:String) : void
      {
         var _loc3_:Array = null;
         var _loc2_:MovieClip = §@!U§.getItemByName("Container_LanguageSelection").mClip;
         if(this.§32§)
         {
            this.§32§.dispose();
            _loc2_.removeChild(this.§32§.§8!+§);
         }
         _loc3_ = this.§2§.§'!k§(param1);
         this.§32§ = new §["4§(_loc2_.width,_loc2_.height,§@!U§.getItemByName("Container_LanguageSelection") as §^!i§,_loc3_,§"!_§,0,0);
         _loc2_.addChild(this.§32§.§8!+§);
         this.§#!G§();
         var _loc4_:§9!M§ = this.§32§.§-9§(0);
         this.§7E§(_loc4_);
         if(_loc3_.length > 1)
         {
            §@!U§.getItemByName("Container_SelectLanguageWindow").setVisibility(true);
         }
         else
         {
            §@!U§.getItemByName("Container_SelectLanguageWindow").setVisibility(false);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         var _loc4_:String = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "SCROLL_COUNTRY_UP":
               this.§8d§(-this.§#m§.§<!F§);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "SCROLL_COUNTRY_DOWN":
               this.§8d§(this.§#m§.§<!F§);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "SCROLL_LANGUAGE_DOWN":
               this.§1^§(this.§32§.§<!F§);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "SCROLL_LANGUAGE_UP":
               this.§1^§(-this.§32§.§<!F§);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "SCROLLITEM_COUNTRY_CLICK":
               _loc4_ = (param3 as §9!M§).mName.substr("ScrollItem_".length);
               this.§=!%§(_loc4_);
               §[@§.§"e§.§,!"§(_loc4_.toUpperCase());
               this.§>!E§(param3 as §9!M§);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "SCROLLITEM_LANGUAGE_CLICK":
               this.§7E§(param3 as §9!M§);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "BUTTON_PLAY":
               §-O§.§5!1§.§'"6§(§=!8§.§'u§);
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !§-O§.§^j§();
               (§-O§.§5!1§ as AngryBirdsCustom).setSoundsEnabled(_loc5_);
               §@!U§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
               §]d§.§^!J§("Menu_Confirm");
         }
      }
      
      private function §>!E§(param1:§9!M§) : void
      {
         var _loc2_:§3!Z§ = null;
         if(this.§#!p§)
         {
            for each(_loc2_ in (§@!U§.getItemByName("Container_CountrySelection") as §^!i§).§[3§)
            {
               if(_loc2_ is §9!M§)
               {
                  if(_loc2_.mName == this.§#!p§.mName)
                  {
                     (_loc2_ as §9!M§).setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc2_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§-U§.§;!G§);
         this.§#!p§ = param1;
         this.§#m§.§!!e§ = param1.mName;
      }
      
      private function §7E§(param1:§9!M§) : void
      {
         var _loc3_:§3!Z§ = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         _loc2_ = "en";
         this.§6$§(_loc2_);
         if(this.§<H§)
         {
            for each(_loc3_ in (§@!U§.getItemByName("Container_LanguageSelection") as §^!i§).§[3§)
            {
               if(_loc3_ is §9!M§)
               {
                  if(_loc3_.mName == this.§<H§.mName)
                  {
                     (_loc3_ as §9!M§).setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc3_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§-U§.§;!G§);
         this.§<H§ = param1;
         this.§32§.§!!e§ = param1.mName;
      }
      
      private function §8d§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§#m§.scroll(param1);
            this.§do§();
         }
      }
      
      private function §1^§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§32§.scroll(param1);
            this.§#!G§();
         }
      }
      
      private function §do§() : void
      {
         var _loc1_:* = this.§#m§.offset != 0;
         var _loc2_:* = this.§#m§.offset != this.§#m§.data.length - this.§#m§.§<!F§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §@!U§.getItemByName("Button_Country_ArrowUp").setVisibility(_loc1_);
         §@!U§.getItemByName("Button_Country_ArrowDown").setVisibility(_loc2_);
      }
      
      private function §#!G§() : void
      {
         var _loc1_:* = this.§32§.offset != 0;
         var _loc2_:* = this.§32§.offset != this.§32§.data.length - this.§32§.§<!F§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §@!U§.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
         §@!U§.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
      }
      
      override public function updateTextFields() : void
      {
         §[@§.§"e§.updateTextFields(§@!U§,"SelectCountry_Popup");
         §[@§.§"e§.updateTextFields(this.mParentContainer,"CountrySelectionState");
      }
      
      private function §6$§(param1:String) : void
      {
         §[@§.§"e§.setLanguage(param1);
         §>!L§.setLanguage(param1);
         §@!U§.getItemByName("Button_Play").setVisibility(true);
         param1 = §[@§.§"e§.§1-§();
         §4!C§.§6'§("language",param1);
      }
      
      private function §"l§(param1:uint) : void
      {
         var _loc6_:§5L§ = null;
         var _loc2_:String = String.fromCharCode(param1).toLocaleLowerCase();
         var _loc3_:int = 0;
         var _loc4_:§5L§ = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§#m§.data.length)
         {
            if((_loc6_ = this.§#m§.data[_loc5_]).name.charAt(0).toLocaleLowerCase() == _loc2_)
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
         this.§8d§(this.§#m§.§!!w§ + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:RegExp = /[A-Za-z]/;
         if(String.fromCharCode(param1.charCode).match(_loc2_))
         {
            this.§"l§(param1.charCode);
         }
         else if(param1.keyCode == Keyboard.UP)
         {
            this.§8d§(-this.§#m§.§<!F§);
         }
         else if(param1.keyCode == Keyboard.DOWN)
         {
            this.§8d§(this.§#m§.§<!F§);
         }
      }
      
      override public function dispose() : void
      {
         §>!t§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         super.dispose();
      }
   }
}
