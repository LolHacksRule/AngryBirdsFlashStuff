package §'!3§
{
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §'"!§.§<!7§;
   import §1!c§.§%!<§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §4!i§.§@"#§;
   import §;!p§.§+! §;
   import §;!p§.§^!%§;
   import §;!p§.§`!>§;
   import §;V§.§%c§;
   import §[!Z§.§>D§;
   import §[+§.§3!O§;
   import §[+§.§6!p§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §]A§ extends §;!o§
   {
      
      private static var § each§:Class = §+^§;
       
      
      private var §!!=§:§+! §;
      
      private var §<P§:§+! §;
      
      private var mParentContainer:§,6§;
      
      private var §[!I§:§6!p§;
      
      private var §%"8§:§]"%§;
      
      private var §[!j§:§]"%§;
      
      public function §]A§(param1:§,6§)
      {
         §9p§ = false;
         §]G§ = false;
         §^J§ = true;
         super(§`!t§.§class§,§4z§.DEFAULT,this.§'!,§());
         this.mParentContainer = param1;
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§ each§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§+!,§();
         §29§.getItemByName("Button_Play").setVisibility(false);
         §29§.getItemByName("MovieClip_SoundOff").setVisibility(!§ !4§.§4E§());
      }
      
      private function §+!,§() : void
      {
         this.§[!I§ = (§ !4§.§%"7§ as AngryBirdsCustom).§6!g§;
         this.§1"2§();
         §-p§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
      }
      
      private function §1"2§() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = §29§.getItemByName("Container_CountrySelection").mClip;
         _loc2_ = this.§[!I§.§;&§();
         if(!this.§!!=§)
         {
            this.§!!=§ = new §+! §(_loc1_.width,_loc1_.height,§29§.getItemByName("Container_CountrySelection") as §,6§,_loc2_,§`!>§,0,0);
            _loc1_.addChild(this.§!!=§.§"]§);
         }
         this.§^!_§();
      }
      
      private function §,!v§(param1:String) : void
      {
         var _loc3_:Array = null;
         var _loc2_:MovieClip = §29§.getItemByName("Container_LanguageSelection").mClip;
         if(this.§<P§)
         {
            this.§<P§.dispose();
            _loc2_.removeChild(this.§<P§.§"]§);
         }
         _loc3_ = this.§[!I§.§,!$§(param1);
         this.§<P§ = new §+! §(_loc2_.width,_loc2_.height,§29§.getItemByName("Container_LanguageSelection") as §,6§,_loc3_,§^!%§,0,0);
         _loc2_.addChild(this.§<P§.§"]§);
         this.§0!X§();
         var _loc4_:§]"%§ = this.§<P§.§2!E§(0);
         this.§@"7§(_loc4_);
         if(_loc3_.length > 1)
         {
            §29§.getItemByName("Container_SelectLanguageWindow").setVisibility(true);
         }
         else
         {
            §29§.getItemByName("Container_SelectLanguageWindow").setVisibility(false);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc4_:String = null;
         var _loc5_:* = false;
         switch(param2)
         {
            case "SCROLL_COUNTRY_UP":
               this.§=!K§(-this.§!!=§.§]v§);
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "SCROLL_COUNTRY_DOWN":
               this.§=!K§(this.§!!=§.§]v§);
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "SCROLL_LANGUAGE_DOWN":
               this.§>>§(this.§<P§.§]v§);
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "SCROLL_LANGUAGE_UP":
               this.§>>§(-this.§<P§.§]v§);
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "SCROLLITEM_COUNTRY_CLICK":
               _loc4_ = (param3 as §]"%§).mName.substr("ScrollItem_".length);
               this.§,!v§(_loc4_);
               §@"#§.§,2§.§7!3§(_loc4_.toUpperCase());
               this.§%`§(param3 as §]"%§);
               this.§7[§();
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "SCROLLITEM_LANGUAGE_CLICK":
               this.§@"7§(param3 as §]"%§);
               this.§7[§();
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "BUTTON_PLAY":
               § !4§.§%"7§.§7"6§(§%!<§.§8"%§);
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "TOGGLE_SOUNDS":
               _loc5_ = !§ !4§.§4E§();
               (§ !4§.§%"7§ as AngryBirdsCustom).setSoundsEnabled(_loc5_);
               §29§.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
               §>D§.§9!q§("Menu_Confirm");
         }
      }
      
      private function §%`§(param1:§]"%§) : void
      {
         var _loc2_:§<!7§ = null;
         if(this.§%"8§)
         {
            for each(_loc2_ in (§29§.getItemByName("Container_CountrySelection") as §,6§).§,_§)
            {
               if(_loc2_ is §]"%§)
               {
                  if(_loc2_.mName == this.§%"8§.mName)
                  {
                     (_loc2_ as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc2_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§-!g§.§+O§);
         this.§%"8§ = param1;
         this.§!!=§.§7!5§ = param1.mName;
      }
      
      private function §@"7§(param1:§]"%§) : void
      {
         var _loc3_:§<!7§ = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         this.§>0§(_loc2_);
         if(this.§[!j§)
         {
            for each(_loc3_ in (§29§.getItemByName("Container_LanguageSelection") as §,6§).§,_§)
            {
               if(_loc3_ is §]"%§)
               {
                  if(_loc3_.mName == this.§[!j§.mName)
                  {
                     (_loc3_ as §]"%§).setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc3_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(§-!g§.§+O§);
         this.§[!j§ = param1;
         this.§<P§.§7!5§ = param1.mName;
      }
      
      private function §=!K§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§!!=§.scroll(param1);
            this.§^!_§();
         }
      }
      
      private function §>>§(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§<P§.scroll(param1);
            this.§0!X§();
         }
      }
      
      private function §^!_§() : void
      {
         var _loc1_:* = this.§!!=§.offset != 0;
         var _loc2_:* = this.§!!=§.offset != this.§!!=§.data.length - this.§!!=§.§]v§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §29§.getItemByName("Button_Country_ArrowUp").setVisibility(_loc1_);
         §29§.getItemByName("Button_Country_ArrowDown").setVisibility(_loc2_);
      }
      
      private function §0!X§() : void
      {
         var _loc1_:* = this.§<P§.offset != 0;
         var _loc2_:* = this.§<P§.offset != this.§<P§.data.length - this.§<P§.§]v§;
         _loc2_ = Boolean(true);
         _loc1_ = Boolean(true);
         §29§.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
         §29§.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
      }
      
      override public function updateTextFields() : void
      {
         §@"#§.§,2§.updateTextFields(§29§,"SelectCountry_Popup");
         §@"#§.§,2§.updateTextFields(this.mParentContainer,"CountrySelectionState");
      }
      
      private function §>0§(param1:String) : void
      {
         §@"#§.§,2§.setLanguage(param1);
         §8&§.setLanguage(param1);
         §29§.getItemByName("Button_Play").setVisibility(true);
      }
      
      private function §"5§(param1:uint) : void
      {
         var _loc6_:§3!O§ = null;
         var _loc2_:String = String.fromCharCode(param1).toLocaleLowerCase();
         var _loc3_:int = 0;
         var _loc4_:§3!O§ = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§!!=§.data.length)
         {
            if((_loc6_ = this.§!!=§.data[_loc5_]).name.charAt(0).toLocaleLowerCase() == _loc2_)
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
         this.§=!K§(this.§!!=§.§="4§ + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:RegExp = /[A-Za-z]/;
         if(String.fromCharCode(param1.charCode).match(_loc2_))
         {
            this.§"5§(param1.charCode);
         }
         else if(param1.keyCode == Keyboard.UP)
         {
            this.§=!K§(-this.§!!=§.§]v§);
         }
         else if(param1.keyCode == Keyboard.DOWN)
         {
            this.§=!K§(this.§!!=§.§]v§);
         }
      }
      
      override public function dispose() : void
      {
         §-p§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         super.dispose();
      }
      
      private function §7[§() : void
      {
         var _loc1_:String = §@"#§.§,2§.§0!x§();
         var _loc2_:String = §@"#§.§,2§.§2"2§();
         var _loc3_:String = _loc2_ + "_" + _loc1_;
         §%c§.§6"§("onFlashLanguageChange",_loc3_);
      }
   }
}
