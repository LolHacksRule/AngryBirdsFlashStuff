package §&_§
{
   import §&<§.§2!q§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §,a§.§%!E§;
   import §,a§.§+$§;
   import §,a§.§[!?§;
   import §0!$§.§2!K§;
   import §2W§.§+!d§;
   import §4!§.§1!R§;
   import §4!§.§[K§;
   import §5u§.§+!]§;
   import §5u§.§^!=§;
   import §6!5§.§,!`§;
   import §8x§.§]"-§;
   import §@!6§.§3!5§;
   import §[!F§.§3j§;
   import §[!F§.§^!g§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §`z§ extends §-"!§
   {
      
      private static var §`"%§:Class = §#^§;
       
      
      private var §%@§:§[!?§;
      
      private var §`!z§:§[!?§;
      
      private var mParentContainer:§3j§;
      
      private var §;!B§:§[K§;
      
      private var § !U§:§^!g§;
      
      private var §'0§:§^!g§;
      
      public function §`z§(param1:§3j§)
      {
         §^c§ = false;
         §'[§ = false;
         §null§ = true;
         super(§^!=§.§1v§,§+!]§.DEFAULT,this.§;!<§());
         this.mParentContainer = param1;
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §2!K§.§5i§(§`"%§);
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§+!>§();
         §[!<§.getItemByName("Button_Play").setVisibility(false);
         §[!<§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!I§.§6!_§());
      }
      
      private function §+!>§() : void
      {
         this.§;!B§ = (§-!I§.§[f§ as AngryBirdsCustom).§1!!§;
         this.§1!%§();
         §&X§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
      }
      
      private function §1!%§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §[!<§.getItemByName("Container_CountrySelection").mClip;
         _loc2_ = this.§;!B§.§6v§();
         if(!this.§%@§)
         {
            this.§%@§ = new §[!?§(_loc1_.width,_loc1_.height,§[!<§.getItemByName("Container_CountrySelection") as §3j§,_loc2_,§+$§,0,0);
            _loc1_.addChild(this.§%@§.§6!t§);
         }
         this.§1!C§();
      }
      
      private function §]w§(param1:String) : void
      {
         var _loc3_:Array = null;
         var _loc2_:MovieClip = §[!<§.getItemByName("Container_LanguageSelection").mClip;
         if(this.§`!z§)
         {
            this.§`!z§.dispose();
            _loc2_.removeChild(this.§`!z§.§6!t§);
         }
         _loc3_ = this.§;!B§.§7!n§(param1);
         this.§`!z§ = new §[!?§(_loc2_.width,_loc2_.height,§[!<§.getItemByName("Container_LanguageSelection") as §3j§,_loc3_,§%!E§,0,0);
         _loc2_.addChild(this.§`!z§.§6!t§);
         this.§^!5§();
         var _loc4_:§^!g§ = this.§`!z§.§"![§(0);
         this.§?"%§(_loc4_);
         if(_loc3_.length > 1)
         {
            §[!<§.getItemByName("Container_SelectLanguageWindow").setVisibility(true);
         }
         else
         {
            §[!<§.getItemByName("Container_SelectLanguageWindow").setVisibility(false);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         var _loc4_:String = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "SCROLL_COUNTRY_UP":
               this.§4>§(-this.§%@§.§^!s§);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "SCROLL_COUNTRY_DOWN":
               this.§4>§(this.§%@§.§^!s§);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "SCROLL_LANGUAGE_DOWN":
               this.§4!C§(this.§`!z§.§^!s§);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "SCROLL_LANGUAGE_UP":
               this.§4!C§(-this.§`!z§.§^!s§);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "SCROLLITEM_COUNTRY_CLICK":
               _loc4_ = (param3 as §^!g§).mName.substr("ScrollItem_".length);
               this.§]w§(_loc4_);
               §+!d§.§<"5§.§+B§(_loc4_.toUpperCase());
               this.§'!@§(param3 as §^!g§);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "SCROLLITEM_LANGUAGE_CLICK":
               this.§?"%§(param3 as §^!g§);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "BUTTON_PLAY":
               §-!I§.§[f§.§?n§(§,!`§.§7w§);
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !§-!I§.§6!_§();
               (§-!I§.§[f§ as AngryBirdsCustom).setSoundsEnabled(_loc5_);
               §[!<§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
               §3!5§.§<!9§("Menu_Confirm");
         }
      }
      
      private function §'!@§(param1:§^!g§) : void
      {
         var _loc2_:§2!q§ = null;
         if(this.§ !U§)
         {
            for each(_loc2_ in (§[!<§.getItemByName("Container_CountrySelection") as §3j§).§ !C§)
            {
               if(_loc2_ is §^!g§)
               {
                  if(_loc2_.mName == this.§ !U§.mName)
                  {
                     (_loc2_ as §^!g§).setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc2_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§@j§.§]P§);
         this.§ !U§ = param1;
         this.§%@§.§ !o§ = param1.mName;
      }
      
      private function §?"%§(param1:§^!g§) : void
      {
         var _loc3_:§2!q§ = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         _loc2_ = "en";
         this.§]D§(_loc2_);
         if(this.§'0§)
         {
            for each(_loc3_ in (§[!<§.getItemByName("Container_LanguageSelection") as §3j§).§ !C§)
            {
               if(_loc3_ is §^!g§)
               {
                  if(_loc3_.mName == this.§'0§.mName)
                  {
                     (_loc3_ as §^!g§).setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc3_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§@j§.§]P§);
         this.§'0§ = param1;
         this.§`!z§.§ !o§ = param1.mName;
      }
      
      private function §4>§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§%@§.scroll(param1);
            this.§1!C§();
         }
      }
      
      private function §4!C§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§`!z§.scroll(param1);
            this.§^!5§();
         }
      }
      
      private function §1!C§() : void
      {
         var _loc1_:* = this.§%@§.offset != 0;
         var _loc2_:* = this.§%@§.offset != this.§%@§.data.length - this.§%@§.§^!s§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §[!<§.getItemByName("Button_Country_ArrowUp").setVisibility(_loc1_);
         §[!<§.getItemByName("Button_Country_ArrowDown").setVisibility(_loc2_);
      }
      
      private function §^!5§() : void
      {
         var _loc1_:* = this.§`!z§.offset != 0;
         var _loc2_:* = this.§`!z§.offset != this.§`!z§.data.length - this.§`!z§.§^!s§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §[!<§.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
         §[!<§.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
      }
      
      override public function updateTextFields() : void
      {
         §+!d§.§<"5§.updateTextFields(§[!<§,"SelectCountry_Popup");
         §+!d§.§<"5§.updateTextFields(this.mParentContainer,"CountrySelectionState");
      }
      
      private function §]D§(param1:String) : void
      {
         §+!d§.§<"5§.setLanguage(param1);
         §2e§.setLanguage(param1);
         §[!<§.getItemByName("Button_Play").setVisibility(true);
         param1 = §+!d§.§<"5§.§,!;§();
         §]"-§.§6V§("language",param1);
      }
      
      private function §"!q§(param1:uint) : void
      {
         var _loc6_:§1!R§ = null;
         var _loc2_:String = String.fromCharCode(param1).toLocaleLowerCase();
         var _loc3_:int = 0;
         var _loc4_:§1!R§ = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§%@§.data.length)
         {
            if((_loc6_ = this.§%@§.data[_loc5_]).name.charAt(0).toLocaleLowerCase() == _loc2_)
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
         this.§4>§(this.§%@§.§&!y§ + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:RegExp = /[A-Za-z]/;
         if(String.fromCharCode(param1.charCode).match(_loc2_))
         {
            this.§"!q§(param1.charCode);
         }
         else if(param1.keyCode == Keyboard.UP)
         {
            this.§4>§(-this.§%@§.§^!s§);
         }
         else if(param1.keyCode == Keyboard.DOWN)
         {
            this.§4>§(this.§%@§.§^!s§);
         }
      }
      
      override public function dispose() : void
      {
         §&X§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         super.dispose();
      }
   }
}
