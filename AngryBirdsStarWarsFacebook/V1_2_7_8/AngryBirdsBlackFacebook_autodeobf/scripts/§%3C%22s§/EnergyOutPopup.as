package §<"s§
{
   import §""d§.§2"8§;
   import §#<§.§8!j§;
   import §,#+§.§@"F§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §4m§.§5!R§;
   import §4m§.AbstractPopup;
   import §4m§.§^T§;
   import §>!2§.§^;§;
   import §>"!§.§>D§;
   import §^!`§.§%n§;
   import §`"8§.§-!w§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class EnergyOutPopup extends AbstractPopup
   {
      
      public static const §^"3§:String = "EnergyOutPopup";
      
      private static const §1A§:uint = 2;
      
      private static const §!"E§:uint = 1;
      
      private static const §`!k§:uint = 0;
      
      private static const §>!k§:int = 10;
      
      private static const §9!C§:int = 159;
      
      private static const §<!X§:int = 15;
       
      
      private var §7E§:Number;
      
      private var §+m§:String;
      
      private var §-!!§:String;
      
      private var §1+§:TextField;
      
      private var §12§:TextField;
      
      private var §]S§:§-!w§;
      
      private var § !p§:§@"F§;
      
      private var §["6§:int;
      
      private var §`!x§:Boolean;
      
      private var §,8§:Boolean;
      
      public function EnergyOutPopup(param1:int, param2:int)
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_EnergyOut[0],§^"3§);
      }
      
      override protected function init() : void
      {
         this.§`!x§ = false;
         this.§,8§ = false;
         this.§["6§ = -1;
         this.§]S§ = §-!w§(§;"@§.singleton.dataModel);
         this.§]S§.§#"9§.addEventListener(Event.CHANGE,this.§%O§);
         var _loc1_:MovieClip = §,r§.getItemByName("Container_Popup").mClip;
         this.§12§ = TextField(_loc1_.titleEnergy);
         this.§1+§ = TextField(_loc1_.crystalTime);
         this.§+m§ = §8-§.getLocalizedString("energy_out_time_to_next");
         this.§-!!§ = §8-§.getLocalizedString("energy_out_title_zero_energy");
         this.§12§.text = this.§-!!§;
         this.§7E§ = 0;
         §,r§.mClip.addEventListener(Event.ENTER_FRAME,this.§-!>§);
         this.§-!>§();
         this.§-!n§();
         this.§-U§();
      }
      
      protected function §-!n§() : void
      {
         if(this.§]S§.§`!§.§#"4§())
         {
            this.§,8§ = true;
            this.§]S§.§`!§.§^"U§();
            this.§]S§.§#"9§.update();
         }
         else
         {
            this.§["6§ = this.§]S§.§#"9§.gifts.length;
            this.§`!x§ = true;
            this.§,8§ = false;
            this.§-U§();
         }
      }
      
      private function §%O§(param1:Event) : void
      {
         this.§`!x§ = true;
         this.§,8§ = false;
         this.§["6§ = this.§]S§.§#"9§.gifts.length;
         this.§-U§();
      }
      
      private function §6r§() : Boolean
      {
         if(this.§`!x§)
         {
            return this.§["6§ > 0 ? true : false;
         }
         return false;
      }
      
      protected function §-U§() : void
      {
         var _loc2_:Boolean = false;
         var _loc1_:§2"8§ = §2"8§(§,r§.getItemByName("Button_CheckInbox"));
         if(this.§`!x§)
         {
            _loc2_ = this.§6r§();
            _loc1_.setEnabled(_loc2_);
            _loc1_.setComponentState(!!_loc2_ ? §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT : §7!Y§.§6!7§);
         }
         else
         {
            _loc1_.setEnabled(false);
            _loc1_.setComponentState(!!this.§,8§ ? §7!Y§.COMPONENT_STATE_DISABLED : §7!Y§.§6!7§);
         }
      }
      
      override public function dispose() : void
      {
         this.§]S§.§#"9§.removeEventListener(Event.CHANGE,this.§%O§);
         §,r§.mClip.removeEventListener(Event.ENTER_FRAME,this.§-!>§);
         super.dispose();
      }
      
      private function §-!>§(param1:Event = null) : void
      {
         this.§1+§.text = this.§+m§ + " " + this.§9"0§(this.§]S§.§`!§.§5"#§,§!"E§);
         var _loc2_:int = getTimer();
         var _loc3_:Number = this.§7E§ - _loc2_;
         if(_loc3_ <= 0)
         {
            this.§7E§ = §>!k§ * 1000 + _loc3_ + _loc2_;
         }
         if(this.§]S§.§`!§.§5"#§ < 1)
         {
            close(true);
         }
      }
      
      private function §9"0§(param1:int, param2:uint = 2) : String
      {
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = (param1 - _loc3_ * 3600) / 60;
         var _loc5_:uint = param1 - _loc3_ * 3600 - _loc4_ * 60;
         var _loc6_:String = param2 == §1A§ ? _loc3_ + ":" : "";
         var _loc7_:String = param2 >= §!"E§ ? (param2 == §1A§ && _loc4_ < 10 ? "0" : "") + _loc4_ + ":" : "";
         var _loc8_:String = (_loc5_ < 10 && param2 >= §!"E§ ? "0" : "") + _loc5_;
         return _loc6_ + _loc7_ + _loc8_;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc4_:§5!R§ = null;
         switch(param2.toUpperCase())
         {
            case "ASK":
               _loc4_ = new §>D§(§0u§.§1"J§,§^T§.§0O§,§>D§.§'t§);
               §;"@§.singleton.popupManager.openPopup(_loc4_,false,true,false,true);
               break;
            case "SHOP":
               §@![§(§;"@§.singleton.popupManager).§2"N§(1);
               dispatchEvent(new §8!j§(§8!j§.CLOSE,this));
               return;
            case "INBOX":
               _loc4_ = new §^;§(this.§ !p§,§0u§.§1"J§,§^T§.§0O§);
               §;"@§.singleton.popupManager.openPopup(_loc4_,true,true,true);
               return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
   }
}
