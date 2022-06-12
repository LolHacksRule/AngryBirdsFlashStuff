package §5"$§
{
   import §%$!§.§=]§;
   import §4#%§.§@#@§;
   import §6"r§.§=O§;
   import §;!H§.§8#_§;
   import §>!#§.§,"W§;
   import §>q§.CoinShopPopup;
   import §?"R§.§[W§;
   import §^!,§.§<d§;
   import flash.events.Event;
   
   public class § #p§
   {
       
      
      protected var §1]§:§@#@§;
      
      protected var §@<§:§=O§;
      
      protected var §0#L§:String;
      
      protected var §3"D§:String;
      
      protected var §#i§:Object;
      
      protected var §3"g§:§]!m§;
      
      protected var §3N§:§8#_§;
      
      protected var §^i§:§=]§;
      
      protected var §]"t§:Boolean;
      
      protected var §-!k§:Boolean = false;
      
      protected var §98§:Boolean = false;
      
      public function § #p§(param1:§@#@§, param2:§=O§, param3:§]!m§, param4:§8#_§, param5:§=]§)
      {
         super();
         this.§1]§ = param1;
         this.§@<§ = param2;
         this.§3"g§ = param3;
         this.§3N§ = param4;
         this.§^i§ = param5;
      }
      
      public function activate(param1:String) : void
      {
         this.§3"D§ = param1;
         this.§#i§ = this.§3"g§.§#$'§(this.§3"D§);
         this.§]"t§ = this.§3"g§.isLevelOpen(this.§3"D§);
         this.setLocked(!this.§]"t§);
         if(this.§3"g§.§]s§ == this.§#i§)
         {
            this.setPurchasable(false);
         }
         else if(this.§3N§.§"#K§)
         {
            this.§7!E§();
         }
         else
         {
            this.setPurchasable(false);
            this.§3N§.addEventListener(Event.COMPLETE,this.§`i§);
         }
      }
      
      public function deactivate() : void
      {
         this.§3N§.removeEventListener(Event.COMPLETE,this.§`i§);
      }
      
      public function get §9"4§() : Boolean
      {
         return this.§]"t§;
      }
      
      public function get § p§() : Boolean
      {
         return !this.§9"4§ && this.§98§ && !this.§-!k§;
      }
      
      public function §2S§() : void
      {
         var _loc1_:CoinShopPopup = null;
         if(this.§ p§)
         {
            if(this.§^i§.§[#u§ < this.§3N§.§"#K§[0].getPricePoint(0).price)
            {
               _loc1_ = new CoinShopPopup(§[W§.NORMAL,§<d§.TOP,CoinShopPopup.§#!Y§);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
            }
            else
            {
               this.setPurchasable(false);
               this.§3"g§.§>!y§(this.§#i§);
               §,"W§.§@Z§(this.§3"D§,this.sourceForTracking);
            }
         }
      }
      
      private function §`i§(param1:Event) : void
      {
         this.§7!E§();
      }
      
      private function §7!E§() : void
      {
         if(this.§3N§.§"#K§ && this.§3N§.§"#K§.length > 0)
         {
            this.§98§ = true;
            this.setPurchasable(true);
            this.showPrice(this.§3N§.§"#K§[0].getPricePoint(0).price);
         }
         else
         {
            this.setPurchasable(false);
         }
      }
      
      public function update() : void
      {
         if(!this.§3"D§ || this.§]"t§)
         {
            return;
         }
         if(this.§-!k§)
         {
            if(!this.§3"g§.§]s§)
            {
               this.§]"t§ = true;
               this.setLocked(!this.§]"t§);
            }
            return;
         }
         if(this.§3"g§.isLevelOpen(this.§3"D§))
         {
            this.§]"t§ = true;
            this.setLocked(!this.§]"t§);
            return;
         }
         this.§""-§();
      }
      
      private function §""-§() : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§3"g§.secondsToUnlock(this.§3"D§);
         if(_loc1_ < 60 * 60)
         {
            _loc3_ = _loc1_;
            _loc4_ = Math.floor(_loc1_ / 60);
            _loc3_ -= _loc4_ * 60;
            _loc2_ = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc3_ < 10 ? "0" : "") + _loc3_;
         }
         else if(_loc1_ < 60 * 60 * 24)
         {
            _loc2_ = Math.ceil(_loc1_ / (60 * 60)).toString() + " hours";
         }
         else
         {
            _loc2_ = Math.ceil(_loc1_ / (60 * 60 * 24)).toString() + " days";
         }
         this.showTimeUntilUnlocked(_loc2_);
      }
      
      protected function showTimeUntilUnlocked(param1:String) : void
      {
      }
      
      protected function showPrice(param1:int) : void
      {
      }
      
      protected function setPurchasable(param1:Boolean) : void
      {
      }
      
      protected function setLocked(param1:Boolean) : void
      {
      }
      
      protected function get buttonName() : String
      {
         return "";
      }
      
      protected function get sourceForTracking() : String
      {
         return "";
      }
   }
}
