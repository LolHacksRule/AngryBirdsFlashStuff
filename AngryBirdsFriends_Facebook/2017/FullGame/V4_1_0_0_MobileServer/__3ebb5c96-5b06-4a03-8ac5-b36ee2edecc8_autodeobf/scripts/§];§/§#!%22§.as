package §];§
{
   import § o§.§%"!§;
   import §!@§.§;"k§;
   import §%#A§.§,#w§;
   import §&"J§.§6$0§;
   import §6V§.§`"5§;
   import §9"0§.CoinShopPopup;
   import §<#m§.§^#o§;
   import §[§.§]"w§;
   import flash.events.Event;
   
   public class §#!"§
   {
       
      
      protected var §?#t§:§]"w§;
      
      protected var §^# §:§,#w§;
      
      protected var §1#p§:String;
      
      protected var §7!v§:String;
      
      protected var §3$#§:Object;
      
      protected var §,#[§:§-!t§;
      
      protected var §#!j§:§;"k§;
      
      protected var § !<§:§6$0§;
      
      protected var § $+§:Boolean;
      
      protected var §3&§:Boolean = false;
      
      protected var §&"#§:Boolean = false;
      
      public function §#!"§(param1:§]"w§, param2:§,#w§, param3:§-!t§, param4:§;"k§, param5:§6$0§)
      {
         super();
         this.§?#t§ = param1;
         this.§^# § = param2;
         this.§,#[§ = param3;
         this.§#!j§ = param4;
         this.§ !<§ = param5;
      }
      
      public function activate(param1:String) : void
      {
         this.§7!v§ = param1;
         this.§3$#§ = this.§,#[§.§-!]§(this.§7!v§);
         this.§ $+§ = this.§,#[§.isLevelOpen(this.§7!v§);
         this.setLocked(!this.§ $+§);
         if(this.§,#[§.§%#P§ == this.§3$#§)
         {
            this.setPurchasable(false);
         }
         else if(this.§#!j§.§ #-§)
         {
            this.§?"&§();
         }
         else
         {
            this.setPurchasable(false);
            this.§#!j§.addEventListener(Event.COMPLETE,this.§&q§);
         }
      }
      
      public function deactivate() : void
      {
         this.§#!j§.removeEventListener(Event.COMPLETE,this.§&q§);
      }
      
      public function get §`K§() : Boolean
      {
         return this.§ $+§;
      }
      
      public function get §<"+§() : Boolean
      {
         return !this.§`K§ && this.§&"#§ && !this.§3&§;
      }
      
      public function §0"r§() : void
      {
         var _loc1_:CoinShopPopup = null;
         if(this.§<"+§)
         {
            if(this.§ !<§.§5##§ < this.§#!j§.§ #-§[0].getPricePoint(0).price)
            {
               _loc1_ = new CoinShopPopup(§%"!§.NORMAL,§^#o§.TOP,CoinShopPopup.§%#=§);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
            }
            else
            {
               this.setPurchasable(false);
               this.§,#[§.§9"<§(this.§3$#§);
               §`"5§.§+#X§(this.§7!v§,this.sourceForTracking);
            }
         }
      }
      
      private function §&q§(param1:Event) : void
      {
         this.§?"&§();
      }
      
      private function §?"&§() : void
      {
         if(this.§#!j§.§ #-§ && this.§#!j§.§ #-§.length > 0)
         {
            this.§&"#§ = true;
            this.setPurchasable(true);
            this.showPrice(this.§#!j§.§ #-§[0].getPricePoint(0).price);
         }
         else
         {
            this.setPurchasable(false);
         }
      }
      
      public function update() : void
      {
         if(!this.§7!v§ || this.§ $+§)
         {
            return;
         }
         if(this.§3&§)
         {
            if(!this.§,#[§.§%#P§)
            {
               this.§ $+§ = true;
               this.setLocked(!this.§ $+§);
            }
            return;
         }
         if(this.§,#[§.isLevelOpen(this.§7!v§))
         {
            this.§ $+§ = true;
            this.setLocked(!this.§ $+§);
            return;
         }
         this.§<"o§();
      }
      
      private function §<"o§() : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:int = this.§,#[§.secondsToUnlock(this.§7!v§);
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
