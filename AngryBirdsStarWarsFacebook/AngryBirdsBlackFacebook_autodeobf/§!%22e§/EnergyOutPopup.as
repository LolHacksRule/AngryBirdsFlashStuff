package §!"e§
{
   import §+!!§.§9"i§;
   import §+D§.§^"m§;
   import §,"N§.§@#B§;
   import §1#R§.§+#[§;
   import §2"§.§"u§;
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §?m§.§[#;§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class EnergyOutPopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "EnergyOutPopup";
      
      private static const §7%§:uint = 2;
      
      private static const §5=§:uint = 1;
      
      private static const §"#C§:uint = 0;
      
      private static const §1!-§:int = 10;
      
      private static const §+#J§:int = 159;
      
      private static const §%";§:int = 15;
       
      
      private var §7"P§:Number;
      
      private var §-#"§:String;
      
      private var §;![§:String;
      
      private var §3_§:TextField;
      
      private var §2!^§:TextField;
      
      private var §4#J§:§@#B§;
      
      private var §+!b§:§[#;§;
      
      private var §7"I§:int;
      
      private var §%"6§:Boolean;
      
      private var §["X§:Boolean;
      
      public function EnergyOutPopup(param1:int, param2:int)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_EnergyOut[0],§%!h§);
      }
      
      override protected function init() : void
      {
         this.§%"6§ = false;
         this.§["X§ = false;
         this.§7"I§ = -1;
         this.§4#J§ = §@#B§(§4#;§.singleton.dataModel);
         this.§4#J§.§6!G§.addEventListener(Event.CHANGE,this.§1!=§);
         var _loc1_:MovieClip = §^c§.getItemByName("Container_Popup").mClip;
         this.§2!^§ = TextField(_loc1_.titleEnergy);
         this.§3_§ = TextField(_loc1_.crystalTime);
         this.§-#"§ = §^"N§.getLocalizedString("energy_out_time_to_next");
         this.§;![§ = §^"N§.getLocalizedString("energy_out_title_zero_energy");
         this.§2!^§.text = this.§;![§;
         this.§7"P§ = 0;
         §^c§.mClip.addEventListener(Event.ENTER_FRAME,this.§"#5§);
         this.§"#5§();
         this.§-!9§();
         this.§!!F§();
      }
      
      protected function §-!9§() : void
      {
         if(this.§4#J§.§^"J§.§#4§())
         {
            this.§["X§ = true;
            this.§4#J§.§^"J§.§^"4§();
            this.§4#J§.§6!G§.update();
         }
         else
         {
            this.§7"I§ = this.§4#J§.§6!G§.gifts.length;
            this.§%"6§ = true;
            this.§["X§ = false;
            this.§!!F§();
         }
      }
      
      private function §1!=§(param1:Event) : void
      {
         this.§%"6§ = true;
         this.§["X§ = false;
         this.§7"I§ = this.§4#J§.§6!G§.gifts.length;
         this.§!!F§();
      }
      
      private function §>`§() : Boolean
      {
         if(this.§%"6§)
         {
            return this.§7"I§ > 0 ? true : false;
         }
         return false;
      }
      
      protected function §!!F§() : void
      {
         var _loc2_:Boolean = false;
         var _loc1_:§^"m§ = §^"m§(§^c§.getItemByName("Button_CheckInbox"));
         if(this.§%"6§)
         {
            _loc2_ = this.§>`§();
            _loc1_.setEnabled(_loc2_);
            _loc1_.setComponentState(!!_loc2_ ? §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §1"z§.§4"o§);
         }
         else
         {
            _loc1_.setEnabled(false);
            _loc1_.setComponentState(!!this.§["X§ ? §1"z§.COMPONENT_STATE_DISABLED : §1"z§.§4"o§);
         }
      }
      
      override public function dispose() : void
      {
         this.§4#J§.§6!G§.removeEventListener(Event.CHANGE,this.§1!=§);
         §^c§.mClip.removeEventListener(Event.ENTER_FRAME,this.§"#5§);
         super.dispose();
      }
      
      private function §"#5§(param1:Event = null) : void
      {
         this.§3_§.text = this.§-#"§ + " " + this.§<#3§(this.§4#J§.§^"J§.§]"w§,§5=§);
         var _loc2_:int = getTimer();
         var _loc3_:Number = this.§7"P§ - _loc2_;
         if(_loc3_ <= 0)
         {
            this.§7"P§ = §1!-§ * 1000 + _loc3_ + _loc2_;
         }
         if(this.§4#J§.§^"J§.§]"w§ < 1)
         {
            close(true);
         }
      }
      
      private function §<#3§(param1:int, param2:uint = 2) : String
      {
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = (param1 - _loc3_ * 3600) / 60;
         var _loc5_:uint = param1 - _loc3_ * 3600 - _loc4_ * 60;
         var _loc6_:String = param2 == §7%§ ? _loc3_ + ":" : "";
         var _loc7_:String = param2 >= §5=§ ? (param2 == §7%§ && _loc4_ < 10 ? "0" : "") + _loc4_ + ":" : "";
         var _loc8_:String = (_loc5_ < 10 && param2 >= §5=§ ? "0" : "") + _loc5_;
         return _loc6_ + _loc7_ + _loc8_;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:§[!j§ = null;
         switch(param2.toUpperCase())
         {
            case "ASK":
               _loc4_ = new §9"i§(§`"W§.§+v§,§+5§.§>!g§,§9"i§.§%!§);
               §4#;§.singleton.popupManager.openPopup(_loc4_,false,true,false,true);
               break;
            case "SHOP":
               §9#B§(§4#;§.singleton.popupManager).§@"3§(1);
               dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
               return;
            case "INBOX":
               _loc4_ = new §"u§(this.§+!b§,§`"W§.§+v§,§+5§.§>!g§);
               §4#;§.singleton.popupManager.openPopup(_loc4_,true,true,true);
               return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
