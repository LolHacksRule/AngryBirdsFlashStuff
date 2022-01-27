package §+"Y§
{
   import §"!H§.§6!M§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §+"x§.AbstractPopup;
   import §7!n§.§>"H§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §9"U§.§7"1§;
   import §;!3§.§^"z§;
   import §=Z§.§;g§;
   import §[!H§.§^x§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   import §null §.§1"o§;
   
   public class EnergyOutPopup extends AbstractPopup
   {
      
      public static const §-"§:String = "EnergyOutPopup";
      
      private static const §<"7§:uint = 2;
      
      private static const §4"l§:uint = 1;
      
      private static const §"j§:uint = 0;
      
      private static const §2!J§:int = 10;
      
      private static const §9E§:int = 159;
      
      private static const §@x§:int = 15;
       
      
      private var §2"R§:Number;
      
      private var §!@§:String;
      
      private var §5!W§:String;
      
      private var §`!"§:TextField;
      
      private var §?p§:TextField;
      
      private var §?!$§:§7"1§;
      
      private var §'""§:§1"o§;
      
      private var §?"7§:int;
      
      private var §%v§:Boolean;
      
      private var §="&§:Boolean;
      
      public function EnergyOutPopup(param1:int, param2:int)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_EnergyOut[0],§-"§);
      }
      
      override protected function init() : void
      {
         this.§%v§ = false;
         this.§="&§ = false;
         this.§?"7§ = -1;
         this.§?!$§ = §7"1§(§4"#§.singleton.dataModel);
         this.§?!$§.§ "_§.addEventListener(Event.CHANGE,this.§ "q§);
         var _loc1_:MovieClip = §[#,§.getItemByName("Container_Popup").mClip;
         this.§?p§ = TextField(_loc1_.titleEnergy);
         this.§`!"§ = TextField(_loc1_.crystalTime);
         this.§!@§ = §-1§.getLocalizedString("energy_out_time_to_next");
         this.§5!W§ = §-1§.getLocalizedString("energy_out_title_zero_energy");
         this.§?p§.text = this.§5!W§;
         this.§2"R§ = 0;
         §[#,§.mClip.addEventListener(Event.ENTER_FRAME,this.§;!t§);
         this.§;!t§();
         this.§4!A§();
         this.§?#2§();
      }
      
      protected function §4!A§() : void
      {
         if(this.§?!$§.§9"$§.§?1§())
         {
            this.§="&§ = true;
            this.§?!$§.§9"$§.§if§();
            this.§?!$§.§ "_§.update();
         }
         else
         {
            this.§?"7§ = this.§?!$§.§ "_§.gifts.length;
            this.§%v§ = true;
            this.§="&§ = false;
            this.§?#2§();
         }
      }
      
      private function § "q§(param1:Event) : void
      {
         this.§%v§ = true;
         this.§="&§ = false;
         this.§?"7§ = this.§?!$§.§ "_§.gifts.length;
         this.§?#2§();
      }
      
      private function §<w§() : Boolean
      {
         if(this.§%v§)
         {
            return this.§?"7§ > 0 ? true : false;
         }
         return false;
      }
      
      protected function §?#2§() : void
      {
         var _loc2_:Boolean = false;
         var _loc1_:§;g§ = §;g§(§[#,§.getItemByName("Button_CheckInbox"));
         if(this.§%v§)
         {
            _loc2_ = this.§<w§();
            _loc1_.setEnabled(_loc2_);
            _loc1_.setComponentState(!!_loc2_ ? §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT : §%"z§.§30§);
         }
         else
         {
            _loc1_.setEnabled(false);
            _loc1_.setComponentState(!!this.§="&§ ? §%"z§.COMPONENT_STATE_DISABLED : §%"z§.§30§);
         }
      }
      
      override public function dispose() : void
      {
         this.§?!$§.§ "_§.removeEventListener(Event.CHANGE,this.§ "q§);
         §[#,§.mClip.removeEventListener(Event.ENTER_FRAME,this.§;!t§);
         super.dispose();
      }
      
      private function §;!t§(param1:Event = null) : void
      {
         this.§`!"§.text = this.§!@§ + " " + this.§`"#§(this.§?!$§.§9"$§.§-=§,§4"l§);
         var _loc2_:int = getTimer();
         var _loc3_:Number = this.§2"R§ - _loc2_;
         if(_loc3_ <= 0)
         {
            this.§2"R§ = §2!J§ * 1000 + _loc3_ + _loc2_;
         }
         if(this.§?!$§.§9"$§.§-=§ < 1)
         {
            close(true);
         }
      }
      
      private function §`"#§(param1:int, param2:uint = 2) : String
      {
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = (param1 - _loc3_ * 3600) / 60;
         var _loc5_:uint = param1 - _loc3_ * 3600 - _loc4_ * 60;
         var _loc6_:String = param2 == §<"7§ ? _loc3_ + ":" : "";
         var _loc7_:String = param2 >= §4"l§ ? (param2 == §<"7§ && _loc4_ < 10 ? "0" : "") + _loc4_ + ":" : "";
         var _loc8_:String = (_loc5_ < 10 && param2 >= §4"l§ ? "0" : "") + _loc5_;
         return _loc6_ + _loc7_ + _loc8_;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc4_:§3!§ = null;
         switch(param2.toUpperCase())
         {
            case "ASK":
               _loc4_ = new §^"z§(§^!S§.§'"c§,§2!s§.§@"$§,§^"z§.§8"2§);
               §4"#§.singleton.popupManager.openPopup(_loc4_,false,true,false,true);
               break;
            case "SHOP":
               §4#%§(§4"#§.singleton.popupManager).§6"Z§(1);
               dispatchEvent(new §>"H§(§>"H§.CLOSE,this));
               return;
            case "INBOX":
               _loc4_ = new §6!M§(this.§'""§,§^!S§.§'"c§,§2!s§.§@"$§);
               §4"#§.singleton.popupManager.openPopup(_loc4_,true,true,true);
               return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
